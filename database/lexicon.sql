-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2025 at 12:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lexicon`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(7, '2014 – Humble Beginnings', 'image1742714710.jpg', 'Lexicon was founded as a 600-square-foot institute in Roy Para, Cross Road, Khulna, offering IELTS preparation, Spoken English, Basic Writing, and Phonetics courses, along with mock\r\ntests and IELTS registration services', '2025-03-23 11:25:10', '2025-03-23 11:25:10'),
(8, '2015 – The First IELTS Registration Center in Khulna', 'image1742714768.jpg', 'With expert training, Lexicon produced remarkable IELTS scores of 7.0, 7.5, and 8.0. This\r\nsuccess led to Lexicon becoming the first official IELTS registration center in Khulna in\r\ncollaboration with British Council Bangladesh.', '2025-03-23 11:26:08', '2025-03-23 11:26:08'),
(9, '2016 – Gaining Recognition & Expanding Services', 'image1742714859.jpg', 'Lexicon’s reputation grew rapidly, making it a trusted name in IELTS preparation and Spoken\r\nEnglish courses. A new collaboration with IDP IELTS expanded student opportunities.', '2025-03-23 11:27:39', '2025-03-23 11:27:39'),
(10, '2017 – A Bigger Space, A Bigger Vision', 'image1742714953.jpg', 'To accommodate growth, Lexicon relocated to Nirala (House 97, Road 1), expanding to 1,700 sq. ft. The move enabled the introduction of extensive IELTS and English language courses\r\nwhile continuing to produce high IELTS scores.', '2025-03-23 11:29:13', '2025-03-23 11:29:13'),
(11, '2018 – Market Leadership & Innovative Learning', 'image1742715061.jpg', 'Lexicon became the leading IELTS institute in Khulna, training the highest number of candidates each month. New initiatives included the GALA Speaking Test at CSS AVA Center, project-based learning, and presentation-based teaching.', '2025-03-23 11:31:01', '2025-03-23 11:31:01'),
(12, '2019 – Becoming an Official British Council IELTS Test Venue', 'image1742715098.jpg', 'Lexicon became an official closed IELTS test venue in partnership with British Council Bangladesh, conducting tests at CSS AVA Center. The Cambridge Young Learners English (YLE) Program was also introduced for children.', '2025-03-23 11:31:38', '2025-03-23 11:31:38'),
(13, '2020 – Strengthening Expertise Amid the Pandemic', 'image1742715145.jpg', 'Despite COVID-19, Lexicon’s IELTS trainer, Md Shozibul Islam, earned the Cambridge CELTA certification from the University of Cambridge. Online classes via Zoom ensured uninterrupted learning, and Lexicon became the only O/A Level exam venue in the Khulna division.', '2025-03-23 11:32:25', '2025-03-23 11:32:25'),
(14, '2021 – Unparalleled IELTS Success', 'image1742715177.jpg', 'For the first time, Lexicon students achieved an IELTS 9.0 in Speaking and an overall band score of 8.5, solidifying Lexicon’s leadership in IELTS success.', '2025-03-23 11:32:57', '2025-03-23 11:32:57'),
(15, '2022 – British Council’s Top Contributor Award', 'image1742800473.jpg', 'Lexicon received British Council Bangladesh’s Top Contributor Award for the highest number of\r\nIELTS registrations from Khulna', '2025-03-24 11:14:33', '2025-03-24 11:14:33'),
(16, '2023 – Sustained Excellence & Another Prestigious Award', 'image1742800504.jpg', 'Lexicon continued to dominate IELTS training and test facilitation, winning another British\r\nCouncil Top Contributor Award and reinforcing its position as the market leader in Khulna', '2025-03-24 11:15:04', '2025-03-24 11:15:04'),
(17, '2024 – A New Era: The Most Premium IELTS Test Center in Bangladesh', 'image1742800575.jpg', '<ul><li>Relocation to NLI Tower, Khulna, expanding to 3,700 sq. ft.&nbsp;</li><li>Recognized as the most premium IELTS test center and top IELTS registration contributor for British Council Bangladesh.&nbsp;</li><li>Introduction of IELTS on Computer for enhanced testing services.&nbsp;</li><li>CEO returned from Canada with an IMTE (International Master of Teaching English) from Saint Mary’s University, Halifax, introducing modern pedagogy, innovative technology, and a student-centered approach.&nbsp;</li><li>Enhanced teacher training and research, utilizing Oxford’s Headway &amp; Cambridge’s Empower for world-class education.</li></ul>', '2025-03-24 11:16:15', '2025-03-24 12:20:31'),
(18, '2025 – Unstoppable Growth & Expansion', 'image1742800642.jpg', '<ul><li><strong>Venue Expansion</strong> – Lexicon expanded to 7,400 sq. ft. across the 6th &amp; 7th floors of NLI Tower.&nbsp;</li><li><strong>Launch of LexiFly</strong> – A Higher Education &amp; Immigration consultancy service guiding students beyond borders.&nbsp;</li><li><strong>New Course Offerings</strong> – Introduction of PTE (Pearson Test of English) &amp; SAT (Scholastic Aptitude Test)preparation courses.</li></ul>', '2025-03-24 11:17:22', '2025-03-24 13:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcategory_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blogcategory_id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(14, '10', 'In aut eos dolor mol', 'image1745390672.jpg', NULL, '2025-04-23 10:44:32', '2025-04-23 10:44:32'),
(15, '10', 'Aliquip labore culpa', 'image1745390697.jpg', NULL, '2025-04-23 10:44:57', '2025-04-23 10:44:57'),
(16, '10', 'Eligendi maiores est', 'image1745390707.jpg', NULL, '2025-04-23 10:45:07', '2025-04-23 10:45:07'),
(17, '12', 'Quo et qui est veni', 'image1745390718.jpg', NULL, '2025-04-23 10:45:18', '2025-04-23 10:45:18'),
(18, '12', 'Excepteur consequunt', 'image1745390725.jpg', NULL, '2025-04-23 10:45:25', '2025-04-23 10:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(10, 'IELTS', '2025-04-22 14:09:57', '2025-04-22 14:09:57'),
(11, 'PTE', '2025-04-22 14:10:03', '2025-05-12 11:07:36'),
(12, 'ESL', '2025-04-22 14:10:09', '2025-04-22 14:10:09'),
(13, 'YLE', '2025-04-22 14:10:15', '2025-04-22 14:10:15'),
(14, 'Vocabulary', '2025-05-10 09:22:54', '2025-05-10 09:22:54'),
(15, 'Phonetics', '2025-05-10 09:23:04', '2025-05-10 09:23:04'),
(16, 'Higher Education', '2025-05-10 09:23:12', '2025-05-10 09:23:12'),
(17, 'Immigration', '2025-05-10 09:23:21', '2025-05-10 09:23:21'),
(18, 'Miscellaneous', '2025-05-12 11:08:12', '2025-05-12 11:08:12'),
(19, 'server', '2025-05-27 15:28:20', '2025-05-27 15:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'IELTS COURSES', '2025-03-04 09:17:43', '2025-03-04 09:17:43'),
(2, 'ESL COURSES', '2025-03-04 09:17:53', '2025-03-04 09:17:53'),
(3, 'YLE COURSES', '2025-03-04 09:18:00', '2025-03-04 09:18:33'),
(5, 'ONLINE COURSES', '2025-03-04 09:18:17', '2025-03-04 09:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(8, 'Anthonydonse', '85433522962', 'majahamill@yahoo.com', 'URGENT MESSAGE! Urgent: $199,175.76 Withdrawal Expires in 5 Minutes https://script.google.com/macros/s/AKfycbxRUZSzSRTvJGLSdGeMqdKOOnTZyrzPjQmaGcXc-jdmldEobmebx5pwIVbcUWlT5egu3g/exec/0f9u0s5i/4m9q/2/3u/9w1t6k1i/4n7r/g/l8/1w6m0h4o/4z5g/q/ge', '2025-06-27 12:39:05', '2025-06-27 12:39:05'),
(9, 'Anthonydonse', '81363575658', 'majahamill@yahoo.com', 'URGENT MESSAGE! Urgent: $199,175.76 Withdrawal Expires in 5 Minutes https://script.google.com/macros/s/AKfycbxRUZSzSRTvJGLSdGeMqdKOOnTZyrzPjQmaGcXc-jdmldEobmebx5pwIVbcUWlT5egu3g/exec/0f9u0s5i/4m9q/2/3u/9w1t6k1i/4n7r/g/l8/1w6m0h4o/4z5g/q/ge', '2025-06-27 12:39:06', '2025-06-27 12:39:06'),
(10, 'Anthonydonse', '86798323788', 'majahamill@yahoo.com', 'URGENT MESSAGE! Urgent: $199,175.76 Withdrawal Expires in 5 Minutes https://script.google.com/macros/s/AKfycbxRUZSzSRTvJGLSdGeMqdKOOnTZyrzPjQmaGcXc-jdmldEobmebx5pwIVbcUWlT5egu3g/exec/0f9u0s5i/4m9q/2/3u/9w1t6k1i/4n7r/g/l8/1w6m0h4o/4z5g/q/ge', '2025-06-27 12:39:07', '2025-06-27 12:39:07'),
(11, 'Anthonydonse', '82366865613', 'majahamill@yahoo.com', 'URGENT MESSAGE! Urgent: $199,175.76 Withdrawal Expires in 5 Minutes https://script.google.com/macros/s/AKfycbxRUZSzSRTvJGLSdGeMqdKOOnTZyrzPjQmaGcXc-jdmldEobmebx5pwIVbcUWlT5egu3g/exec/0f9u0s5i/4m9q/2/3u/9w1t6k1i/4n7r/g/l8/1w6m0h4o/4z5g/q/ge', '2025-06-27 12:39:08', '2025-06-27 12:39:08'),
(12, 'Anthonydonse', '84122692751', 'majahamill@yahoo.com', 'URGENT MESSAGE! Urgent: $199,175.76 Withdrawal Expires in 5 Minutes https://script.google.com/macros/s/AKfycbxRUZSzSRTvJGLSdGeMqdKOOnTZyrzPjQmaGcXc-jdmldEobmebx5pwIVbcUWlT5egu3g/exec/0f9u0s5i/4m9q/2/3u/9w1t6k1i/4n7r/g/l8/1w6m0h4o/4z5g/q/ge', '2025-06-27 12:39:09', '2025-06-27 12:39:09'),
(13, 'Georgedaula', '81711469875', 'yawiviseya67@gmail.com', 'Dia duit, theastaigh uaim do phraghas a fháil.', '2025-06-28 16:16:09', '2025-06-28 16:16:09'),
(14, 'Leedaula', '88899197135', 'dinanikolskaya99@gmail.com', 'Dia duit, theastaigh uaim do phraghas a fháil.', '2025-06-28 18:10:50', '2025-06-28 18:10:50'),
(15, 'Anthonydonse', '85169764579', 'mellow0011@icloud.com', 'IMPORTANT! Jackpot! $199,975.28 for You! https://script.google.com/macros/s/AKfycbyjIilD5dY8kZ41ZuMmyxQEPzR6CJZgdZNvrMeX80dwmlxxLl3_eJExWVmviNMFZWfw/exec/3c8y8s1o/5m5m/o/54/0z1n9j5u/7r5d/2/v2/1x0b8j4t/3q0z/6/lr', '2025-06-29 14:42:14', '2025-06-29 14:42:14'),
(16, 'Anthonydonse', '82834731691', 'mellow0011@icloud.com', 'IMPORTANT! Jackpot! $199,975.28 for You! https://script.google.com/macros/s/AKfycbyjIilD5dY8kZ41ZuMmyxQEPzR6CJZgdZNvrMeX80dwmlxxLl3_eJExWVmviNMFZWfw/exec/3c8y8s1o/5m5m/o/54/0z1n9j5u/7r5d/2/v2/1x0b8j4t/3q0z/6/lr', '2025-06-29 14:42:17', '2025-06-29 14:42:17'),
(17, 'Anthonydonse', '86738233275', 'mellow0011@icloud.com', 'IMPORTANT! Jackpot! $199,975.28 for You! https://script.google.com/macros/s/AKfycbyjIilD5dY8kZ41ZuMmyxQEPzR6CJZgdZNvrMeX80dwmlxxLl3_eJExWVmviNMFZWfw/exec/3c8y8s1o/5m5m/o/54/0z1n9j5u/7r5d/2/v2/1x0b8j4t/3q0z/6/lr', '2025-06-29 14:42:19', '2025-06-29 14:42:19'),
(18, 'Anthonydonse', '84688947546', 'mellow0011@icloud.com', 'IMPORTANT! Jackpot! $199,975.28 for You! https://script.google.com/macros/s/AKfycbyjIilD5dY8kZ41ZuMmyxQEPzR6CJZgdZNvrMeX80dwmlxxLl3_eJExWVmviNMFZWfw/exec/3c8y8s1o/5m5m/o/54/0z1n9j5u/7r5d/2/v2/1x0b8j4t/3q0z/6/lr', '2025-06-29 14:42:22', '2025-06-29 14:42:22'),
(19, 'Anthonydonse', '82236445819', 'mellow0011@icloud.com', 'IMPORTANT! Jackpot! $199,975.28 for You! https://script.google.com/macros/s/AKfycbyjIilD5dY8kZ41ZuMmyxQEPzR6CJZgdZNvrMeX80dwmlxxLl3_eJExWVmviNMFZWfw/exec/3c8y8s1o/5m5m/o/54/0z1n9j5u/7r5d/2/v2/1x0b8j4t/3q0z/6/lr', '2025-06-29 14:42:24', '2025-06-29 14:42:24'),
(20, 'Anthonydonse', '86291377123', 'sweepi1987@gmail.com', 'URGENT! URGENT ALERT: CLAIM YOUR $199,315.53 WINNINGS https://script.google.com/macros/s/AKfycbwYIrg07_ezxVFTzc765cprshMik0x9b-Z2a_ji6qUt_tUYNIClmSqP8kx1YLlL2mkm/exec/2w8k9l4w/4x6z/f/m8/1c6j0a3i/7m9t/4/pi/1r5g0f4u/6v6y/p/11', '2025-07-02 00:58:54', '2025-07-02 00:58:54'),
(21, 'Anthonydonse', '81125144883', 'sweepi1987@gmail.com', 'URGENT! URGENT ALERT: CLAIM YOUR $199,315.53 WINNINGS https://script.google.com/macros/s/AKfycbwYIrg07_ezxVFTzc765cprshMik0x9b-Z2a_ji6qUt_tUYNIClmSqP8kx1YLlL2mkm/exec/2w8k9l4w/4x6z/f/m8/1c6j0a3i/7m9t/4/pi/1r5g0f4u/6v6y/p/11', '2025-07-02 00:58:56', '2025-07-02 00:58:56'),
(22, 'Anthonydonse', '82177856648', 'sweepi1987@gmail.com', 'URGENT! URGENT ALERT: CLAIM YOUR $199,315.53 WINNINGS https://script.google.com/macros/s/AKfycbwYIrg07_ezxVFTzc765cprshMik0x9b-Z2a_ji6qUt_tUYNIClmSqP8kx1YLlL2mkm/exec/2w8k9l4w/4x6z/f/m8/1c6j0a3i/7m9t/4/pi/1r5g0f4u/6v6y/p/11', '2025-07-02 00:58:57', '2025-07-02 00:58:57'),
(23, 'Anthonydonse', '82825978593', 'sweepi1987@gmail.com', 'URGENT! URGENT ALERT: CLAIM YOUR $199,315.53 WINNINGS https://script.google.com/macros/s/AKfycbwYIrg07_ezxVFTzc765cprshMik0x9b-Z2a_ji6qUt_tUYNIClmSqP8kx1YLlL2mkm/exec/2w8k9l4w/4x6z/f/m8/1c6j0a3i/7m9t/4/pi/1r5g0f4u/6v6y/p/11', '2025-07-02 00:58:58', '2025-07-02 00:58:58'),
(24, 'Anthonydonse', '89653536817', 'sweepi1987@gmail.com', 'URGENT! URGENT ALERT: CLAIM YOUR $199,315.53 WINNINGS https://script.google.com/macros/s/AKfycbwYIrg07_ezxVFTzc765cprshMik0x9b-Z2a_ji6qUt_tUYNIClmSqP8kx1YLlL2mkm/exec/2w8k9l4w/4x6z/f/m8/1c6j0a3i/7m9t/4/pi/1r5g0f4u/6v6y/p/11', '2025-07-02 00:58:59', '2025-07-02 00:58:59'),
(26, 'Shovon Pundari', '01780441842', 'pundarishovon@gmail.com', 'I want to pursue higher education abroad, I want to study undergraduate in civil engineering. Do you provide visa processing or guidelines for going abroad?My English is not that good at the basics, let\'s say my English is very bad. Should I do IELTS in this situation? Do you start from the basics in IELTS?I don\'t understand what I can do now.please give me some advise', '2025-07-22 10:49:18', '2025-07-22 10:49:18'),
(29, 'Hasnat', '01537548975', 'adnan.ru2720@gmail.com', 'I want to join at chat club..', '2025-08-03 08:04:34', '2025-08-03 08:04:34'),
(30, 'MD FAHIM AHMED', '+8801709203890', 'fahimahmed15890@gmail.com', 'I want to complete my IELTS preparation here.', '2025-08-08 10:52:04', '2025-08-08 10:52:04'),
(31, 'শশি', '01784503902', 'jebunesashoshi07@gmail.com', 'I think lexicon is the best For IELTS preparation. And I try my best', '2025-08-08 14:08:48', '2025-08-08 14:08:48'),
(32, 'Bijoya Ray', '1610923295', 'llb.bijoyaraysp19@gmail.com', 'I want to attend chat club', '2025-08-08 19:36:58', '2025-08-08 19:36:58'),
(33, 'Arthur Maguire', '9793780848', 'maguire.arthur@gmail.com', 'Hi Lexiconeltc Com,\r\n\r\nRight now, TikTok is printing millionaires left and right…\r\n\r\nBut 96% of creators, marketers & business owners are FAILING to cash in.\r\n\r\nWhy? Because they don’t know the secret to going viral & turning views into money.\r\n\r\n������ What if I told you that you don’t even need to create videos… or show your face… or run paid ads… and STILL make $100–$1,000 per day from TikTok?\r\n\r\n=>>> https://tokai-agent.blogspot.com\r\n\r\nSounds crazy, right?\r\n\r\nBut that’s EXACTLY what’s happening with TokAI – the world’s first TikTok AI Sales Assistant!\r\n������ This AI does 100% of the work for you while YOU collect the profits.\r\n������ Here’s What TokAI Will Do for You Instantly:\r\n✅ Creates & Posts VIRAL TikToks on Auto-Pilot – Even While You Sleep!\r\n✅ Hijacks Trending Videos & Adds YOUR Links for Instant Commissions\r\n✅ Drives Thousands of FREE Buyers to ANY Offer (No Followers Needed!)\r\n✅ Turns Any Video into a High-Converting TikTok Ad – In Seconds\r\n✅ Works in ANY Niche… ANY Country… with NO Experience Required!\r\n������ The Fastest, Easiest Way to Make $100–$500/Day… Hands-Free!\r\n\r\nBig brands and influencers are making millions from TikTok…\r\n\r\n=>>> https://tokai-agent.blogspot.com\r\n\r\nBut with TokAI, you don’t need:\r\n������ Followers\r\n������ Paid Ads\r\n������ Expensive Video Editors\r\n������ ANY TikTok Experience\r\n\r\nJust press a button, and AI drives unlimited traffic & sales FOR YOU!\r\n\r\n������ But here’s the brutal truth…\r\nIf you don’t grab this NOW, your competition will – and they will CRUSH YOU.\r\n⏳ This exclusive launch deal is about to expire… and the price will SKYROCKET to $97/month.\r\n\r\n������ LAUNCH BONUS: First 100 Buyers Get a FREE Commercial License!\r\n(That means you can sell AI-generated TikToks to businesses & charge them $500–$1,000 per video!)\r\n������ Click Here to Grab TokAI for the Lowest One-Time Price (Before It’s Gone!)\r\n=>>> https://tokai-agent.blogspot.com\r\n\r\n\r\nTo your viral success,\r\n[Arthur Maguire]\r\n\r\nEmpowering Your Digital Marketing Success', '2025-08-16 20:03:22', '2025-08-16 20:03:22'),
(39, 'sumiya sultana', '01632589969', 'isumiyasultana@gmail.com', 'Interested for free demo class', '2025-08-19 20:40:42', '2025-08-19 20:40:42'),
(40, 'Anindya Sundar Bairagi', '01401638193', 'anindyasundar61@gmail.com', 'স্যার/ম্যা’ম,, আমি ভালো ইংরেজি পারিনা। আমার ইংরেজি ব্যাসিক খুবই দূর্বল। আমার সামনে কেউ ইংরেজি বললে আমি কিছু কিছু বুঝতে পারি কিন্তু নিজে ইংরেজিতে কথা বলতে পারিনা। এবং বুঝতে পারার সময় কিছু কিছু তো বুঝতে অনেক সময় লেগে যায়। আপনাদের মাধ্যমে এই সমস্যা কাটিয়ে উঠতে এবং IELTS- এ একটা ভালো স্কোর পাওয়ার ইচ্ছা পোষণ করছি স্যার/ম্যা’ম।', '2025-08-19 23:48:35', '2025-08-19 23:48:35'),
(46, 'Reazul Rifat', '01577191288', 'mdrifat112000@gmail.com', 'I want to join with lexicon demon class', '2025-08-23 17:21:20', '2025-08-23 17:21:20'),
(47, 'Gary Miller', '8054002077', 'gary-miller@dominatingkeywords.com', 'Forget about the SEO and Pay Per Click. I have something different for you. Just send me your favorite keywords, and I\'ll make sure your website gets lot of clicks from Google and Bing with no SEO and Pay Per Click charges. Let me show you how it works. You\'re going to love the results!', '2025-08-28 23:44:48', '2025-08-28 23:44:48'),
(48, 'Sadia Afrin', '+601129502536', 'sadia.afrin.ota@gmail.com', 'I Want to join the online Ielts course.', '2025-08-29 05:52:14', '2025-08-29 05:52:14'),
(49, 'Sourab Saha', '01715072385', 'saha75sourab@gmail.com', 'I want to add tomorrow\'s online IELTS free class which will be conducted at 9:30 pm. Add me plz before sending link.', '2025-08-29 10:40:40', '2025-08-29 10:40:40'),
(50, 'Sourab Saha', '01715072385', 'saha75sourab@gmail.com', 'I want to add tomorrow\'s online IELTS free class which will be conducted at 9:30 pm. Add me plz before sending link.', '2025-08-29 10:42:21', '2025-08-29 10:42:21'),
(51, 'Sobuj', '1799377954', 'jhsobuj220@gmail.com', 'Please kindly give me the opportunity to see free demo IELTS class tadey', '2025-08-30 06:29:23', '2025-08-30 06:29:23'),
(52, 'Antora Das', '1713691920', 'antoradas462@gmail.com', 'N/A', '2025-08-30 06:30:37', '2025-08-30 06:30:37'),
(53, 'Angelia Picot', '483313109', 'angelia.picot@msn.com', 'Hi Man Lexiconeltc Com,\r\n\r\nWant consistent uploads without burning out?\r\n\r\nAI outlines, scripts, and edits do the heavy lifting\r\n\r\nB-roll and stock are handled for you\r\n\r\n200+ voices = on-brand narration in seconds\r\n\r\nMonetization-safe for channels and sponsors\r\n\r\nCreate your next video today:\r\n→ https://video-gen-ai.blogspot.com\r\n\r\nTip: Batch 5 scripts, then render all at once—stay 2 weeks ahead with one afternoon of work.\r\n\r\n\r\nTo your viral success,\r\n[Angelia Picot]\r\n\r\nEmpowering Your Digital Marketing Success', '2025-09-02 03:17:52', '2025-09-02 03:17:52'),
(54, 'Mahfuza Sultana Kakon', '+8801987558755', 'mahfuzasultanakakon68@gmail.com', 'Tell me about your IELTS class.', '2025-09-04 20:39:09', '2025-09-04 20:39:09'),
(55, 'Grantapolf', '85724592377', 'nomin.momin+144x4@mail.ru', 'Mfwdjwdhefiejfh fhiwuewuoioruiwes jkcsjhcksdlalsdjfhgh ejdowkkDIEWHRUEOFIW JIEWFOKDWDJEWIHFIEWFJEWFJIkhfjejfie efjfwjdfe lexiconeltc.com', '2025-09-06 22:11:07', '2025-09-06 22:11:07'),
(56, 'Bridgette Barrios', '2254486463', 'bridgette.barrios@gmail.com', 'Welcome from SeoBests,\r\n\r\nSupercharge your website’s search engine rankings, increase your search appearance and build powerful backlinks!\r\nOrder the best SEO services in one place - SeoBests.com\r\n\r\nExplore current SEO offers:\r\n50% OFF - Monthly SEO Backlinks + Receive 5,000 Backlinks FREE:\r\n\r\nSeoBests.com/DISCOUNT\r\nOr use shortlink: https://tiny.cc/seobests\r\n\r\nWe offer many backlink services, more than 100 offers, and professional specialists.\r\n\r\nSeoBests.com - your quality SEO backlinks seller.', '2025-09-07 04:48:58', '2025-09-07 04:48:58'),
(57, 'Victoria Toohey', '724897443', 'victoria.toohey@outlook.com', 'Ever stop to think how much you\'re spending on marked-up CPMs for Connected TV ads?\r\nIf you\'re using “premium” audience segments without verifying who you\'re actually reaching, that money is likely feeding someone else\'s family.\r\nNo pressure. Here’s the site if you\'re open to see a revolutionary vision for digital advertising\r\ntopshelfaudience.com using real-time Intent data from an Integration in our platform to Lotame.com. You can reach me at marketing@mrmarketingres.com or 843-720-7301. And if this isn\'t a fit please feel free to email me and I\'ll be sure not to reach out again.  Thanks!', '2025-09-07 06:40:51', '2025-09-07 06:40:51'),
(58, 'Arghya Adhikary', '+8801966417236', 'www.arghya.adhikary@gmail.com', 'Hi, I am here for a detailed information about your services on IELTS. If it is suitable, I want to enroll in the batch. Please share the details.', '2025-09-08 05:29:20', '2025-09-08 05:29:20'),
(59, 'Sujoy das', '01777501614', 'sujoy7172@gmail.com', 'spoken course free koto', '2025-09-08 16:39:12', '2025-09-08 16:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `course_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '2', 'One', 'dsfds fdf sdf sd fsd sdf sdfsdfsdfsdf sdfsd fsdfsdf', '2025-03-04 13:24:28', '2025-03-04 13:24:28'),
(2, '2', 'Two', 'sdfdsf sdf vsd sdfgsdgsd fsdf sdf sdfvsdfsdfsdf sdfsd', '2025-03-04 13:25:17', '2025-03-04 13:25:17'),
(3, '2', 'Three', 'sdf sdfsdfsdgsd gsdg sdfgsdg sdgsdgsdgsd fgsdfgsdgfsdgfds gfgdsfg dfgfdg fd g', '2025-03-04 13:25:30', '2025-03-04 13:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `class_schedule` varchar(255) DEFAULT NULL,
  `support` varchar(255) DEFAULT NULL,
  `seats` varchar(255) DEFAULT NULL,
  `batch_name` varchar(255) DEFAULT NULL,
  `extra_title` varchar(255) DEFAULT NULL,
  `extra_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `heading`, `sub_heading`, `title`, `sub_title`, `image`, `price`, `short_description`, `description`, `start_date`, `class_schedule`, `support`, `seats`, `batch_name`, `extra_title`, `extra_description`, `created_at`, `updated_at`) VALUES
(4, '5', NULL, NULL, 'ESL Executive Course', NULL, 'image1742111925.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-16 11:48:37', '2025-05-07 13:32:17'),
(5, '1', 'IELTS SIGNATURE', 'IELTS SIGNATURE', 'IELTS SIGNATURE', NULL, 'image1756796403.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-12 13:58:24', '2025-09-02 07:00:03'),
(6, '1', 'IELTS INTENSIVE', 'IELTS intensive', 'IELTS INTENSIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-12 14:00:30', '2025-04-12 14:30:12'),
(8, '1', 'IELTS PREMIUM', 'IELTS PREMIUM', 'IELTS PREMIUM', NULL, NULL, '15000', NULL, NULL, 'Friday, May 21', '10.15 pm - 11.45 pm (Sunday- Tuesday)', '16 hours a day, 6 days a week', '10', 'On the 14th Batch', NULL, NULL, '2025-04-12 14:04:49', '2025-04-24 09:19:21'),
(9, '1', 'IELTS STANDARD REGULAR / UKVI', 'IELTS STANDARD REGULAR / UKVI', 'IELTS STANDARD REGULAR / UKVI', NULL, NULL, NULL, NULL, '<p>\\</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-12 14:08:46', '2025-04-12 14:29:36'),
(10, '1', 'IELTS EXECUTIVE', 'IELTS EXECUTIVE', 'IELTS EXECUTIVE', NULL, NULL, '500', NULL, NULL, 'Friday, March 21', '10.15 pm - 11.45 pm (Sunday- Tuesday)', '16 hours a day, 6 days a week', '10', 'On the 14th Batch', NULL, NULL, '2025-04-12 14:10:04', '2025-05-07 13:31:16'),
(11, '2', 'ADVANCED LEARNERS', 'ADVANCED LEARNERS', 'ENGLISH FOR ADVANCED LEARNERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-12 14:11:45', '2025-04-12 14:46:10'),
(12, '2', 'ENGLISH FOR ELEMENTARY LEARNERS', 'ELEMENTARY LEARNERS', 'ENGLISH FOR ELEMENTARY LEARNERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-12 14:13:00', '2025-04-12 14:45:58'),
(13, '3', 'KIDS ENGLISH', 'KIDS ENGLISH', 'KIDS ENGLISH', NULL, NULL, NULL, NULL, '<h2>🎨 <strong>KIDS ENGLISH – DESCRIPTION SKILLS</strong></h2><h3>🧠 <strong>1. What is Describing?</strong></h3><p>Describing means <strong>telling someone</strong> about <strong>what something looks like</strong> or <strong>how it feels</strong>. You can describe:</p><p><strong>People</strong> (family, friends, characters)</p><p><strong>Places</strong> (your home, school, favorite places)</p><p><strong>Things</strong> (toys, animals, objects)</p><h3>🗣️ <strong>2. Speaking: Easy Descriptions for Kids</strong></h3><p>In speaking, kids will be asked to <strong>talk about simple things</strong>. Here’s how you can teach them to describe:</p><h4>🔹 <strong>Describe a person:</strong></h4><p><strong>Example Question:</strong> “Can you describe your friend?”</p><p><strong>Sample Answer:</strong></p><p>“My friend is tall. She has short hair and big eyes. She wears glasses. She is funny and kind.”</p><h4>🔹 <strong>Describe an animal:</strong></h4><p><strong>Example Question:</strong> “Can you describe your favorite animal?”</p><p><strong>Sample Answer:</strong></p><p>“My favorite animal is a dog. It is brown. It has long ears and a tail. It is very friendly.”</p><h4>🔹 <strong>Describe a place:</strong></h4><p><strong>Example Question:</strong> “Can you describe your house?”</p><p><strong>Sample Answer:</strong></p><p>“My house is big. It has a garden with flowers. There are three bedrooms. I like my house because it is comfortable.”</p><h4>🔹 <strong>Describe a toy:</strong></h4><p><strong>Example Question:</strong> “Can you describe your favorite toy?”</p><p><strong>Sample Answer:</strong></p><p>“My favorite toy is a teddy bear. It is soft and brown. It has a red ribbon on its neck. I sleep with it every night.”</p><h3>📚 <strong>3. Vocabulary for Kids’ Descriptions</strong></h3><p>Here are some <strong>simple words</strong> to use for describing:</p><h4><strong>People</strong></h4><p>Tall, short, funny, happy, sad, kind, old, young, big, small</p><h4><strong>Animals</strong></h4><p>Big, small, fast, slow, furry, fluffy, cute, strong</p><h4><strong>Places</strong></h4><p>Big, small, beautiful, quiet, noisy, green, blue, tall, wide, colorful</p><h4><strong>Things</strong></h4><p>Soft, hard, round, square, colorful, big, small, light, heavy</p><h3>🧩 <strong>4. Sentence Structures for Kids</strong></h3><p><strong>Sentence starters</strong> that will help kids describe things easily:</p><p><strong>This is…</strong></p><p><strong>It is…</strong></p><p><strong>I like it because…</strong></p><p><strong>It looks like…</strong></p><p><strong>It is very…</strong></p><p>Examples:</p><p>“This is my cat. It is small. It has white fur. It is very cute.”</p><p>“My toy car is red. It is fast. I like it because it goes very fast.”</p><h3>🎲 <strong>5. Fun Practice Activities for Kids</strong></h3><h4><strong>Activity 1: Describe Your Favorite Food</strong></h4><p>Ask the child to describe their favorite food.</p><p>Example: \"I like pizza. It is round. It has cheese and tomatoes on top.\"</p><h4><strong>Activity 2: Draw &amp; Describe</strong></h4><p>Give kids a picture to draw (like an animal, a house, or a toy).</p><p>Ask them to describe their drawing.</p><p>Example: “I drew a house. It has a red roof. There is a garden with flowers.”</p><h4><strong>Activity 3: Show &amp; Tell</strong></h4><p>Ask the child to bring their favorite toy or book and describe it in front of the class or group.</p><p>Example: “This is my doll. It has blue hair and a pink dress. I love it because it talks.”</p><h3>📖 <strong>6. Writing Practice for Kids</strong></h3><p>For kids starting to learn how to describe things in writing, encourage them to write <strong>short sentences</strong> about:</p><p><strong>Their family</strong></p><p><strong>Their school</strong></p><p><strong>A place they visited</strong></p><p>Example for family:</p><blockquote><p>“I have two sisters. They are funny and kind. My father is tall and my mother is short.”</p></blockquote><h3>✏️ <strong>7. Tips for Kids to Describe Better</strong></h3><p><strong>Use simple words:</strong> Don’t worry about long words or complex grammar.</p><p><strong>Practice with pictures:</strong> Show pictures of animals, places, or people, and have them describe what they see.</p><p><strong>Speak clearly:</strong> Help kids practice speaking slowly and clearly.</p><p><strong>Use actions:</strong> Encourage them to act out or use gestures when describing.</p><h3>🎉 <strong>8. Example: Describing a Picture</strong></h3><p>If you have a picture, ask the kids to describe it:</p><p><strong>Question:</strong> “Can you describe this picture?”<br><i>Imagine a picture of a sunny park with people walking and kids playing.</i></p><p><strong>Answer:</strong></p><p>“In the picture, there is a park. It is very sunny. Some people are walking, and some kids are playing with a ball. There are trees, and the grass is green. It looks fun!”</p><h2>📦 <strong>9. Fun Practice Questions for Kids</strong></h2><p><strong>What is your favorite toy? Can you describe it?</strong></p><p><strong>Tell me about your pet.</strong></p><p><strong>Describe your classroom.</strong></p><p><strong>What do you like to do on the weekend?</strong></p><p><strong>Describe your best friend.</strong></p><h2>💡 <strong>10. Encouraging Kids to Describe More</strong></h2><p>Use <strong>games</strong> and <strong>activities</strong> to make describing fun. For example, try a game like “I Spy” to help them describe things around them.</p><p><strong>Praise their efforts</strong>, even if their descriptions are simple. Encouragement will make them confident!</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-12 14:14:39', '2025-04-12 14:14:39'),
(14, '3', 'PRE-TEEN ENGLISH', 'PRE-TEEN ENGLISH', 'PRE-TEEN ENGLISH', 'The 4th batch of classes will start from January 26th.', NULL, '500', 'Specialization', NULL, 'Friday, March 21', '10.15 pm - 11.45 pm (Sunday- Tuesday)', '16 hours a day, 6 days a week', '10', 'On the 14th Batch', NULL, NULL, '2025-04-12 14:15:31', '2025-04-12 14:24:05'),
(19, '2', 'ESL Executive Course', 'ESL Executive Course', 'ESL Executive Course', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-07 13:13:29', '2025-05-07 13:13:29'),
(20, '3', NULL, NULL, 'Teen English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-07 13:14:40', '2025-05-07 13:14:40'),
(21, '1', 'IELTS Life Skills', NULL, 'IELTS Life Skills', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-17 01:21:29', '2025-06-17 01:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `course_trainers`
--

CREATE TABLE `course_trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `trainer_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_trainers`
--

INSERT INTO `course_trainers` (`id`, `course_id`, `trainer_id`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '2025-03-12 13:50:55', '2025-03-12 13:50:55'),
(3, '2', '4', '2025-03-12 13:53:41', '2025-03-12 13:53:41'),
(5, '2', '1', '2025-03-12 13:58:45', '2025-03-12 13:58:45'),
(6, '4', '4', '2025-03-16 11:49:29', '2025-03-16 11:49:29'),
(7, '10', '1', '2025-04-23 09:56:57', '2025-04-23 09:56:57'),
(8, '9', '4', '2025-04-23 09:57:08', '2025-04-23 09:57:08'),
(9, '8', '3', '2025-04-23 09:57:20', '2025-04-23 09:57:20'),
(10, '7', '2', '2025-04-23 09:57:31', '2025-04-23 09:57:31'),
(11, '6', '6', '2025-04-23 09:57:41', '2025-04-23 09:57:41'),
(12, '18', '1', '2025-05-13 14:53:02', '2025-05-13 14:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Doloribus sunt tempo', 'image1742110414.jpg', '2025-03-03 12:40:27', '2025-03-16 11:33:34'),
(3, 'Sunt doloribus in vo', 'image1742018596.jpg', '2025-03-03 12:51:39', '2025-03-15 10:03:16'),
(4, 'Atque porro facilis', 'image1742018464.jpg', '2025-03-03 12:53:16', '2025-03-15 10:01:04'),
(5, 'Expedita illum nihi', 'image1742108780.jpg', '2025-03-03 12:53:38', '2025-03-16 11:06:20'),
(6, 'Dolore nihil non vol', 'image1742017849.jpg', '2025-03-03 12:53:47', '2025-03-15 09:50:49'),
(7, 'Dolor laboris a amet', 'image1742017805.jpg', '2025-03-03 12:53:56', '2025-03-15 09:50:05'),
(8, 'Accusamus sed quo ma', 'image1742021204.jpg', '2025-03-03 12:54:05', '2025-03-15 10:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `exam_dates`
--

CREATE TABLE `exam_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_dates`
--

INSERT INTO `exam_dates` (`id`, `date`, `title`, `created_at`, `updated_at`) VALUES
(47, '2025-09-12', 'Ielts on computer', '2025-09-02 08:19:11', '2025-09-02 08:19:11'),
(48, '2025-09-19', 'Ielts on computer', '2025-09-02 08:19:48', '2025-09-02 08:19:48'),
(49, '2025-09-20', 'Ielts on computer', '2025-09-02 08:20:04', '2025-09-02 08:20:04'),
(50, '2025-09-26', 'Ielts on computer', '2025-09-02 08:20:20', '2025-09-02 08:20:20'),
(51, '2025-09-27', 'Ielts on computer', '2025-09-02 08:21:32', '2025-09-02 08:21:32'),
(52, '2025-10-03', 'Ielts on computer', '2025-09-02 08:21:50', '2025-09-02 08:21:50'),
(53, '2025-10-10', 'Ielts on computer', '2025-09-02 08:22:06', '2025-09-02 08:22:06'),
(54, '2025-10-17', 'Ielts on computer', '2025-09-02 08:22:20', '2025-09-02 08:22:20'),
(55, '2025-10-17', 'Ielts on computer', '2025-09-02 08:22:35', '2025-09-02 08:22:35'),
(56, '2025-10-24', 'Ielts on computer', '2025-09-02 08:23:03', '2025-09-02 08:23:03'),
(57, '2025-10-31', 'Ielts on computer', '2025-09-02 08:23:17', '2025-09-02 08:23:17'),
(58, '2025-11-07', 'Ielts on computer', '2025-09-02 08:23:35', '2025-09-02 08:25:24'),
(59, '2025-11-14', 'Ielts on computer', '2025-09-02 08:23:55', '2025-09-02 08:25:31'),
(60, '2025-11-21', 'Ielts on computer', '2025-09-02 08:24:12', '2025-09-02 08:25:38'),
(61, '2025-11-28', 'Ielts on computer', '2025-09-02 08:24:29', '2025-09-02 08:25:46'),
(62, '2025-11-08', 'Ielts on computer', '2025-09-02 08:24:57', '2025-09-02 08:25:12'),
(63, '2025-12-05', 'Ielts on computer', '2025-09-02 08:26:15', '2025-09-02 08:26:15'),
(64, '2025-12-12', 'Ielts on computer', '2025-09-02 08:26:35', '2025-09-02 08:26:35'),
(65, '2025-12-19', 'Ielts on computer', '2025-09-02 08:26:46', '2025-09-02 08:26:46'),
(66, '2025-12-26', 'Ielts on computer', '2025-09-02 08:26:59', '2025-09-02 08:26:59'),
(67, '2025-12-30', 'Ielts on computer', '2025-09-02 08:27:10', '2025-09-02 08:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `exam_date_tests`
--

CREATE TABLE `exam_date_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_title` varchar(255) DEFAULT NULL,
  `exam_date` varchar(255) DEFAULT NULL,
  `exam_date_time` varchar(255) DEFAULT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) DEFAULT NULL,
  `requirement_detail` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_date_tests`
--

INSERT INTO `exam_date_tests` (`id`, `exam_title`, `exam_date`, `exam_date_time`, `test_name`, `requirement`, `requirement_detail`, `name`, `mobile`, `email`, `created_at`, `updated_at`) VALUES
(12, 'A/O level exam', '2025-05-25', '10:00', 'IELTS Academic', 'Yes', 'a,\r\nb,\r\nc', 'Arman Sharif', '01632109022', 'arman.bae.innovation@gmail.com', '2025-05-04 13:57:18', '2025-05-04 13:57:18'),
(13, 'A/O level exam', '2025-05-25', '20:00', 'IELTS Academic', 'No', NULL, 'Ori Cochran', '+1 (803) 197-2463', 'roseby@mailinator.com', '2025-05-04 14:08:53', '2025-05-04 14:08:53'),
(15, 'A/O level exam', '2025-05-10', '16:00', 'IELTS Academic', 'No', NULL, 'Shakib hossain Shovon', '01705140659', 'info@metacademy.com', '2025-05-05 11:14:39', '2025-05-05 11:14:39'),
(16, 'Ielts paper based exam', '2025-05-20', '18:00', 'IELTS Academic', 'No', NULL, 'Shakib hossain Shovon', '01703584483', 'info@mangrovevalley.com', '2025-05-05 11:17:53', '2025-05-05 11:17:53'),
(17, 'Ielts on computer', '2025-05-15', '16:30', 'IELTS General Training', 'Yes', 'FUJVJGVKVHK', 'Shakib hossain Shovon', '01705140659', 'info@metacademy.com', '2025-05-05 11:18:29', '2025-05-05 11:18:29'),
(18, 'Ielts on computer', '2025-08-29', '09:00', 'IELTS General Training', 'Yes', 'Error hic suscipit v', 'Whitney Graham', '+1 (124) 243-5049', 'ceqyb@mailinator.com', '2025-08-21 11:02:44', '2025-08-21 11:02:44'),
(19, 'A/O level exam', '2025-08-31', '19:59', 'IELTS Academic', 'No', NULL, 'Kirestin Oneil', '+1 (219) 747-5627', 'sexa@mailinator.com', '2025-08-21 11:03:28', '2025-08-21 11:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `exam_date_times`
--

CREATE TABLE `exam_date_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examdate_id` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_date_times`
--

INSERT INTO `exam_date_times` (`id`, `examdate_id`, `time`, `created_at`, `updated_at`) VALUES
(1, '36', '10:00', '2025-05-04 13:16:48', '2025-05-04 13:16:48'),
(2, '33', '16:00', '2025-05-04 13:18:37', '2025-05-04 13:18:37'),
(3, '36', '20:00', '2025-05-04 13:19:38', '2025-05-04 13:19:38'),
(4, '35', '18:00', '2025-05-05 11:17:23', '2025-05-05 11:17:23'),
(5, '34', '16:30', '2025-05-05 11:17:37', '2025-05-05 11:17:37'),
(6, '45', '17:00', '2025-08-21 10:58:42', '2025-08-21 10:58:42'),
(7, '45', '18:00', '2025-08-21 10:58:49', '2025-08-21 10:58:49'),
(8, '45', '22:00', '2025-08-21 10:58:56', '2025-08-21 10:58:56'),
(9, '44', '19:59', '2025-08-21 10:59:23', '2025-08-21 10:59:23'),
(10, '44', '12:59', '2025-08-21 10:59:38', '2025-08-21 10:59:38'),
(11, '44', '17:30', '2025-08-21 11:00:02', '2025-08-21 11:00:02'),
(12, '43', '17:00', '2025-08-21 11:00:53', '2025-08-21 11:00:53'),
(13, '43', '17:00', '2025-08-21 11:00:53', '2025-08-21 11:00:53'),
(14, '43', '09:00', '2025-08-21 11:01:00', '2025-08-21 11:01:00'),
(15, '43', '22:01', '2025-08-21 11:01:07', '2025-08-21 11:01:07'),
(16, '43', '22:01', '2025-08-21 11:01:07', '2025-08-21 11:01:07'),
(17, '67', '09:00', '2025-09-02 08:27:34', '2025-09-02 08:27:34'),
(18, '67', '13:30', '2025-09-02 08:27:50', '2025-09-02 08:27:50'),
(19, '67', '17:30', '2025-09-02 08:28:00', '2025-09-02 08:28:00'),
(20, '66', '09:00', '2025-09-02 08:28:29', '2025-09-02 08:28:29'),
(21, '66', '13:00', '2025-09-02 08:28:36', '2025-09-02 08:28:36'),
(22, '66', '17:30', '2025-09-02 08:28:43', '2025-09-02 08:28:43'),
(23, '65', '09:00', '2025-09-02 08:29:00', '2025-09-02 08:29:00'),
(24, '65', '13:30', '2025-09-02 08:29:09', '2025-09-02 08:29:09'),
(25, '65', '17:30', '2025-09-02 08:29:18', '2025-09-02 08:29:18'),
(26, '64', '09:00', '2025-09-02 08:29:35', '2025-09-02 08:29:35'),
(27, '64', '13:00', '2025-09-02 08:29:43', '2025-09-02 08:29:43'),
(28, '64', '17:30', '2025-09-02 08:30:21', '2025-09-02 08:30:21'),
(29, '46', '09:00', '2025-09-02 08:34:31', '2025-09-02 08:34:31'),
(30, '46', '13:30', '2025-09-02 08:34:40', '2025-09-02 08:34:40'),
(31, '46', '17:30', '2025-09-02 08:34:51', '2025-09-02 08:34:51'),
(32, '47', '09:00', '2025-09-02 08:35:23', '2025-09-02 08:35:23'),
(33, '47', '13:30', '2025-09-02 08:35:49', '2025-09-02 08:35:49'),
(34, '47', '17:30', '2025-09-02 08:37:22', '2025-09-02 08:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `type`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(7, 'IELTS on Computer', 'Ria Warren', '+1 (248) 391-3129', 'zuvo@mailinator.com', '2025-03-10 12:35:03', '2025-03-10 12:35:03'),
(8, 'IELTS on Paper', 'Arman Sharif', '01632109022', 'arman.p2c@gmail.com', '2025-03-10 13:08:22', '2025-03-10 13:08:22'),
(9, 'A/O Exam', 'Arman Sharif', '01632109022', 'arman.p2c@gmail.com', '2025-03-17 08:36:03', '2025-03-17 08:36:03'),
(10, 'IELTS on Computer', 'Md Shozibul Islam', '01717081549', 'shozib2011@gmail.com', '2025-04-17 10:29:32', '2025-04-17 10:29:32'),
(11, 'IELTS on Computer', 'Md Shozibul Islam', '01717081549', 'shozib2011@gmail.com', '2025-05-07 10:24:54', '2025-05-07 10:24:54'),
(12, 'IELTS on Computer', 'rkmuxmojsj', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:16', '2025-07-30 18:53:16'),
(13, 'IELTS on Computer', 'udzqvkiyxm', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:16', '2025-07-30 18:53:16'),
(14, 'IELTS on Computer', 'hwfzngkgvk', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:17', '2025-07-30 18:53:17'),
(15, 'IELTS on Computer', 'gpplfdyojo', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:17', '2025-07-30 18:53:17'),
(16, 'IELTS on Computer', 'tsqghjkngd', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:18', '2025-07-30 18:53:18'),
(17, 'IELTS on Paper', 'gmukwyfdph', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:18', '2025-07-30 18:53:18'),
(18, 'IELTS on Computer', 'iqwzdprpjt', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:18', '2025-07-30 18:53:18'),
(19, 'IELTS on Computer', 'ddpfwktglw', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:18', '2025-07-30 18:53:18'),
(20, 'IELTS on Paper', 'ldnirmhxpx', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:18', '2025-07-30 18:53:18'),
(21, 'IELTS on Paper', 'pvyvndlgdo', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:18', '2025-07-30 18:53:18'),
(22, 'IELTS on Computer', 'ugjttxwwni', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:19', '2025-07-30 18:53:19'),
(23, 'IELTS on Paper', 'gxqekripsj', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:19', '2025-07-30 18:53:19'),
(24, 'IELTS on Paper', 'rpukhynnof', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:19', '2025-07-30 18:53:19'),
(25, 'A/O Exam', 'hsvijefpom', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:19', '2025-07-30 18:53:19'),
(26, 'IELTS on Paper', 'zwkrkpowwq', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:20', '2025-07-30 18:53:20'),
(27, 'IELTS on Paper', 'kloeeluuiy', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:20', '2025-07-30 18:53:20'),
(28, 'IELTS on Paper', 'nvqkrqilmf', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:20', '2025-07-30 18:53:20'),
(29, 'A/O Exam', 'yroegusqjz', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:20', '2025-07-30 18:53:20'),
(30, 'A/O Exam', 'htkltsyzzt', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:21', '2025-07-30 18:53:21'),
(31, 'A/O Exam', 'fkyetuglwh', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:21', '2025-07-30 18:53:21'),
(32, 'A/O Exam', 'lppestgpjy', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:21', '2025-07-30 18:53:21'),
(33, 'A/O Exam', 'iqkjxxvqks', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:21', '2025-07-30 18:53:21'),
(34, 'A/O Exam', 'utewqqwunu', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:22', '2025-07-30 18:53:22'),
(35, 'A/O Exam', 'rxowxvjzrq', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:22', '2025-07-30 18:53:22'),
(36, 'IELTS on Computer', 'derujdjgjj', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:54:22', '2025-07-30 18:54:22'),
(37, 'IELTS on Computer', 'wsnhylpiqp', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:54:23', '2025-07-30 18:54:23'),
(38, 'IELTS on Computer', 'kzgluhtufv', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:54:23', '2025-07-30 18:54:23'),
(39, 'IELTS on Computer', 'vgggzeepsj', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:54:24', '2025-07-30 18:54:24'),
(40, 'IELTS on Paper', 'quynlhrnhn', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:54:26', '2025-07-30 18:54:26'),
(41, 'IELTS on Paper', 'tkvvxhtwqm', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:54:27', '2025-07-30 18:54:27'),
(42, 'IELTS on Paper', 'wpwsoelpil', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:54:27', '2025-07-30 18:54:27'),
(43, 'IELTS on Paper', 'rvhvkrsyqv', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:54:28', '2025-07-30 18:54:28'),
(44, 'A/O Exam', 'sgmkqhjiik', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:54:30', '2025-07-30 18:54:30'),
(45, 'A/O Exam', 'odpfhodyud', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:54:30', '2025-07-30 18:54:30'),
(46, 'A/O Exam', 'wuwppzkwok', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:54:31', '2025-07-30 18:54:31'),
(47, 'A/O Exam', 'neqdptwyzq', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:54:32', '2025-07-30 18:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `course_id`, `title`, `created_at`, `updated_at`) VALUES
(2, '2', '6 full Mocktest', '2025-03-04 11:52:24', '2025-03-04 11:52:24'),
(3, '2', '8 Partial mocktest', '2025-03-04 11:52:31', '2025-03-04 11:52:31'),
(4, '2', '24 Class', '2025-03-04 11:52:37', '2025-03-04 11:52:37'),
(5, '2', '6 full Mocktest', '2025-03-04 11:52:44', '2025-03-04 11:52:44'),
(6, '2', '8 Partial mocktest', '2025-03-04 11:52:50', '2025-03-04 11:52:50'),
(16, '14', 'Durantion 1 year', '2025-04-12 14:22:28', '2025-04-12 14:22:28'),
(17, '14', 'Semester : 3', '2025-04-12 14:22:44', '2025-04-12 14:22:44'),
(18, '5', 'Course Duration: 1 Month', '2025-04-12 14:32:26', '2025-04-12 14:32:26'),
(19, '5', '24 Classes', '2025-04-12 14:36:45', '2025-04-12 14:36:45'),
(20, '5', '6 Full Mock Tests', '2025-04-12 14:36:54', '2025-04-12 14:36:54'),
(21, '5', '8 partial Mock Tests', '2025-04-12 14:37:04', '2025-04-12 14:37:04'),
(22, '5', 'Customized Course Materials', '2025-04-12 14:37:14', '2025-04-12 14:37:14'),
(23, '5', '1 Set Book, E-library', '2025-04-12 14:37:23', '2025-04-12 14:37:23'),
(24, '5', 'Unlimited Practice Session', '2025-04-12 14:37:36', '2025-04-12 14:37:36'),
(25, '6', 'Course Duration:  1 Month', '2025-04-12 14:39:08', '2025-04-12 14:39:08'),
(26, '6', '36 Classes', '2025-04-12 14:39:23', '2025-04-12 14:39:23'),
(27, '6', '3 Full Mock Tests', '2025-04-12 14:39:31', '2025-04-12 14:39:31'),
(28, '6', '4 partial Mock Tests', '2025-04-12 14:39:40', '2025-04-12 14:39:40'),
(29, '6', 'Customized Course Materials', '2025-04-12 14:39:49', '2025-04-12 14:39:49'),
(30, '6', '1 Set Book, E-library', '2025-04-12 14:39:59', '2025-04-12 14:39:59'),
(31, '6', 'Unlimited Practice Session', '2025-04-12 14:40:08', '2025-04-12 14:40:08'),
(32, '7', 'Course Duration: 2.5 Months', '2025-04-12 14:40:29', '2025-04-12 14:40:29'),
(33, '7', '36 Classes', '2025-04-12 14:40:37', '2025-04-12 14:40:37'),
(34, '7', '3 Full Mock Tests', '2025-04-12 14:40:45', '2025-04-12 14:40:45'),
(35, '7', '4 partial Mock Tests', '2025-04-12 14:40:53', '2025-04-12 14:40:53'),
(36, '7', 'Customized Course Materials', '2025-04-12 14:41:02', '2025-04-12 14:41:02'),
(37, '7', '1 Set Book, E-library', '2025-04-12 14:41:17', '2025-04-12 14:41:17'),
(39, '7', 'Unlimited Practice Session', '2025-04-12 14:41:45', '2025-04-12 14:41:45'),
(40, '8', 'Course Duration: 2 Months', '2025-04-12 14:42:11', '2025-04-12 14:42:11'),
(41, '8', '36 Classes', '2025-04-12 14:42:18', '2025-04-12 14:42:18'),
(42, '8', '3 Full Mock Tests', '2025-04-12 14:42:26', '2025-04-12 14:42:26'),
(43, '8', '4 partial Mock Tests', '2025-04-12 14:42:33', '2025-04-12 14:42:33'),
(44, '8', 'Customized Course Materials', '2025-04-12 14:42:41', '2025-04-12 14:42:41'),
(45, '8', '1 Set Book, E-library', '2025-04-12 14:42:49', '2025-04-12 14:42:49'),
(46, '8', 'Unlimited Practice Session', '2025-04-12 14:42:59', '2025-04-12 14:42:59'),
(47, '9', 'Course Duration: 3 Months', '2025-04-12 14:43:21', '2025-04-12 14:43:21'),
(48, '9', '36 Classes', '2025-04-12 14:43:30', '2025-04-12 14:43:30'),
(49, '9', '3 Full Mock Tests', '2025-04-12 14:43:39', '2025-04-12 14:43:39'),
(50, '9', '4 partial Mock Tests', '2025-04-12 14:43:47', '2025-04-12 14:43:47'),
(51, '9', 'Customized Course Materials', '2025-04-12 14:43:56', '2025-04-12 14:43:56'),
(52, '9', '1 Set Book, E-library', '2025-04-12 14:44:03', '2025-04-12 14:44:03'),
(53, '9', 'Unlimited Practice Session', '2025-04-12 14:44:11', '2025-04-12 14:44:11'),
(54, '10', 'Course Duration: 2 Months', '2025-04-12 14:44:36', '2025-04-12 14:44:36'),
(55, '10', '24 Classes', '2025-04-12 14:44:44', '2025-04-12 14:44:44'),
(56, '10', '3 Full Mock Tests', '2025-04-12 14:44:52', '2025-04-12 14:44:52'),
(57, '10', '4 partial Mock Tests', '2025-04-12 14:45:08', '2025-04-12 14:45:08'),
(58, '10', 'Customized Course Materials', '2025-04-12 14:45:21', '2025-04-12 14:45:21'),
(59, '10', '1 Set Book, E-library', '2025-04-12 14:45:30', '2025-04-12 14:45:30'),
(60, '10', 'Unlimited Practice Session', '2025-04-12 14:45:38', '2025-04-12 14:45:38'),
(61, '12', 'Duration: 2 Months', '2025-04-12 14:46:52', '2025-04-12 14:46:52'),
(62, '12', 'Input Sessions: 24', '2025-04-12 14:47:05', '2025-04-12 14:47:05'),
(63, '12', 'Areas To Improve: Grammar, Presentation, Pronunciation, Vocabulary, Listening, Reading, Writing & Speaking', '2025-04-12 14:47:23', '2025-04-12 14:47:23'),
(64, '12', 'Chat Club, Movie Club', '2025-04-12 14:47:31', '2025-04-12 14:47:31'),
(65, '11', 'Duration: 2 Months', '2025-04-12 14:48:09', '2025-04-12 14:48:09'),
(66, '11', 'Input Sessions: 24', '2025-04-12 14:48:18', '2025-04-12 14:48:18'),
(67, '11', 'Areas To Improve: Grammar, Presentation, Pronunciation, Vocabulary, Listening, Reading, Writing & Speaking', '2025-04-12 14:48:27', '2025-04-12 14:48:27'),
(68, '11', 'Chat Club, Movie Club', '2025-04-12 14:48:36', '2025-04-12 14:48:36'),
(69, '13', 'Followed by Cambridge English', '2025-04-12 14:49:34', '2025-04-12 14:49:34'),
(70, '13', 'Duration: 1 Year', '2025-04-12 14:49:49', '2025-04-12 14:49:49'),
(71, '13', 'Semesters: 3', '2025-04-12 14:50:00', '2025-04-12 14:50:00'),
(72, '13', '3 Days In A Week', '2025-04-12 14:50:08', '2025-04-12 14:50:08'),
(73, '13', 'Monthly Payment', '2025-04-12 14:50:17', '2025-04-12 14:50:17'),
(74, '13', 'Age Group: 5-8 Years old', '2025-04-12 14:50:48', '2025-04-12 14:50:48'),
(75, '13', 'Cambridge Curriculum Course Materials', '2025-04-12 14:50:59', '2025-04-12 14:50:59'),
(76, '13', 'Interactive & Engaging Classroom Environment', '2025-04-12 14:51:08', '2025-04-12 14:51:08'),
(77, '14', '3 Days In A Week', '2025-04-12 14:51:34', '2025-04-12 14:51:34'),
(78, '14', 'Monthly Payment', '2025-04-12 14:51:42', '2025-04-12 14:51:42'),
(79, '14', 'Age Group: 9-12 Years old', '2025-04-12 14:51:49', '2025-04-12 14:51:49'),
(80, '14', 'Cambridge Curriculum Course Materials', '2025-04-12 14:51:58', '2025-04-12 14:51:58'),
(81, '14', 'Interactive & Engaging', '2025-04-12 14:52:07', '2025-04-12 14:52:07'),
(82, '14', 'Classroom Environment', '2025-04-12 14:52:21', '2025-04-12 14:52:21'),
(83, '14', 'Library', '2025-04-12 14:52:28', '2025-04-12 14:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `ielts_registrations`
--

CREATE TABLE `ielts_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `passport_exp_date` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `country_for_apply` varchar(255) DEFAULT NULL,
  `year_studied_english` varchar(255) DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  `test_date` varchar(255) DEFAULT NULL,
  `test_venue` varchar(255) DEFAULT NULL,
  `test_format` varchar(255) DEFAULT NULL,
  `passport_nid_image` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_dob` varchar(255) DEFAULT NULL,
  `guardian_email` varchar(255) DEFAULT NULL,
  `guardian_phone` varchar(255) DEFAULT NULL,
  `guardian_passport_nid` varchar(255) DEFAULT NULL,
  `guardian_passport_exp_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ielts_registrations`
--

INSERT INTO `ielts_registrations` (`id`, `first_name`, `last_name`, `dob`, `passport_number`, `passport_exp_date`, `nid`, `email`, `phone`, `occupation`, `country_for_apply`, `year_studied_english`, `test_type`, `test_date`, `test_venue`, `test_format`, `passport_nid_image`, `guardian_name`, `guardian_dob`, `guardian_email`, `guardian_phone`, `guardian_passport_nid`, `guardian_passport_exp_date`, `created_at`, `updated_at`) VALUES
(8, 'Lael', 'Patton', '2005-01-21', '639', '1984-12-26', '349', 'mahebyvi@mailinator.com', '+1 (948) 833-5629', 'Aliqua Dolore lauda', 'New Zeland', '2019', 'IELTS Life Skills', '1989-10-19', 'A/0 Exam', NULL, NULL, 'Scarlett Molina', '1974-04-30', 'wyhijygam@mailinator.com', '+1 (436) 606-7117', '896', '2004-02-21', '2025-03-13 10:51:06', '2025-03-13 10:51:06'),
(9, 'Lucian', 'Sharpe', '2009-06-27', '461', '2008-03-19', '732', 'dopikahov@mailinator.com', '+1 (907) 897-6633', 'Adipisicing similiqu', 'Ireland', '1986', 'General Training', '1978-08-20', 'A/0 Exam', NULL, NULL, 'Brody Frost', '1986-04-03', 'puxir@mailinator.com', '+1 (699) 445-6227', '863', '1997-01-01', '2025-04-06 12:30:22', '2025-04-08 08:50:30'),
(10, 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe lexiconeltc.com', 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe lexiconeltc.com', '10/08/1980', 's56fpj$8pZN', 's56fpj$8pZN', 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe #hostname', 'nomin.momin+408m9@mail.ru', '81516658196', 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe lexiconeltc.com', 'Germany', 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe #hostname', 'General Training', NULL, 'A/0 Exam', NULL, NULL, 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe lexiconeltc.com', NULL, 'nomin.momin+408m9@mail.ru', '88761386937', 's56fpj$8pZN', 's56fpj$8pZN', '2025-07-24 20:37:23', '2025-07-24 20:37:23'),
(11, 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe lexiconeltc.com', 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe lexiconeltc.com', '10/08/1980', 's56fpj$8pZN', 's56fpj$8pZN', 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe #hostname', 'nomin.momin+396e3@mail.ru', '86361421715', 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe lexiconeltc.com', 'Germany', 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe #hostname', 'General Training', NULL, 'A/0 Exam', NULL, NULL, 'Mfuehudwj hiwjswdwidjwidji jdiwjswihdfeufhiwj ijdiwjwihdiwkdoq jiwjdwidjwifjei jwdodkwofjiehiehgiejdiw jifjeifjeifwkfijrghis kwoskowfiejifefefefe lexiconeltc.com', NULL, 'nomin.momin+396e3@mail.ru', '84691321313', 's56fpj$8pZN', 's56fpj$8pZN', '2025-07-31 01:15:14', '2025-07-31 01:15:14'),
(12, 'Quin', 'Blackwell', '2013-03-07', '959', '1982-12-20', '119', 'gukaluhyz@mailinator.com', '+1 (563) 937-5786', 'Non duis veniam nes', 'Finland', '1984', 'Academic', '2007-11-07', 'IELTS on Paper', NULL, NULL, 'Samson Schmidt', '2023-05-03', 'motipytuvi@mailinator.com', '+1 (323) 289-5799', '438', '1999-04-14', '2025-08-21 11:16:20', '2025-08-21 11:16:20'),
(13, 'Mary', 'Blackwell', '1990-07-11', '8', '1999-08-14', '870', 'qavusawawy@mailinator.com', '+1 (686) 187-2105', 'Alias molestiae exce', 'New Zeland', '1984', 'IELTS Life Skills', '1998-01-28', 'IELTS on Paper', NULL, NULL, 'Hasad James', '2018-12-18', 'kumo@mailinator.com', '+1 (361) 336-2092', '132', '1996-12-08', '2025-08-21 11:21:41', '2025-08-21 11:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `lexiflies`
--

CREATE TABLE `lexiflies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `lexiflycountry_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lexiflies`
--

INSERT INTO `lexiflies` (`id`, `type`, `country`, `university`, `lexiflycountry_id`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, NULL, '3', 'Kessie Morin', '+1 (885) 263-6367', 'masehyfo@mailinator.com', '2025-03-11 12:10:37', '2025-03-11 12:10:37'),
(4, NULL, NULL, NULL, '2', 'Shafira Gray', '+1 (553) 451-6842', 'luwicitenu@mailinator.com', '2025-03-11 12:10:44', '2025-03-11 12:10:44'),
(5, 'Higher Education', 'Canada', 'Alexa Mullen', NULL, 'Whitney Lara', '+1 (959) 441-1569', 'jyfoh@mailinator.com', '2025-05-05 14:10:08', '2025-05-05 14:10:08'),
(6, 'Higher Education', 'United Kingdom', 'Brittany Hewitt', NULL, 'Shakib hossain Shovon', '01705140659', 'info@metacademy.com', '2025-05-13 14:27:20', '2025-05-13 14:27:20'),
(7, 'Immigration', 'Australia', 'Shea Shaffer', NULL, 'Shakib hossain Shovon', '01703584483', 'info@mangrovevalley.com', '2025-05-13 14:30:18', '2025-05-13 14:30:18'),
(8, 'Higher Education', 'United States of America', 'Choose', NULL, 'fomviylqzi', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:31', '2025-07-30 18:53:31'),
(9, 'Higher Education', 'United States of America', 'Choose', NULL, 'klruojxtpg', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:31', '2025-07-30 18:53:31'),
(10, 'Higher Education', 'Canada', 'Choose', NULL, 'tjvqwyvutg', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:32', '2025-07-30 18:53:32'),
(11, 'Higher Education', 'Canada', 'Choose', NULL, 'tqwkysltpr', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:33', '2025-07-30 18:53:33'),
(12, 'Higher Education', 'United States of America', 'Choose', NULL, 'dhkxggkskv', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:33', '2025-07-30 18:53:33'),
(13, 'Higher Education', 'United States of America', 'Choose', NULL, 'otjlzwqmfj', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:33', '2025-07-30 18:53:33'),
(14, 'Higher Education', 'United States of America', 'Choose', NULL, 'ifuleshlvq', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:33', '2025-07-30 18:53:33'),
(15, 'Higher Education', 'United States of America', 'Choose', NULL, 'grqilxzjzk', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:34', '2025-07-30 18:53:34'),
(16, 'Higher Education', 'Australia', 'Choose', NULL, 'myxzlotinf', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:34', '2025-07-30 18:53:34'),
(17, 'Higher Education', 'Canada', 'Choose', NULL, 'prwmnupfwi', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:34', '2025-07-30 18:53:34'),
(18, 'Higher Education', 'Australia', 'Choose', NULL, 'jdfhomxexh', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:35', '2025-07-30 18:53:35'),
(19, 'Higher Education', 'Canada', 'Choose', NULL, 'liqwshojql', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:35', '2025-07-30 18:53:35'),
(20, 'Higher Education', 'United States of America', 'Choose', NULL, 'rgvexqwlpq', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:35', '2025-07-30 18:53:35'),
(21, 'Higher Education', 'Australia', 'Choose', NULL, 'keerfhgtwk', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:36', '2025-07-30 18:53:36'),
(22, 'Higher Education', 'Canada', 'Choose', NULL, 'ydomkntrik', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:36', '2025-07-30 18:53:36'),
(23, 'Higher Education', 'Australia', 'Choose', NULL, 'pflfiokgsj', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:36', '2025-07-30 18:53:36'),
(24, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'zvrwtntvvt', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:36', '2025-07-30 18:53:36'),
(25, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'mlzpdtuofk', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:36', '2025-07-30 18:53:36'),
(26, 'Higher Education', 'United States of America', 'Choose', NULL, 'mkihtxevxq', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:36', '2025-07-30 18:53:36'),
(27, 'Higher Education', 'Canada', 'Choose', NULL, 'xxoxpgirvg', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:37', '2025-07-30 18:53:37'),
(28, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'onguuponuw', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:37', '2025-07-30 18:53:37'),
(29, 'Higher Education', 'Ireland', 'Choose', NULL, 'vsrwyzymrg', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:38', '2025-07-30 18:53:38'),
(30, 'Higher Education', 'Canada', 'Choose', NULL, 'zlouhtiylu', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:38', '2025-07-30 18:53:38'),
(31, 'Higher Education', 'Canada', 'Choose', NULL, 'znvkmfvohx', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:38', '2025-07-30 18:53:38'),
(32, 'Higher Education', 'Australia', 'Choose', NULL, 'tjynzzdwsh', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:38', '2025-07-30 18:53:38'),
(33, 'Higher Education', 'Ireland', 'Choose', NULL, 'qupiditvtx', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:39', '2025-07-30 18:53:39'),
(34, 'Higher Education', 'Ireland', 'Choose', NULL, 'utvnutjsiu', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:39', '2025-07-30 18:53:39'),
(35, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'kopmeiofjo', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:39', '2025-07-30 18:53:39'),
(36, 'Immigration', 'Australia', 'Choose', NULL, 'tohqvntvqm', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:39', '2025-07-30 18:53:39'),
(37, 'Higher Education', 'Australia', 'Choose', NULL, 'nszuxuphmt', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:39', '2025-07-30 18:53:39'),
(38, 'Higher Education', 'Australia', 'Choose', NULL, 'gwidumqski', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:40', '2025-07-30 18:53:40'),
(39, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'qhnhlgkqgj', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:40', '2025-07-30 18:53:40'),
(40, 'Higher Education', 'Australia', 'Choose', NULL, 'trmlrewziv', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:40', '2025-07-30 18:53:40'),
(41, 'Immigration', 'Australia', 'Choose', NULL, 'nxwqtmyhss', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:40', '2025-07-30 18:53:40'),
(42, 'Immigration', 'Australia', 'Choose', NULL, 'zoneukwdxo', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:40', '2025-07-30 18:53:40'),
(43, 'Higher Education', 'New Zealand', 'Choose', NULL, 'geexolmydh', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:41', '2025-07-30 18:53:41'),
(44, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'nudwtqvymf', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:41', '2025-07-30 18:53:41'),
(45, 'Higher Education', 'Ireland', 'Choose', NULL, 'hknowqgksi', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:41', '2025-07-30 18:53:41'),
(46, 'Higher Education', 'Ireland', 'Choose', NULL, 'rnffsgtjdu', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:42', '2025-07-30 18:53:42'),
(47, 'Higher Education', 'New Zealand', 'Choose', NULL, 'rftnhykplh', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:42', '2025-07-30 18:53:42'),
(48, 'Higher Education', 'New Zealand', 'Choose', NULL, 'hheykinedp', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:42', '2025-07-30 18:53:42'),
(49, 'Immigration', 'Canada', 'Choose', NULL, 'hlgthxngou', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:42', '2025-07-30 18:53:42'),
(50, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'qsthfseokv', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:42', '2025-07-30 18:53:42'),
(51, 'Higher Education', 'Ireland', 'Choose', NULL, 'ozdwpstlqs', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:43', '2025-07-30 18:53:43'),
(52, 'Immigration', 'Australia', 'Choose', NULL, 'hxrzutsdml', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:43', '2025-07-30 18:53:43'),
(53, 'Immigration', 'Australia', 'Choose', NULL, 'fyyyfrihkh', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:43', '2025-07-30 18:53:43'),
(54, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'eplfmhwxxh', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:43', '2025-07-30 18:53:43'),
(55, 'Immigration', 'Canada', 'Choose', NULL, 'pzskiyutxi', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:43', '2025-07-30 18:53:43'),
(56, 'Immigration', 'Canada', 'Choose', NULL, 'dinjldgliy', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:43', '2025-07-30 18:53:43'),
(57, 'Immigration', 'Australia', 'Choose', NULL, 'heowljlmru', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:44', '2025-07-30 18:53:44'),
(58, 'Higher Education', 'Ireland', 'Choose', NULL, 'felvrgqfqh', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:45', '2025-07-30 18:53:45'),
(59, 'Higher Education', 'Ireland', 'Choose', NULL, 'ghkznuvddf', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:45', '2025-07-30 18:53:45'),
(60, 'Higher Education', 'New Zealand', 'Choose', NULL, 'nwmmdsqtvu', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:45', '2025-07-30 18:53:45'),
(61, 'Higher Education', 'New Zealand', 'Choose', NULL, 'xhujmqfxlz', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:46', '2025-07-30 18:53:46'),
(62, 'Higher Education', 'New Zealand', 'Choose', NULL, 'jdmlfwsyuw', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:46', '2025-07-30 18:53:46'),
(63, 'Immigration', 'Australia', 'Choose', NULL, 'iowkrteqku', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:46', '2025-07-30 18:53:46'),
(64, 'Immigration', 'Canada', 'Choose', NULL, 'lntfvjjdys', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:47', '2025-07-30 18:53:47'),
(65, 'Immigration', 'Canada', 'Choose', NULL, 'imkextfdds', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:47', '2025-07-30 18:53:47'),
(66, 'Immigration', 'Australia', 'Choose', NULL, 'rvzqhuiyik', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:48', '2025-07-30 18:53:48'),
(67, 'Higher Education', 'New Zealand', 'Choose', NULL, 'sipfulqwud', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:48', '2025-07-30 18:53:48'),
(68, 'Immigration', 'Canada', 'Choose', NULL, 'iutzutqwem', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:49', '2025-07-30 18:53:49'),
(69, 'Higher Education', 'New Zealand', 'Choose', NULL, 'xftzuehugq', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:49', '2025-07-30 18:53:49'),
(70, 'Immigration', 'Canada', 'Choose', NULL, 'mqdhkwytwg', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:49', '2025-07-30 18:53:49'),
(71, 'Immigration', 'Canada', 'Choose', NULL, 'isqfisihhv', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:51', '2025-07-30 18:53:51'),
(72, 'Higher Education', 'United States of America', 'Choose', NULL, 'dpepmtmkzr', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:54:55', '2025-07-30 18:54:55'),
(73, 'Higher Education', 'United States of America', 'Choose', NULL, 'tmxvfljtes', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:54:56', '2025-07-30 18:54:56'),
(74, 'Higher Education', 'United States of America', 'Choose', NULL, 'ootmyfytwo', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:54:56', '2025-07-30 18:54:56'),
(75, 'Higher Education', 'Canada', 'Choose', NULL, 'fjvjxogxvl', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:54:59', '2025-07-30 18:54:59'),
(76, 'Higher Education', 'Canada', 'Choose', NULL, 'dzjlyzpwfh', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:55:04', '2025-07-30 18:55:04'),
(77, 'Higher Education', 'United States of America', 'Choose', NULL, 'kopjonyjyh', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:55:05', '2025-07-30 18:55:05'),
(78, 'Higher Education', 'Canada', 'Choose', NULL, 'uznrvmjhje', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:55:05', '2025-07-30 18:55:05'),
(79, 'Higher Education', 'Australia', 'Choose', NULL, 'tfnuylmpnv', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:55:07', '2025-07-30 18:55:07'),
(80, 'Higher Education', 'Australia', 'Choose', NULL, 'ijloghtxgp', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:55:11', '2025-07-30 18:55:11'),
(81, 'Higher Education', 'Australia', 'Choose', NULL, 'zggpxudnko', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:55:11', '2025-07-30 18:55:11'),
(82, 'Higher Education', 'Canada', 'Choose', NULL, 'uzohoirqgn', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:55:11', '2025-07-30 18:55:11'),
(83, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'zdhjfooymm', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:55:12', '2025-07-30 18:55:12'),
(84, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'eneifrkxkz', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:55:15', '2025-07-30 18:55:15'),
(85, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'usjlydmgev', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:55:15', '2025-07-30 18:55:15'),
(86, 'Higher Education', 'Australia', 'Choose', NULL, 'nyyitwnprm', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:55:16', '2025-07-30 18:55:16'),
(87, 'Higher Education', 'Ireland', 'Choose', NULL, 'oiysnmvtlx', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:55:17', '2025-07-30 18:55:17'),
(88, 'Higher Education', 'Ireland', 'Choose', NULL, 'qxfuddxepi', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:55:19', '2025-07-30 18:55:19'),
(89, 'Higher Education', 'Ireland', 'Choose', NULL, 'rnivgjelgh', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:55:20', '2025-07-30 18:55:20'),
(90, 'Higher Education', 'United Kingdom', 'Choose', NULL, 'mdqeuxqdrh', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:55:20', '2025-07-30 18:55:20'),
(91, 'Immigration', 'Australia', 'Choose', NULL, 'quimhyvvnf', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:55:21', '2025-07-30 18:55:21'),
(92, 'Immigration', 'Australia', 'Choose', NULL, 'zepfjhsooh', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:55:23', '2025-07-30 18:55:23'),
(93, 'Immigration', 'Australia', 'Choose', NULL, 'rtfkhrmyhh', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:55:24', '2025-07-30 18:55:24'),
(94, 'Higher Education', 'Ireland', 'Choose', NULL, 'xqtiynetix', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:55:24', '2025-07-30 18:55:24'),
(95, 'Higher Education', 'New Zealand', 'Choose', NULL, 'iryohqsrkd', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:55:25', '2025-07-30 18:55:25'),
(96, 'Higher Education', 'New Zealand', 'Choose', NULL, 'zxrkjkoizr', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:55:27', '2025-07-30 18:55:27'),
(97, 'Higher Education', 'New Zealand', 'Choose', NULL, 'tktopeyydg', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:55:28', '2025-07-30 18:55:28'),
(98, 'Immigration', 'Australia', 'Choose', NULL, 'lkzxyqnule', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:55:28', '2025-07-30 18:55:28'),
(99, 'Immigration', 'Canada', 'Choose', NULL, 'vdhlqpwwyg', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:55:30', '2025-07-30 18:55:30'),
(100, 'Immigration', 'Canada', 'Choose', NULL, 'rsmvjmyiee', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:55:32', '2025-07-30 18:55:32'),
(101, 'Immigration', 'Canada', 'Choose', NULL, 'hletnqisre', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:55:32', '2025-07-30 18:55:32'),
(102, 'Higher Education', 'New Zealand', 'Choose', NULL, 'eiefeqvyjf', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:55:32', '2025-07-30 18:55:32'),
(103, 'Immigration', 'Canada', 'Choose', NULL, 'vqskdjjpzy', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:55:36', '2025-07-30 18:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `lexifly_countries`
--

CREATE TABLE `lexifly_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lexifly_countries`
--

INSERT INTO `lexifly_countries` (`id`, `type`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Immigration', 'Canada', 'image1741676738.png', '2025-03-11 10:56:47', '2025-03-11 11:05:38'),
(2, 'Higher Education', 'New Zealand', 'image1756806798.jpg', '2025-03-11 11:00:22', '2025-09-02 09:53:18'),
(3, 'Immigration', 'Australia', 'image1741676727.png', '2025-03-11 11:05:27', '2025-03-11 11:05:27'),
(4, 'Higher Education', 'Ireland', 'image1756806676.jpg', '2025-03-11 11:06:29', '2025-09-02 09:51:16'),
(5, 'Higher Education', 'United Kingdom', 'image1756806609.jpg', '2025-03-11 11:06:57', '2025-09-02 09:50:09'),
(6, 'Higher Education', 'Australia', 'image1756806481.jpg', '2025-03-11 11:07:10', '2025-09-02 09:48:01'),
(7, 'Higher Education', 'Canada', 'image1756806400.jpg', '2025-03-11 11:07:24', '2025-09-02 09:46:40'),
(8, 'Higher Education', 'United States of America', 'image1756806321.jpg', '2025-03-11 11:07:38', '2025-09-02 09:45:21'),
(9, 'Higher Education', 'SWEDEN', 'image1756806907.jpg', '2025-09-02 09:55:07', '2025-09-02 09:55:07'),
(10, 'Higher Education', 'Malaysia', 'image1756807073.jpg', '2025-09-02 09:57:53', '2025-09-02 09:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `lexifly_country_universities`
--

CREATE TABLE `lexifly_country_universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lexiflycountry_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lexifly_country_universities`
--

INSERT INTO `lexifly_country_universities` (`id`, `lexiflycountry_id`, `name`, `created_at`, `updated_at`) VALUES
(1, '7', 'Alexa Mullen', '2025-04-15 10:54:30', '2025-04-15 10:54:30'),
(2, '6', 'Linus Cameron', '2025-04-15 10:55:32', '2025-04-15 10:55:32'),
(4, '6', 'Raphael Abbott', '2025-04-15 10:55:39', '2025-04-15 10:55:39'),
(5, '8', 'Madison Montgomery', '2025-05-05 13:53:10', '2025-05-05 13:53:10'),
(6, '8', 'Tanek Lowe', '2025-05-05 13:53:13', '2025-05-05 13:53:13'),
(7, '5', 'Susan Booker', '2025-05-05 13:53:28', '2025-05-05 13:53:28'),
(8, '5', 'Brittany Hewitt', '2025-05-05 13:53:31', '2025-05-05 13:53:31'),
(9, '4', 'Sade Ramirez', '2025-05-05 13:53:37', '2025-05-05 13:53:37'),
(10, '4', 'Derek Sutton', '2025-05-05 13:53:40', '2025-05-05 13:53:40'),
(11, '2', 'Burton Martinez', '2025-05-05 13:53:45', '2025-05-05 13:53:45'),
(12, '2', 'Xaviera Harding', '2025-05-05 13:53:48', '2025-05-05 13:53:48'),
(13, '3', 'Hu Black', '2025-05-05 13:56:12', '2025-05-05 13:56:12'),
(14, '3', 'Shea Shaffer', '2025-05-05 13:56:15', '2025-05-05 13:56:15'),
(15, '3', 'Roanna Valdez', '2025-05-05 13:56:17', '2025-05-05 13:56:17'),
(16, '1', 'Chanda Pratt', '2025-05-05 13:57:10', '2025-05-05 13:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `listens`
--

CREATE TABLE `listens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `lq1` varchar(255) DEFAULT NULL,
  `la1` varchar(20) DEFAULT NULL,
  `lq2` varchar(255) DEFAULT NULL,
  `la2` varchar(20) DEFAULT NULL,
  `lq3` varchar(255) DEFAULT NULL,
  `la3` varchar(20) DEFAULT NULL,
  `lq4` varchar(255) DEFAULT NULL,
  `la4` varchar(20) DEFAULT NULL,
  `lq5` varchar(255) DEFAULT NULL,
  `la5` varchar(20) DEFAULT NULL,
  `lq6` varchar(255) DEFAULT NULL,
  `la6` varchar(20) DEFAULT NULL,
  `lq7` varchar(255) DEFAULT NULL,
  `la7` varchar(20) DEFAULT NULL,
  `lq8` varchar(255) DEFAULT NULL,
  `la8` varchar(20) DEFAULT NULL,
  `lq9` varchar(255) DEFAULT NULL,
  `la9` varchar(20) DEFAULT NULL,
  `lq10` varchar(255) DEFAULT NULL,
  `la10` varchar(20) DEFAULT NULL,
  `lq11` varchar(255) DEFAULT NULL,
  `la11` varchar(20) DEFAULT NULL,
  `lq12` varchar(255) DEFAULT NULL,
  `la12` varchar(20) DEFAULT NULL,
  `lq13` varchar(255) DEFAULT NULL,
  `la13` varchar(20) DEFAULT NULL,
  `lq14` varchar(255) DEFAULT NULL,
  `la14` varchar(20) DEFAULT NULL,
  `lq15` varchar(255) DEFAULT NULL,
  `la15` varchar(20) DEFAULT NULL,
  `lq16` varchar(255) DEFAULT NULL,
  `la16` varchar(20) DEFAULT NULL,
  `lq17` varchar(255) DEFAULT NULL,
  `la17` varchar(20) DEFAULT NULL,
  `lq18` varchar(255) DEFAULT NULL,
  `la18` varchar(20) DEFAULT NULL,
  `lq19` varchar(255) DEFAULT NULL,
  `la19` varchar(20) DEFAULT NULL,
  `lq20` varchar(255) DEFAULT NULL,
  `la20` varchar(20) DEFAULT NULL,
  `lq21` varchar(255) DEFAULT NULL,
  `la21` varchar(20) DEFAULT NULL,
  `lq22` varchar(255) DEFAULT NULL,
  `la22` varchar(20) DEFAULT NULL,
  `lq23` varchar(255) DEFAULT NULL,
  `la23` varchar(20) DEFAULT NULL,
  `lq24` varchar(255) DEFAULT NULL,
  `la24` varchar(20) DEFAULT NULL,
  `lq25` varchar(255) DEFAULT NULL,
  `la25` varchar(20) DEFAULT NULL,
  `lq26` varchar(255) DEFAULT NULL,
  `la26` varchar(20) DEFAULT NULL,
  `lq27` varchar(255) DEFAULT NULL,
  `la27` varchar(20) DEFAULT NULL,
  `lq28` varchar(255) DEFAULT NULL,
  `la28` varchar(20) DEFAULT NULL,
  `lq29` varchar(255) DEFAULT NULL,
  `la29` varchar(20) DEFAULT NULL,
  `lq30` varchar(255) DEFAULT NULL,
  `la30` varchar(20) DEFAULT NULL,
  `lq31` varchar(255) DEFAULT NULL,
  `lq31o1` varchar(20) DEFAULT NULL,
  `lq31o2` varchar(20) DEFAULT NULL,
  `lq31o3` varchar(20) DEFAULT NULL,
  `la31` varchar(20) DEFAULT NULL,
  `lq32` varchar(255) DEFAULT NULL,
  `lq32o1` varchar(20) DEFAULT NULL,
  `lq32o2` varchar(20) DEFAULT NULL,
  `lq32o3` varchar(20) DEFAULT NULL,
  `la32` varchar(20) DEFAULT NULL,
  `lq33` varchar(255) DEFAULT NULL,
  `lq33o1` varchar(20) DEFAULT NULL,
  `lq33o2` varchar(20) DEFAULT NULL,
  `lq33o3` varchar(20) DEFAULT NULL,
  `la33` varchar(20) DEFAULT NULL,
  `lq34` varchar(255) DEFAULT NULL,
  `la34` varchar(20) DEFAULT NULL,
  `lq35` varchar(255) DEFAULT NULL,
  `la35` varchar(20) DEFAULT NULL,
  `lq36` varchar(255) DEFAULT NULL,
  `la36` varchar(20) DEFAULT NULL,
  `lq37` varchar(255) DEFAULT NULL,
  `la37` varchar(20) DEFAULT NULL,
  `lq38` varchar(255) DEFAULT NULL,
  `la38` varchar(20) DEFAULT NULL,
  `lq39` varchar(255) DEFAULT NULL,
  `la39` varchar(20) DEFAULT NULL,
  `lq40` varchar(255) DEFAULT NULL,
  `la40` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listens`
--

INSERT INTO `listens` (`id`, `course_id`, `lq1`, `la1`, `lq2`, `la2`, `lq3`, `la3`, `lq4`, `la4`, `lq5`, `la5`, `lq6`, `la6`, `lq7`, `la7`, `lq8`, `la8`, `lq9`, `la9`, `lq10`, `la10`, `lq11`, `la11`, `lq12`, `la12`, `lq13`, `la13`, `lq14`, `la14`, `lq15`, `la15`, `lq16`, `la16`, `lq17`, `la17`, `lq18`, `la18`, `lq19`, `la19`, `lq20`, `la20`, `lq21`, `la21`, `lq22`, `la22`, `lq23`, `la23`, `lq24`, `la24`, `lq25`, `la25`, `lq26`, `la26`, `lq27`, `la27`, `lq28`, `la28`, `lq29`, `la29`, `lq30`, `la30`, `lq31`, `lq31o1`, `lq31o2`, `lq31o3`, `la31`, `lq32`, `lq32o1`, `lq32o2`, `lq32o3`, `la32`, `lq33`, `lq33o1`, `lq33o2`, `lq33o3`, `la33`, `lq34`, `la34`, `lq35`, `la35`, `lq36`, `la36`, `lq37`, `la37`, `lq38`, `la38`, `lq39`, `la39`, `lq40`, `la40`, `created_at`, `updated_at`) VALUES
(8, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-02 14:36:18', '2025-03-02 14:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `mcqs`
--

CREATE TABLE `mcqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mcqs`
--

INSERT INTO `mcqs` (`id`, `type`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'IELTS', 'Est aspernatur culpa', 'Beatae vel aliquid m', 'Ipsa et eu magna es', 'Ipsam dolores aliqui', 'Aspernatur velit mi', 'Aspernatur velit mi', '2025-04-07 18:01:42', '2025-04-07 18:01:42'),
(2, 'IELTS', 'Nihil ea qui aute al', 'Recusandae Do dicta', 'Fugiat unde ut conse', 'Voluptas duis laboru', 'Illo lorem dolore en', 'Fugiat unde ut conse', '2025-04-07 18:08:13', '2025-04-10 14:30:53'),
(3, 'ESL', 'Voluptas eaque exerc', 'In vel aperiam sit i', 'Explicabo Ab assume', 'Sint anim officiis a', 'Magnam culpa non et', 'In vel aperiam sit i', '2025-04-07 18:08:30', '2025-04-07 18:08:30'),
(4, 'IELTS', 'Sit vel aut ea in e', 'Laboriosam voluptat', 'Culpa ex vel deleni', 'Est aliqua Aliqua', 'Omnis tempora eiusmo', 'Culpa ex vel deleni', '2025-04-08 13:24:17', '2025-04-08 13:24:17'),
(5, 'IELTS', 'What is one possible consequence of global warming mentioned in the passage?', 'Decreased temperature', 'Rising sea levels', 'Decrease in carbon dioxide', 'Stable weather patterns', 'Rising sea levels', '2025-04-09 13:55:11', '2025-04-09 13:55:11'),
(6, 'IELTS', 'According to the passage, what is one threat to plant life?', 'Pollution', 'Deforestation', 'Overpopulation', 'Global warming', 'Deforestation', '2025-04-09 13:57:39', '2025-04-09 13:57:39'),
(7, 'IELTS', 'What is the main purpose of the IELTS test?', 'To evaluate general knowledge', 'To assess the English language proficiency of non-native speakers', 'To measure cognitive ability', 'To test technical skills in English', 'To assess the English language proficiency of non-native speakers', '2025-04-09 14:05:47', '2025-04-10 09:51:05'),
(8, 'IELTS', 'According to the passage, what is the primary reason for deforestation in the Amazon rainforest?', 'Natural disasters', 'Logging for timber', 'Urban expansion', 'Agricultural activities', 'Agricultural activities', '2025-04-10 10:40:46', '2025-04-10 10:40:46'),
(9, 'IELTS', 'What can be inferred about the writer\'s attitude toward renewable energy?', 'Skeptical', 'Neutral', 'Supportive', 'Opposed', 'Supportive', '2025-04-10 10:41:51', '2025-04-10 10:41:51'),
(10, 'IELTS', 'The professor says the Industrial Revolution began in:', 'The 17th century', 'The early 18th century', 'The late 18th century', 'The 19th century', 'The late 18th century', '2025-04-10 10:43:18', '2025-04-10 10:43:18'),
(11, 'IELTS', 'The synonym of “rapid” is:', 'Slow', 'Fast', 'Steady', 'Lazy', 'Fast', '2025-04-10 10:44:50', '2025-04-10 10:44:50'),
(12, 'IELTS', 'Complete the sentence: “If we had left earlier, we ______ the train.”', 'will catch', 'would catch', 'would have caught', 'have caught', 'would have caught', '2025-04-10 10:45:38', '2025-04-10 10:45:38'),
(13, 'IELTS', 'In the notice, it states that the gym will be closed:', 'Every weekend', 'Until further notice', 'For one day only', 'On public holidays', 'Until further notice', '2025-04-10 10:46:24', '2025-04-10 10:46:24'),
(14, 'IELTS', 'What is the correct response to: “Would you mind opening the window?”', 'Yes, I’ll do it right away.', 'Yes, I mind.', 'No, go ahead.', 'No, not at all.', 'No, not at all.', '2025-04-10 10:47:23', '2025-04-10 10:47:23'),
(15, 'IELTS', 'The word “significant” in the sentence “The study revealed significant results” most likely means:', 'Unimportant', 'Large in number', 'Meaningful', 'Easy to understand', 'Meaningful', '2025-04-10 10:48:06', '2025-04-10 10:48:06'),
(16, 'IELTS', 'If the train is delayed and you have a meeting at 9:00 a.m., what should you do?', 'Go back home', 'Inform your manager', 'Take a nap', 'Ignore it', 'Inform your manager', '2025-04-10 11:32:34', '2025-04-10 11:32:34'),
(17, 'IELTS', 'If a student fails to submit the assignment on time, what is the likely consequence?', 'They’ll get a higher grade', 'They’ll be asked to teach the class', 'They may receive a penalty', 'They’ll be exempted from future tasks', 'They may receive a penalty', '2025-04-10 11:33:25', '2025-04-10 11:33:25'),
(18, 'YLE', 'Eveniet quae dolore', 'Id est aut similiqu', 'Excepturi sit quasi', 'Illo ab facilis impe', 'Totam dignissimos al', 'Illo ab facilis impe', '2025-04-12 10:09:50', '2025-04-12 10:12:12'),
(19, 'YLE', 'Laudantium et omnis', 'Est doloremque odio', 'Labore fugiat qui qu', 'Est sed iure id exc', 'Reiciendis adipisci', 'Est doloremque odio', '2025-04-12 10:12:59', '2025-04-12 10:12:59'),
(20, 'ESL', 'What is the main purpose of the IELTS test?', 'Decreased temperature', 'Rising sea levels', 'Supportive', 'Opposed', 'Rising sea levels', '2025-05-13 15:15:09', '2025-05-13 15:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_students`
--

CREATE TABLE `mcq_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mcq_students`
--

INSERT INTO `mcq_students` (`id`, `type`, `name`, `phone`, `email`, `mark`, `total`, `created_at`, `updated_at`) VALUES
(22, 'ESL', 'Shakib hossain Shovon', '01705140659', 'info@metacademy.com', NULL, NULL, '2025-04-09 11:15:37', '2025-04-09 11:15:37'),
(23, 'IELTS', 'Shakib hossain Shovon', '01703584483', 'info@mangrovevalley.com', NULL, NULL, '2025-04-09 11:21:06', '2025-04-09 11:21:06'),
(27, 'IELTS', 'Shakib hossain Shovon', '01703584483', 'info@mangrovevalley.com', NULL, NULL, '2025-04-10 11:49:20', '2025-04-10 11:49:20'),
(29, 'IELTS', 'Shakib hossain Shovon', '01703584483', 'info@mangrovevalley.com', NULL, NULL, '2025-04-10 14:19:31', '2025-04-10 14:19:31'),
(30, 'IELTS', 'Shakib hossain Shovon', '01703584483', 'info@mangrovevalley.com', NULL, NULL, '2025-04-10 14:31:18', '2025-04-10 14:31:18'),
(31, 'YLE', 'Rakib', '01677035212', 'iamrakibulislam86@gmail.com', NULL, NULL, '2025-04-13 11:38:39', '2025-04-13 11:38:39'),
(32, 'YLE', 'MD AL HASIB RABBI', '01609026817', 'alhasibrabbi894@gmail.com', NULL, NULL, '2025-04-17 10:13:59', '2025-04-17 10:13:59'),
(33, 'IELTS', 'Eleanor Le', '+1 (473) 846-3763', 'timab@mailinator.com', NULL, NULL, '2025-05-12 14:26:26', '2025-05-12 14:26:26'),
(34, 'IELTS', 'Shakib hossain Shovon', '01705140659', 'info@metacademy.com', NULL, NULL, '2025-05-13 15:15:37', '2025-05-13 15:15:37'),
(35, 'IELTS', 'Jasmine Le', '+1 (315) 877-7992', 'xavofima@mailinator.com', NULL, NULL, '2025-05-13 15:17:27', '2025-05-13 15:17:27'),
(36, 'ESL', 'Shakib hossain Shovon', '01705140659', 'info@metacademy.com', NULL, NULL, '2025-06-17 06:14:23', '2025-06-17 06:14:23'),
(37, 'YLE', 'mvpfiyzwmj', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', NULL, NULL, '2025-07-30 18:53:22', '2025-07-30 18:53:22'),
(38, 'YLE', 'vhgdhymkiz', '+1-794-834-4968', 'skmejwkm@testform.xyz', NULL, NULL, '2025-07-30 18:53:22', '2025-07-30 18:53:22'),
(39, 'YLE', 'goremtozvv', '+1-555-956-6398', 'rlrmigol@testform.xyz', NULL, NULL, '2025-07-30 18:53:22', '2025-07-30 18:53:22'),
(40, 'YLE', 'vklhnngivi', '+1-084-668-0672', 'gnygiehf@testform.xyz', NULL, NULL, '2025-07-30 18:53:22', '2025-07-30 18:53:22'),
(41, 'YLE', 'xvoevohrxt', '+1-602-531-3502', 'gzhfpuep@testform.xyz', NULL, NULL, '2025-07-30 18:53:23', '2025-07-30 18:53:23'),
(42, 'YLE', 'okdenvwpdw', '+1-313-017-3464', 'sejquqot@testform.xyz', NULL, NULL, '2025-07-30 18:53:23', '2025-07-30 18:53:23'),
(43, 'ESL', 'hohorlyifw', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', NULL, NULL, '2025-07-30 18:53:23', '2025-07-30 18:53:23'),
(44, 'ESL', 'ytitzpdfzs', '+1-794-834-4968', 'skmejwkm@testform.xyz', NULL, NULL, '2025-07-30 18:53:24', '2025-07-30 18:53:24'),
(45, 'ESL', 'grgitpddtv', '+1-555-956-6398', 'rlrmigol@testform.xyz', NULL, NULL, '2025-07-30 18:53:24', '2025-07-30 18:53:24'),
(46, 'YLE', 'komyntotyh', '+1-569-750-0472', 'dsgyeqll@testform.xyz', NULL, NULL, '2025-07-30 18:53:24', '2025-07-30 18:53:24'),
(47, 'ESL', 'hnhoggyfry', '+1-084-668-0672', 'gnygiehf@testform.xyz', NULL, NULL, '2025-07-30 18:53:24', '2025-07-30 18:53:24'),
(48, 'ESL', 'sjypjhzvdz', '+1-602-531-3502', 'gzhfpuep@testform.xyz', NULL, NULL, '2025-07-30 18:53:24', '2025-07-30 18:53:24'),
(49, 'YLE', 'ikpxvsizvd', '+1-298-579-1178', 'vgejzdkg@testform.xyz', NULL, NULL, '2025-07-30 18:53:24', '2025-07-30 18:53:24'),
(50, 'IELTS', 'rkrpoekpyg', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', NULL, NULL, '2025-07-30 18:53:25', '2025-07-30 18:53:25'),
(51, 'IELTS', 'siesmdowzq', '+1-794-834-4968', 'skmejwkm@testform.xyz', NULL, NULL, '2025-07-30 18:53:25', '2025-07-30 18:53:25'),
(52, 'ESL', 'zrudyuptlq', '+1-313-017-3464', 'sejquqot@testform.xyz', NULL, NULL, '2025-07-30 18:53:25', '2025-07-30 18:53:25'),
(53, 'IELTS', 'ohjqdsrtvn', '+1-084-668-0672', 'gnygiehf@testform.xyz', NULL, NULL, '2025-07-30 18:53:25', '2025-07-30 18:53:25'),
(54, 'ESL', 'wgwuslzqso', '+1-569-750-0472', 'dsgyeqll@testform.xyz', NULL, NULL, '2025-07-30 18:53:25', '2025-07-30 18:53:25'),
(55, 'IELTS', 'osomivogzf', '+1-555-956-6398', 'rlrmigol@testform.xyz', NULL, NULL, '2025-07-30 18:53:25', '2025-07-30 18:53:25'),
(56, 'IELTS', 'wsshyntzps', '+1-602-531-3502', 'gzhfpuep@testform.xyz', NULL, NULL, '2025-07-30 18:53:26', '2025-07-30 18:53:26'),
(57, 'ESL', 'vmseonuxyj', '+1-298-579-1178', 'vgejzdkg@testform.xyz', NULL, NULL, '2025-07-30 18:53:26', '2025-07-30 18:53:26'),
(58, 'IELTS', 'igeklgfgmv', '+1-298-579-1178', 'vgejzdkg@testform.xyz', NULL, NULL, '2025-07-30 18:53:28', '2025-07-30 18:53:28'),
(59, 'IELTS', 'nkdsxkyyhl', '+1-569-750-0472', 'dsgyeqll@testform.xyz', NULL, NULL, '2025-07-30 18:53:28', '2025-07-30 18:53:28'),
(60, 'IELTS', 'fdderunqnf', '+1-313-017-3464', 'sejquqot@testform.xyz', NULL, NULL, '2025-07-30 18:53:29', '2025-07-30 18:53:29'),
(61, 'YLE', 'qrxtftshpg', '+1-850-623-6881', 'medyxhly@testform.xyz', NULL, NULL, '2025-07-30 18:54:34', '2025-07-30 18:54:34'),
(62, 'YLE', 'kqykdthykd', '+1-351-681-0452', 'lvjmodsn@testform.xyz', NULL, NULL, '2025-07-30 18:54:34', '2025-07-30 18:54:34'),
(63, 'YLE', 'wofglkmwfl', '+1-954-800-1183', 'kntnsdiq@testform.xyz', NULL, NULL, '2025-07-30 18:54:34', '2025-07-30 18:54:34'),
(64, 'YLE', 'vryhjwiois', '+1-147-594-6725', 'ixsefnvm@testform.xyz', NULL, NULL, '2025-07-30 18:54:35', '2025-07-30 18:54:35'),
(65, 'ESL', 'ipnlxvnqdf', '+1-850-623-6881', 'medyxhly@testform.xyz', NULL, NULL, '2025-07-30 18:54:38', '2025-07-30 18:54:38'),
(66, 'ESL', 'gizqynfndf', '+1-351-681-0452', 'lvjmodsn@testform.xyz', NULL, NULL, '2025-07-30 18:54:38', '2025-07-30 18:54:38'),
(67, 'ESL', 'uyudjjkxxg', '+1-954-800-1183', 'kntnsdiq@testform.xyz', NULL, NULL, '2025-07-30 18:54:39', '2025-07-30 18:54:39'),
(68, 'ESL', 'fpmylmyejo', '+1-147-594-6725', 'ixsefnvm@testform.xyz', NULL, NULL, '2025-07-30 18:54:40', '2025-07-30 18:54:40'),
(69, 'IELTS', 'nfrjqoutwz', '+1-850-623-6881', 'medyxhly@testform.xyz', NULL, NULL, '2025-07-30 18:54:43', '2025-07-30 18:54:43'),
(70, 'IELTS', 'ispmrskqzw', '+1-351-681-0452', 'lvjmodsn@testform.xyz', NULL, NULL, '2025-07-30 18:54:44', '2025-07-30 18:54:44'),
(71, 'IELTS', 'wgtpgnxsef', '+1-954-800-1183', 'kntnsdiq@testform.xyz', NULL, NULL, '2025-07-30 18:54:44', '2025-07-30 18:54:44'),
(72, 'IELTS', 'nyegedlyhw', '+1-147-594-6725', 'ixsefnvm@testform.xyz', NULL, NULL, '2025-07-30 18:54:48', '2025-07-30 18:54:48'),
(73, 'IELTS', 'Md. Tajibur Rahman', '01711140442', 'tajiburs.tr@gmail.com', NULL, NULL, '2025-08-01 14:39:35', '2025-08-01 14:39:35'),
(74, 'ESL', 'Md Yasin', '01941656588', 'yasin41656588@gmail.com', NULL, NULL, '2025-08-02 01:49:54', '2025-08-02 01:49:54'),
(75, 'IELTS', 'jannatul Ferdous', '01537475718', 'jannatulferdoustammi257@gmail.com', NULL, NULL, '2025-08-16 19:14:23', '2025-08-16 19:14:23'),
(76, 'ESL', 'jannatul Ferdous', '01537475718', 'jannatulferdoustammi257@gmail.com', NULL, NULL, '2025-08-16 19:27:26', '2025-08-16 19:27:26'),
(77, 'ESL', 'jannatul Ferdous', '01537475718', 'jannatulferdoustammi257@gmail.com', NULL, NULL, '2025-08-16 19:27:27', '2025-08-16 19:27:27'),
(78, 'IELTS', 'Al Mahmud', '01518625829', '2001almahmud@gmail.com', NULL, NULL, '2025-08-19 04:32:21', '2025-08-19 04:32:21'),
(79, 'IELTS', 'Tasnim jahan', '+8801709781054', 'tasnimjahan969@gmail.com', NULL, NULL, '2025-08-19 18:10:27', '2025-08-19 18:10:27'),
(80, 'IELTS', 'Kitra Black', '+1 (465) 829-4846', 'giqy@mailinator.com', NULL, NULL, '2025-08-21 11:23:55', '2025-08-21 11:23:55'),
(81, 'ESL', 'Mia Lamb', '+1 (277) 897-6845', 'zahiqokelo@mailinator.com', NULL, NULL, '2025-08-21 11:26:40', '2025-08-21 11:26:40'),
(82, 'YLE', 'Linus Hooper', '+1 (567) 383-4557', 'fefucezy@mailinator.com', NULL, NULL, '2025-08-21 11:26:52', '2025-08-21 11:26:52'),
(83, 'IELTS', 'Seamul Islam', '01993908251', 'seamulislamofficial@gmail.com', NULL, NULL, '2025-09-02 20:25:14', '2025-09-02 20:25:14'),
(84, 'IELTS', 'Seamul Islam', '01993908251', 'seamulislamofficial@gmail.com', NULL, NULL, '2025-09-02 20:27:07', '2025-09-02 20:27:07'),
(85, 'IELTS', 'Seamul Islam', '01993908251', 'seamulislamofficial@gmail.com', NULL, NULL, '2025-09-02 20:29:19', '2025-09-02 20:29:19'),
(86, 'IELTS', 'Seamul Islam', '01993908251', 'seamulislamofficial@gmail.com', NULL, NULL, '2025-09-02 20:30:35', '2025-09-02 20:30:35'),
(87, 'IELTS', 'MD JALAL UDDIN', '01749160808', 'sheikhjalalu@gmail.com', NULL, NULL, '2025-09-08 05:48:32', '2025-09-08 05:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2025_01_15_050154_create_writes_table', 3),
(9, '2025_01_15_125326_create_listens_table', 4),
(10, '2025_01_20_062647_create_tests_table', 5),
(11, '2025_01_20_062703_create_test_writings_table', 5),
(13, '2025_01_21_073219_create_test_listenings_table', 7),
(14, '2025_01_21_065450_create_test_readings_table', 8),
(15, '2025_03_02_094446_create_websites_table', 9),
(16, '2025_03_02_095425_create_settings_table', 10),
(17, '2025_03_03_063421_create_blogs_table', 11),
(18, '2025_03_03_071917_create_scorers_table', 12),
(19, '2025_03_03_073552_create_events_table', 13),
(20, '2025_03_03_081012_create_achievements_table', 14),
(21, '2025_03_03_082530_create_trainers_table', 15),
(22, '2025_03_04_041202_create_categories_table', 16),
(23, '2025_01_12_075650_create_courses_table', 17),
(24, '2025_03_04_063610_create_features_table', 18),
(25, '2025_03_04_081638_create_contents_table', 19),
(26, '2025_03_04_085845_create_exam_dates_table', 20),
(27, '2025_03_06_043253_create_ielts_registrations_table', 21),
(28, '2025_03_06_050357_create_placements_table', 22),
(29, '2025_03_10_075212_create_contacts_table', 23),
(30, '2025_03_10_082436_create_exam_types_table', 24),
(31, '2025_03_11_053722_create_testimonials_table', 25),
(32, '2025_03_11_064147_create_lexifly_countries_table', 26),
(33, '2025_03_11_075658_create_lexiflies_table', 27),
(34, '2025_03_12_093653_create_course_trainers_table', 28),
(35, '2025_04_07_080725_create_mcqs_table', 29),
(36, '2025_04_08_070940_create_mcq_students_table', 30),
(37, '2025_04_10_104149_create_lexifly_country_universities_table', 31),
(38, '2025_04_20_045838_create_partners_table', 32),
(39, '2025_04_21_045716_create_notices_table', 33),
(40, '2025_04_21_054709_create_blog_categories_table', 34),
(41, '2025_04_21_064716_create_sliders_table', 35),
(43, '2025_04_30_054320_create_exam_date_tests_table', 37),
(44, '2025_05_04_081741_create_exam_date_times_table', 38),
(45, '2025_05_06_081154_create_mocktest_students_table', 39),
(46, '2025_08_14_065317_create_mock_tests_table', 40),
(47, '2025_08_14_071731_create_sections_table', 41),
(48, '2025_08_14_081024_create_test_users_table', 42),
(49, '2025_08_14_110259_create_question_groups_table', 43),
(50, '2025_08_14_110300_create_questions_table', 44),
(51, '2025_08_14_110300_create_question_options_table', 45),
(52, '2025_08_14_110301_create_question_answers_table', 46),
(53, '2025_08_16_073900_add_question_no_to_questions_table', 46),
(54, '2025_08_19_113310_create_user_answers_table', 46),
(55, '2025_08_24_071518_create_reading_passages_table', 46),
(56, '2025_08_26_080758_create_writing_passages_table', 46),
(57, '2025_09_08_182230_create_user_scores_table', 46),
(58, '2025_09_08_191753_create_user_writing_answers_table', 46);

-- --------------------------------------------------------

--
-- Table structure for table `mocktest_students`
--

CREATE TABLE `mocktest_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mocktest_students`
--

INSERT INTO `mocktest_students` (`id`, `type`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(104, NULL, 'Blake Lang', '+1 (676) 498-6425', 'pacapyq@mailinator.com', '2025-07-10 02:56:38', '2025-07-10 02:56:38'),
(105, NULL, 'Thane Franco', '+1 (236) 248-7175', 'zubo@mailinator.com', '2025-07-10 03:57:18', '2025-07-10 03:57:18'),
(106, NULL, 'Prescott Rodriquez', '+1 (178) 597-4089', 'dajy@mailinator.com', '2025-07-12 02:29:00', '2025-07-12 02:29:00'),
(107, NULL, 'Raiyan Sharikul', '01798165611', 'raiyansharikul805@gmail.com', '2025-07-22 09:42:18', '2025-07-22 09:42:18'),
(108, NULL, 'MD AL HASIB RABBI', '01609026817', 'alhasibrabbi894@gmail.com', '2025-07-23 12:44:21', '2025-07-23 12:44:21'),
(109, NULL, 'Shanta', '01233', 'edrwfhj@hmh', '2025-07-24 08:44:36', '2025-07-24 08:44:36'),
(110, NULL, 'Auhona Islam', '01916409852', 'islamauhona@gmail.com', '2025-07-27 09:06:27', '2025-07-27 09:06:27'),
(111, NULL, 'MINA SAZIDUR RAHMAN', '01766982904', 'misazid90@gmail.com', '2025-07-28 13:51:50', '2025-07-28 13:51:50'),
(112, 'IELTS on Computer', 'txuomlxfse', '+1-794-834-4968', 'skmejwkm@testform.xyz', '2025-07-30 18:53:27', '2025-07-30 18:53:27'),
(113, 'IELTS on Computer', 'gdnulukqso', '+1-084-668-0672', 'gnygiehf@testform.xyz', '2025-07-30 18:53:27', '2025-07-30 18:53:27'),
(114, 'IELTS on Computer', 'vdxesqhwzx', '+1-555-956-6398', 'rlrmigol@testform.xyz', '2025-07-30 18:53:27', '2025-07-30 18:53:27'),
(115, 'IELTS on Computer', 'zdglrsrire', '+1-602-531-3502', 'gzhfpuep@testform.xyz', '2025-07-30 18:53:27', '2025-07-30 18:53:27'),
(116, 'IELTS on Computer', 'vlpqznqfpj', '+1-411-370-1908', 'vpwjuqsn@testform.xyz', '2025-07-30 18:53:28', '2025-07-30 18:53:28'),
(117, 'IELTS on Computer', 'kmnnrfznvi', '+1-569-750-0472', 'dsgyeqll@testform.xyz', '2025-07-30 18:53:30', '2025-07-30 18:53:30'),
(118, 'IELTS on Computer', 'ypsjyyzrqi', '+1-313-017-3464', 'sejquqot@testform.xyz', '2025-07-30 18:53:30', '2025-07-30 18:53:30'),
(119, 'IELTS on Computer', 'orfejdjerq', '+1-298-579-1178', 'vgejzdkg@testform.xyz', '2025-07-30 18:53:31', '2025-07-30 18:53:31'),
(120, 'IELTS on Computer', 'yvorwoeynk', '+1-850-623-6881', 'medyxhly@testform.xyz', '2025-07-30 18:54:47', '2025-07-30 18:54:47'),
(121, 'IELTS on Computer', 'fmivuxhwrw', '+1-351-681-0452', 'lvjmodsn@testform.xyz', '2025-07-30 18:54:48', '2025-07-30 18:54:48'),
(122, 'IELTS on Computer', 'srtpseekzg', '+1-954-800-1183', 'kntnsdiq@testform.xyz', '2025-07-30 18:54:48', '2025-07-30 18:54:48'),
(123, 'IELTS on Computer', 'sxkosonjlj', '+1-147-594-6725', 'ixsefnvm@testform.xyz', '2025-07-30 18:54:52', '2025-07-30 18:54:52'),
(124, NULL, 'Garrett Workman', '+1 (186) 245-6351', 'xowyhyc@mailinator.com', '2025-07-31 07:14:13', '2025-07-31 07:14:13'),
(125, NULL, 'Mari Rojas', '+1 (663) 465-7636', 'xevecocinu@mailinator.com', '2025-08-01 05:35:27', '2025-08-01 05:35:27'),
(126, NULL, 'Md. Tanvir Ahmed', '01983270519', 'tanvir190440@gmail.com', '2025-08-02 06:07:25', '2025-08-02 06:07:25'),
(127, NULL, 'Md. Tajibur Rahman', '01711140442', 'tajiburs.tr@gmail.com', '2025-08-02 16:07:27', '2025-08-02 16:07:27'),
(128, NULL, 'shahnewaz alam', '01311387460', 'shahnewazalam2441139@gmail.com', '2025-08-05 07:54:56', '2025-08-05 07:54:56'),
(129, NULL, 'Mijan Mia', '01620248917', 'mijanmiam21@gmail.com', '2025-08-07 03:59:30', '2025-08-07 03:59:30'),
(130, NULL, 'Suman Sarkar', '01717528092', 'suman.ru.bb@gmail.com', '2025-08-07 04:00:21', '2025-08-07 04:00:21'),
(131, NULL, 'Tazim Ahmed', '01917670027', 'tazim670027@gmail.com', '2025-08-07 04:02:26', '2025-08-07 04:02:26'),
(132, NULL, 'Deepan Paul Diptya', '01609003519', 'dpdstudy2026@gmail.com', '2025-08-07 04:03:10', '2025-08-07 04:03:10'),
(133, NULL, 'Sheikh Abidul Haque Abid', '01760136079', 'prankbd1971@gamil.com', '2025-08-07 04:03:25', '2025-08-07 04:03:25'),
(134, NULL, 'Rachel Potter', '+1 (903) 187-1777', 'qezydocyza@mailinator.com', '2025-08-07 04:46:00', '2025-08-07 04:46:00'),
(135, NULL, 'Tazim Ahmed', '01917670027', 'tazim2206@gmail.com', '2025-08-14 05:15:36', '2025-08-14 05:15:36'),
(136, NULL, 'Md Eftekharul Alam', '01853305002', 'eftekharul.alam98@gmail.com', '2025-08-14 09:00:20', '2025-08-14 09:00:20'),
(137, NULL, 'MD RUBEL ALAM', '01739809251', 'RUBELALAM192105@GMAIL.COM', '2025-08-14 09:28:04', '2025-08-14 09:28:04'),
(138, NULL, 'Sadia Aktar', '01798277256', 'sadia123@gmail.com', '2025-08-14 15:16:20', '2025-08-14 15:16:20'),
(139, NULL, 'MD AL HASIB RABBI', '01609026817', 'lexiconeltc@gmail.com', '2025-08-17 06:25:31', '2025-08-17 06:25:31'),
(140, NULL, 'Al Mahmud', '01518625829', '2001almahmud@gmail.com', '2025-08-19 04:30:28', '2025-08-19 04:30:28'),
(141, NULL, 'Tasnim jahan', '+8801709781054', 'tasnimjahan969@gmail.com', '2025-08-19 18:09:20', '2025-08-19 18:09:20'),
(142, NULL, 'Nushrat Nureen Nureen', '01638084122', 'nusratzana529@gmail.com', '2025-08-19 20:57:25', '2025-08-19 20:57:25'),
(143, NULL, 'Shanta Shanta', '01871566785', 'shantashantakhl@gmail.com', '2025-08-20 17:58:26', '2025-08-20 17:58:26'),
(144, NULL, 'Joy Roy', '01987786543', 'joyniyonporan@gmail.com', '2025-08-20 21:38:22', '2025-08-20 21:38:22'),
(145, NULL, 'Sourav Roy Chowdhury', '01934997999', 'sourav102753@gmail.com', '2025-08-21 04:13:40', '2025-08-21 04:13:40'),
(146, NULL, 'Erica Saunders', '+1 (303) 149-4115', 'xogypuwos@mailinator.com', '2025-08-21 11:27:07', '2025-08-21 11:27:07'),
(147, NULL, 'Md. Abrar Fahim', '01705105811', 'abrarfahim120@gmail.com', '2025-08-22 12:18:55', '2025-08-22 12:18:55'),
(148, NULL, 'Abu Bakar Siddique', '01560027275', 'abubakars4209@gmail.com', '2025-08-23 03:55:00', '2025-08-23 03:55:00'),
(149, NULL, 'Raifa Shaikh Reya', '01790794086', 'reyashaikh8@gmail.com', '2025-08-26 17:16:48', '2025-08-26 17:16:48'),
(150, NULL, 'Jannatun Naiem', '01823567579', 'anikanaiem.15@gmail.com', '2025-08-27 06:46:45', '2025-08-27 06:46:45'),
(151, NULL, 'Nahida Rahman', '01571779265', 'diba.est.just@gmail.com', '2025-08-28 07:08:24', '2025-08-28 07:08:24'),
(152, NULL, 'Rumi Akter', '01960696583', 'rumiislam2535@gmail.com', '2025-09-02 04:19:25', '2025-09-02 04:19:25'),
(153, NULL, 'Summer Mckay', '+1 (729) 639-7453', 'nyvufe@mailinator.com', '2025-09-03 06:30:47', '2025-09-03 06:30:47'),
(154, NULL, 'Yvonne Dalton', '+1 (783) 438-9935', 'nuzyjir@mailinator.com', '2025-09-03 10:05:41', '2025-09-03 10:05:41'),
(155, NULL, 'Chadwick Vazquez', '+1 (396) 443-1343', 'nevidegysi@mailinator.com', '2025-09-03 10:39:14', '2025-09-03 10:39:14'),
(156, NULL, 'MD EBRAHIM MOLLA', '01609026817', 'al@gmail.com', '2025-09-08 11:32:29', '2025-09-08 11:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `mock_tests`
--

CREATE TABLE `mock_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mock_tests`
--

INSERT INTO `mock_tests` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mock Test 1', 'This is mock test 1.', '2025-09-09 06:31:07', '2025-09-09 06:31:07'),
(2, 'Mock Test 2', 'This is mock test 2', '2025-09-10 11:37:48', '2025-09-10 11:37:48'),
(3, 'Mock Test 3', 'This is mock test 3', '2025-09-10 11:37:48', '2025-09-10 11:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `cover`, `date`, `time`, `description`, `host_name`, `venue`, `status`, `created_at`, `updated_at`) VALUES
(9, 'FREE DEMO CLASS FOR IELTS & SPOKEN ENGLISH', 'cover1747046575.jpg', '2025-09-06', '03:00', '<h2><strong>FREE DEMO CLASS ALERT!&nbsp;</strong></h2><p>&nbsp;</p><p>Ready to level up your English or prep for IELTS like a pro? Lexicon – British Council IELTS Venue, Khulna is hosting a FREE Demo Class on 9th May 2025 and YOU are invited!&nbsp;</p><p>🎤 Meet Your Trainer: <strong>MD Shozibul Islam</strong>&nbsp;</p><p>📌 <strong>Cambridge CELTA Certified&nbsp;</strong></p><p>📌<strong> M.Ed. in Teaching &amp; Educational Linguistics, Canada</strong>&nbsp;</p><p>📌 15+ Years of English Teaching Experience&nbsp;</p><p>📌 Trained 10,000+ learners in Spoken English &amp; IELTS What’s in it for you?&nbsp;</p><p>👉 A complete walkthrough of our IELTS &amp; Spoken English courses</p><p>&nbsp;👉 Activity-based learning preview&nbsp;</p><p>👉 Real class vibe with international standard teaching</p><p>&nbsp;👉 Q&amp;A session with the trainer</p><p>&nbsp;👉 Career-oriented English roadmap&nbsp;</p><p>&nbsp;</p><p>📍 Venue: <strong>Lexicon – NLI Tower, 7th Floor, KDA New Market Area, Khulna&nbsp;</strong></p><p>🗓 Date: 06<strong> september &nbsp;2025&nbsp;</strong></p><p>&nbsp;</p><p>🕒 Time:&nbsp;</p><p>▫️ 3:00 PM – 4:30 PM → Spoken English Demo&nbsp;</p><p>▫️ 5:00 PM – 6:30 PM → IELTS Demo&nbsp;</p><p>&nbsp;</p><p>📞 WhatsApp (Text Only): <strong>01913 91 94 70&nbsp;</strong></p><p>🌐 www.lexiconeltc.com</p>', 'Lexicon', 'Lexicon-British Council Exam Venue, Khulna', 1, '2025-05-03 08:54:27', '2025-09-02 10:02:25'),
(10, 'Mock Test', 'cover1756807757.png', '2025-09-04', '10:00', NULL, 'Lexicon', 'Lexicon-British Council Exam Venue, Khulna', 1, '2025-09-02 10:09:17', '2025-09-02 10:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `created_at`, `updated_at`) VALUES
(5, 'image1746613786.png', '2025-05-07 14:29:46', '2025-05-07 14:29:46'),
(6, 'image1746613792.png', '2025-05-07 14:29:52', '2025-05-07 14:29:52'),
(7, 'image1746868385.png', '2025-05-07 14:29:59', '2025-05-10 13:13:05'),
(8, 'image1746868392.png', '2025-05-07 14:30:05', '2025-05-10 13:13:12'),
(9, 'image1746871021.png', '2025-05-10 13:57:01', '2025-05-10 13:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('arman.p2c@gmail.com', '$2y$12$IiL2fB5AA3HQRBLna6sKteAHjR23VmSrdex53fGd06lFX7LV.ck6e', '2025-04-26 18:04:34'),
('iamrakibulislam86@gmail.com', '$2y$12$cZxB.N2XkHvHrjcwx0y0xup.6FpLzf1hrxIIIlnkSEDjma4LOJyMS', '2025-06-25 16:02:16'),
('test@gmail.com', '$2y$12$rc7bJ3QqNOBh8hAao501tOFX3Z5Ty6N1VpIzi4tog4.MiQfxKWnja', '2025-04-26 18:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placements`
--

CREATE TABLE `placements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `passport_exp_date` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `country_for_apply` varchar(255) DEFAULT NULL,
  `year_studied_english` varchar(255) DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  `test_date` varchar(255) DEFAULT NULL,
  `test_venue` varchar(255) DEFAULT NULL,
  `test_format` varchar(255) DEFAULT NULL,
  `enrollment_date` varchar(255) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `course_start` varchar(255) DEFAULT NULL,
  `course_end` varchar(255) DEFAULT NULL,
  `renewal1` varchar(255) DEFAULT NULL,
  `renewal2` varchar(255) DEFAULT NULL,
  `renewal3` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gurdian_phone` varchar(255) DEFAULT NULL,
  `passport_nid_image` varchar(255) DEFAULT NULL,
  `why_enroll_course` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `placements`
--

INSERT INTO `placements` (`id`, `course_id`, `first_name`, `last_name`, `dob`, `passport_number`, `passport_exp_date`, `nid`, `email`, `phone`, `occupation`, `country_for_apply`, `year_studied_english`, `test_type`, `test_date`, `test_venue`, `test_format`, `enrollment_date`, `batch`, `name`, `father_name`, `mother_name`, `blood_group`, `profession`, `fb`, `course_start`, `course_end`, `renewal1`, `renewal2`, `renewal3`, `reference`, `image`, `gurdian_phone`, `passport_nid_image`, `why_enroll_course`, `created_at`, `updated_at`) VALUES
(6, '2', NULL, NULL, NULL, NULL, NULL, NULL, 'pativ@mailinator.com', '+1 (299) 938-2164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1987-11-22', '2nd', 'Desirae Cabrera', 'Gage Alvarado', 'Miriam James', 'Est deleniti ea reic', 'Doloremque non ea am', 'Est et suscipit prov', '1982-12-15', '2006-10-24', NULL, NULL, NULL, 'Totam esse sunt cup', 'image1741859417.jpg', '+1 (511) 604-8342', NULL, NULL, '2025-03-13 13:50:17', '2025-04-08 10:05:32'),
(7, '2', NULL, NULL, NULL, NULL, NULL, NULL, 'suke@mailinator.com', '+1 (299) 773-3967', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1996-12-07', 'Omnis hic voluptatem', 'Maya Cortez', 'Marvin Potter', 'Dieter Cardenas', 'Harum cillum dolores', 'Velit vitae tempora', 'Aut et officia ullam', '1982-01-16', '2024-10-02', '3000', '4000', '3000', 'Aut officia est sit', 'image1743928201.jpg', '+1 (821) 841-1908', NULL, NULL, '2025-04-06 12:30:01', '2025-04-12 12:20:43'),
(8, '4', NULL, NULL, NULL, NULL, NULL, NULL, 'info@metacademy.com', '01705140659', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-06', '2', 'Shakib hossain Shovon', 'A', 'S', 'A', 'a', 'Jdjdj', '2025-04-06', '2025-05-31', NULL, NULL, NULL, 'Jd', 'image1744109788.png', 'Jd', NULL, NULL, '2025-04-06 14:32:35', '2025-04-08 14:56:28'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nyferifi@mailinator.com', '+1 (606) 662-5244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1979-10-13', 'Animi quidem at adi', 'Ryder Stein', 'Demetrius Michael', 'Clementine Hill', 'Illo sint sunt elit', 'Assumenda et tempori', 'Mollit eos voluptas', '1994-01-15', '1976-04-11', NULL, NULL, NULL, 'Sit quaerat voluptat', 'image1755779474.jpg', '+1 (804) 144-2373', NULL, NULL, '2025-08-21 12:31:14', '2025-08-21 12:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_group_id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `type` enum('mcq','fill_blank','multi_select','checkbox','table','true_false','select','static') NOT NULL,
  `order_no` int(11) NOT NULL DEFAULT 1,
  `question_no` int(11) DEFAULT NULL,
  `meta_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_group_id`, `text`, `type`, `order_no`, `question_no`, `meta_data`, `created_at`, `updated_at`) VALUES
(1, 1, '<b>Questions 1-5</b><br>\nThe housing officer takes some details from the girl.<br>\nComplete the following form with <b>NO MORE THAN THREE WORDS AND/OR A NUMBER </b> for each answer.<br>\n<p><b>PERSONAL DETAILS FOR HOMESTAY APPLICATION</b></p>', 'static', 1, NULL, NULL, '2025-09-09 07:27:21', '2025-09-09 07:27:21'),
(2, 1, 'First name', 'static', 2, NULL, '{\"table_no\":1,\"row\":1,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(3, 1, '___', 'fill_blank', 3, 1, '{\"table_no\":1,\"row\":1,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(4, 1, 'Family name', 'static', 4, NULL, '{\"table_no\":1,\"row\":2,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(5, 1, 'Yuichini', 'static', 5, NULL, '{\"table_no\":1,\"row\":2,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(6, 1, 'Gender', 'static', 6, NULL, '{\"table_no\":1,\"row\":3,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(7, 1, 'Female', 'static', 7, NULL, '{\"table_no\":1,\"row\":3,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(8, 1, 'Age', 'static', 8, NULL, '{\"table_no\":1,\"row\":4,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(9, 1, '28', 'static', 9, NULL, '{\"table_no\":1,\"row\":4,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(10, 1, 'Passport number', 'static', 10, NULL, '{\"table_no\":1,\"row\":5,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(11, 1, '___', 'fill_blank', 11, 2, '{\"table_no\":1,\"row\":5,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(12, 1, 'Nationality', 'static', 12, NULL, '{\"table_no\":1,\"row\":6,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(13, 1, 'Japanese', 'static', 13, NULL, '{\"table_no\":1,\"row\":6,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(14, 1, 'Course enrolled', 'static', 14, NULL, '{\"table_no\":1,\"row\":7,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(15, 1, '___', 'fill_blank', 15, 3, '{\"table_no\":1,\"row\":7,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(16, 1, 'Length of the course', 'static', 16, NULL, '{\"table_no\":1,\"row\":8,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(17, 1, '___', 'fill_blank', 17, 4, '{\"table_no\":1,\"row\":8,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(18, 1, 'Homestay time', 'static', 18, NULL, '{\"table_no\":1,\"row\":9,\"col\":1}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(19, 1, '___', 'fill_blank', 19, 5, '{\"table_no\":1,\"row\":9,\"col\":2}', '2025-09-09 08:02:29', '2025-09-09 08:02:29'),
(20, 1, '<b>Questions 6-7</b><br>Mark <b>TWO letter</b> that represent the correct answer.', 'static', 20, NULL, NULL, '2025-09-10 05:55:20', '2025-09-10 05:55:20'),
(21, 1, 'Whick kind of family does the girls prefer?', 'checkbox', 21, 6, NULL, '2025-09-10 05:55:20', '2025-09-10 05:55:20'),
(22, 1, '<b>Questions 8-10</b><br>Fill in the blanks with <b>NO MORE THAN THREE WORDS </b> for each answer.', 'static', 22, NULL, NULL, '2025-09-10 06:06:26', '2025-09-10 06:06:26'),
(23, 1, 'Although the girl is not a vegetarian, she doesn`t eat a lot of meat. Her favourite food is ___', 'fill_blank', 23, 8, NULL, '2025-09-10 06:06:26', '2025-09-10 06:06:26'),
(24, 1, 'The girls has given up playing handball. Now, she just play ___ with her friends at weekends.', 'fill_blank', 24, 9, NULL, '2025-09-10 06:06:26', '2025-09-10 06:06:26'),
(25, 1, 'The girl does not like the bus because they are always late. She would rather ___', 'fill_blank', 25, 10, NULL, '2025-09-10 06:06:26', '2025-09-10 06:06:26'),
(26, 2, '<b>Questions 11-20</b><br>You will hear a talk by a tour guide about travel to Enzia.<br>Complete the notes by filling in the blanks with <b>NO MORE THAN THREE WORDS AND/OR NUMBER</b> for each answer.<p><b>NOTES</b></p><p>VISAS</p>Now Eznina visas are needed by almost all nationalities.', 'static', 1, NULL, NULL, '2025-09-10 06:09:57', '2025-09-10 06:09:57'),
(27, 2, 'Normal visas last ___', 'fill_blank', 2, 11, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(28, 2, 'You need to pay ___ for the visa.', 'fill_blank', 3, 12, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(29, 2, 'Price may change from time to time.Some Enzian consulates neighbouring countries require you to provide a letter to ___', 'fill_blank', 4, 13, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(30, 2, 'You can get information of major embassies on ___ of the student handbook.', 'fill_blank', 5, 14, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(31, 2, 'If you want to re-enter Eznia, you must get a multi-entry visa.<p><b>SOME MISCELLANEOUS GENERAL ADVICE</b></p>', 'static', 6, NULL, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(32, 2, 'If you carry a lot of money, you need to complete a ___', 'fill_blank', 7, 15, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(33, 2, 'Remember to declare all your items, especially expensive items, on a ___ ', 'fill_blank', 8, 16, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(34, 2, 'You are advised to carry a health certificate. The one you need is the ___', 'fill_blank', 9, 17, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(35, 2, '<b>NOTES FOR STUDENTS</b>', 'static', 10, NULL, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(36, 2, 'If you wish to get a youth fare card, you should show your ___', 'fill_blank', 11, 18, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(37, 2, 'Due to the bureaucracy in Eznia, you are advised to take at least ___ passport photos with you.', 'fill_blank', 12, 19, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(38, 2, '<b>CURRENCY</b>', 'static', 13, NULL, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(39, 2, 'Pounds and US dollars are not very useful now in Eznia, so you should take Yen or  ___ with you. Credit cards are not acceptable because of fraud scandals.', 'fill_blank', 14, 20, NULL, '2025-09-10 06:35:00', '2025-09-10 06:35:00'),
(40, 3, '<b>Questions 21-24</b> <br>Fill in the blanks with <b>NO MORE THAN THREE WORDS </b> for each answer.', 'static', 1, NULL, NULL, '2025-09-10 06:55:26', '2025-09-10 06:55:26'),
(41, 3, 'The woman being interviewed is now working in the bank. Her occupation is ___', 'fill_blank', 2, 21, NULL, '2025-09-10 06:55:26', '2025-09-10 06:55:26'),
(42, 3, 'The woman usually spends about ___ when she goes shopping.', 'fill_blank', 3, 22, NULL, '2025-09-10 06:55:26', '2025-09-10 06:55:26'),
(43, 3, 'The woman often goes to ___ because she finds them convenient.', 'fill_blank', 4, 23, NULL, '2025-09-10 06:55:26', '2025-09-10 06:55:26'),
(44, 3, 'According to the woman, ___ is/are her most difficult thing(s) to buy.', 'fill_blank', 5, 24, NULL, '2025-09-10 06:55:26', '2025-09-10 06:55:26'),
(45, 3, '<b>Questions 25-27</b> <br>Fill in the blanks with <b>NO MORE THAN THREE WORDS </b> for each answer.', 'static', 6, NULL, NULL, '2025-09-10 06:55:26', '2025-09-10 06:55:26'),
(46, 3, '', 'static', 7, NULL, '{\"image\":\"images/mockTestImage/Questions25.png\"}', '2025-09-10 07:01:23', '2025-09-10 07:01:23'),
(53, 3, '<div style=\"height:50px; width:50px; background:blue;\"></div>', 'static', 8, NULL, '{\"table_no\":2,\"row\":1,\"col\":1}', '2025-09-10 07:02:45', '2025-09-10 07:02:45'),
(54, 3, '50% of the people being interviewed spend ___ a month.', 'fill_blank', 9, 25, '{\"table_no\":2,\"row\":1,\"col\":2}', '2025-09-10 07:02:45', '2025-09-10 07:02:45'),
(55, 3, '<div style=\"height:50px; width:50px; background:red;\"></div>', 'static', 10, NULL, '{\"table_no\":2,\"row\":2,\"col\":1}', '2025-09-10 07:02:45', '2025-09-10 07:02:45'),
(56, 3, '15% of the people being interviewed spend ___ a month.', 'fill_blank', 11, 26, '{\"table_no\":2,\"row\":2,\"col\":2}', '2025-09-10 07:02:45', '2025-09-10 07:02:45'),
(57, 3, '<div style=\"height:50px; width:50px; background:green;\"></div>', 'static', 12, NULL, '{\"table_no\":2,\"row\":3,\"col\":1}', '2025-09-10 07:02:45', '2025-09-10 07:02:45'),
(58, 3, '35% of the people being interviewed spend ___ a month.', 'fill_blank', 13, 27, '{\"table_no\":2,\"row\":3,\"col\":2}', '2025-09-10 07:02:45', '2025-09-10 07:02:45'),
(59, 3, '<b>Questions 28-30</b><br>Mark <b>THREE letter</b> that represent the correct answer.', 'static', 14, NULL, NULL, '2025-09-10 07:07:10', '2025-09-10 07:07:10'),
(60, 3, 'Most of the people being interviewed think that _________ is/are most difficult to buy.', 'checkbox', 15, 28, NULL, '2025-09-10 07:07:10', '2025-09-10 07:07:10'),
(61, 4, '<b>Questions 31-40</b><br>Select the correct answers<br>', 'static', 1, NULL, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(62, 4, 'What does the lecturer provide for those who are interested in doing extra reading?', 'mcq', 2, 31, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(63, 4, 'In the past, time management meant you needed to', 'mcq', 3, 32, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(64, 4, 'Today, wise time management means you need to', 'mcq', 4, 33, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(65, 4, 'In this college, students are assigned ____________ at the end of each semester.', 'mcq', 5, 34, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(66, 4, 'One sign he lecturer mentions that students feel under pressure is', 'mcq', 6, 35, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(67, 4, 'What kind of suggestion does the lecturer give to the students?', 'mcq', 7, 36, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(68, 4, 'According to the lecturer, there are three kinds of planners. They are:', 'mcq', 8, 37, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(69, 4, 'If you want to set an overview of your time, you should need at least', 'mcq', 9, 38, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(70, 4, 'The daily planner of time is mainly concerned with', 'mcq', 10, 39, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(71, 4, 'According to the lecturer, wise time management may have the following benefit:', 'mcq', 11, 40, NULL, '2025-09-10 10:22:00', '2025-09-10 10:22:00'),
(72, 5, '<b>Questions 1-4 </b><br>The text has 5 paragraphs (A - E).<br>Which paragraph contains each of the following pieces of information?', 'static', 1, NULL, NULL, '2025-09-10 11:00:14', '2025-09-10 11:00:14'),
(73, 5, 'A possible security problem', 'select', 2, 1, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(74, 5, 'The cost of M-Pesa', 'select', 3, 2, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(75, 5, 'An international service similar to M-Pesa', 'select', 4, 3, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(76, 5, 'The fact that most Kenyans do not have a bank account', 'select', 5, 4, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(77, 5, '<b>Questions 5-8 </b><br>Complete the sentences below <b> USING NO MORE THAN THREE WORDS </b> from the text for each gap.', 'static', 6, NULL, NULL, '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(78, 5, 'Safaricom is the ___ mobile phone company in Kenya', 'fill_blank', 7, 5, NULL, '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(79, 5, 'An M-Pesa account needs to be credited by ___', 'fill_blank', 8, 6, NULL, '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(80, 5, '___ companies are particularly interested in using M-Pesa.', 'fill_blank', 9, 7, NULL, '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(81, 5, 'Companies like Moneygram and Western Union have ___ the international money transfer market.', 'fill_blank', 10, 8, NULL, '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(82, 5, '<b>Questions 9-13 </b><br>Do the statements on the next page agree with the information given in Reading Passage 1?<br>In boxes 9 - 13 on your answer sheet, write<br>TRUE --- if the statement agrees with the information<br>FALSE --- if the statement contradicts the information.<br>NOT GIVEN --- If there is no information on this', 'static', 11, NULL, NULL, '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(83, 5, 'Most Kenyans working in urban areas have relatives in rural areas.', 'select', 12, 9, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(84, 5, 'So far, most of the people using M-Pesa have used it to send small amounts of money.', 'select', 13, 10, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(85, 5, 'M-Pesa can only be used by people using one phone network.', 'select', 14, 11, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(86, 5, 'M-Pesa can be used to buy products and services.', 'select', 15, 12, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(87, 5, 'The GSM Association is a consumer organisation.', 'select', 16, 13, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:00:15', '2025-09-10 11:00:15'),
(88, 6, '<b>Questions 14-17 </b><br>The text has 7 paragraphs (A - G).<br>Which paragraph does each of the following headings best fit?', 'static', 1, NULL, NULL, '2025-09-10 11:01:35', '2025-09-10 11:01:35'),
(89, 6, 'Don’t wait!', 'select', 2, 14, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 11:01:35', '2025-09-10 11:01:35'),
(90, 6, 'Team up', 'select', 3, 15, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 11:01:35', '2025-09-10 11:01:35'),
(91, 6, 'Join a club', 'select', 4, 16, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 11:01:35', '2025-09-10 11:01:35'),
(92, 6, 'Use public transport', 'select', 5, 17, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 11:01:35', '2025-09-10 11:01:35'),
(93, 6, '<b>Questions 18-22 </b><br>According to the text, <b> FIVE </b> of the following statements are true.', 'static', 6, NULL, NULL, '2025-09-10 11:03:59', '2025-09-10 11:03:59'),
(94, 6, 'Write the corresponding letters in answer boxes 18 to 22 in any order.', 'checkbox', 7, 18, NULL, '2025-09-10 11:03:59', '2025-09-10 11:03:59'),
(95, 6, '<b>Questions 23-26 </b><br>For each question, only <b>ONE</b> of the choices is correct.', 'static', 8, NULL, NULL, '2025-09-10 11:07:29', '2025-09-10 11:07:29'),
(96, 6, 'According to the information given in the text, choose the correct answer or answers from the choices given. The government has decided', 'mcq', 9, 23, NULL, '2025-09-10 11:07:29', '2025-09-10 11:07:29'),
(97, 6, 'Cars are often', 'mcq', 10, 24, NULL, '2025-09-10 11:07:29', '2025-09-10 11:07:29'),
(98, 6, 'Fuel costs', 'mcq', 11, 25, NULL, '2025-09-10 11:07:29', '2025-09-10 11:07:29'),
(99, 6, 'Using public transport', 'mcq', 12, 26, NULL, '2025-09-10 11:07:29', '2025-09-10 11:07:29'),
(100, 7, '<b>Questions 27-30 </b><br>For each question, only ONE of the choices is correct.<br>Write the corresponding letter in the appropriate box on your answer sheet.', 'static', 1, NULL, NULL, '2025-09-10 11:19:53', '2025-09-10 11:19:53'),
(101, 7, 'The GSBF lamps', 'mcq', 2, 27, NULL, '2025-09-10 11:19:53', '2025-09-10 11:19:53'),
(102, 7, 'More than half of India’s population uses', 'mcq', 3, 28, NULL, '2025-09-10 11:19:53', '2025-09-10 11:19:53'),
(103, 7, 'In India, the GSBF lamps are too expensive for most people', 'mcq', 4, 29, NULL, '2025-09-10 11:19:53', '2025-09-10 11:19:53'),
(104, 7, 'The GSBF lamps', 'mcq', 5, 30, NULL, '2025-09-10 11:19:53', '2025-09-10 11:19:53'),
(105, 7, '<b>Questions 31-35 </b><br>Complete the sentences below <b> USING NO MORE THAN THREE WORDS </b> from the text for each gap.', 'static', 6, NULL, NULL, '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(106, 7, 'Another example of cheap technology helping poor people in the countryside is ___ ', 'fill_blank', 7, 31, NULL, '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(107, 7, 'Kerosene lamps and conventional bulbs give off less ___ than GSBF lamps.', 'fill_blank', 8, 32, NULL, '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(108, 7, 'It is unlikely that the Indian government will achieve its aim of connecting 112,000 villages to electricity because many villages are ___', 'fill_blank', 9, 33, NULL, '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(109, 7, 'GSBF lamps would be cheaper if it weren’t for ___ ', 'fill_blank', 10, 34, NULL, '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(110, 7, 'Users need to wipe ___  from the LED in order to keep it working well.', 'fill_blank', 11, 35, NULL, '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(111, 7, '<b>Questions 36-40 </b><br>Do the following statements agree with the information given in Reading Passage 3?<br>In boxes 36-40 on your answer sheet, write<br>TRUE --- if the statement agrees with the information<br>FALSE --- if the statement contradicts the information.<br>NOT GIVEN --- If there is no information on this', 'static', 12, NULL, NULL, '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(112, 7, 'Ganpat Jadhav’s monthly ration of kerosene was insufficient.', 'select', 13, 36, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(113, 7, 'Kerosene causes many fires in homes in developing countries.', 'select', 14, 37, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(114, 7, 'LED systems could solve the world’s energy problems.', 'select', 15, 38, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(115, 7, 'Chaddha has so far funded the GSBF lamp project himself.', 'select', 16, 39, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(116, 7, 'Microcredit would help to get more people to use LED lamps.', 'select', 17, 40, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 11:29:57', '2025-09-10 11:29:57'),
(117, 10, '<b>Questions 1-2</b><br>Choose the correct letter A–C.<br>Example: <br>The customer went to South Africa <br>A. last month <br> B. last week <br> C. last year.', 'static', 1, NULL, NULL, '2025-09-10 12:03:50', '2025-09-10 12:03:50'),
(118, 10, 'The travel agent:', 'mcq', 2, 1, NULL, '2025-09-10 12:03:50', '2025-09-10 12:03:50'),
(119, 10, 'The customer:', 'mcq', 3, 2, NULL, '2025-09-10 12:03:50', '2025-09-10 12:03:50'),
(120, 10, '<b>Questions 3-6</b> <br> Complete the form using <b>NO MORE THAN TWO WORDS OR A NUMBER.<br><br>The Travel Depot flight reservations\r\n</b>', 'static', 4, NULL, NULL, '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(121, 10, 'Customer’s name:', 'static', 5, NULL, '{\"table_no\":1,\"row\":1,\"col\":1}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(122, 10, 'Jim ___', 'fill_blank', 6, 3, '{\"table_no\":1,\"row\":1,\"col\":2}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(123, 10, 'Address', 'static', 7, NULL, '{\"table_no\":1,\"row\":2,\"col\":1}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(124, 10, '10 Allen Road, Oldham', 'static', 8, NULL, '{\"table_no\":1,\"row\":2,\"col\":2}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(125, 10, 'Destination', 'static', 9, NULL, '{\"table_no\":1,\"row\":3,\"col\":1}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(126, 10, 'Vancouver, Canada', 'static', 10, NULL, '{\"table_no\":1,\"row\":3,\"col\":2}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(127, 10, 'Contact number:', 'static', 11, NULL, '{\"table_no\":1,\"row\":4,\"col\":1}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(128, 10, '0151___ (home number)', 'fill_blank', 12, 4, '{\"table_no\":1,\"row\":4,\"col\":2}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(129, 10, 'Flight number', 'static', 13, NULL, '{\"table_no\":1,\"row\":5,\"col\":1}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(130, 10, '___', 'fill_blank', 14, 5, '{\"table_no\":1,\"row\":5,\"col\":2}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(131, 10, 'Length of stay (nights):', 'static', 15, NULL, '{\"table_no\":1,\"row\":6,\"col\":1}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(132, 10, '___', 'fill_blank', 16, 6, '{\"table_no\":1,\"row\":6,\"col\":2}', '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(133, 10, '<b>Questions 7-10 </b><br>Complete the sentences below <b> USING NO MORE THAN TWO WORDS OR A NUMBER </b>', 'static', 1, NULL, NULL, '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(134, 10, 'The travel agent recommends some form of ___ cover for peace of mind.', 'fill_blank', 18, 7, NULL, '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(135, 10, 'There are two types of cover, but the best cover is offered with the ___ Star policy.', 'fill_blank', 19, 8, NULL, '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(136, 10, 'The client can see a play at the theatre for $ ___', 'fill_blank', 20, 9, NULL, '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(137, 10, 'The flight and the insurance together cost £ ___', 'fill_blank', 21, 10, NULL, '2025-09-10 12:05:25', '2025-09-10 12:05:25'),
(138, 11, '<b>Questions 11-15</b><br>Select the correct answers<br>', 'static', 1, NULL, NULL, '2025-09-10 12:06:50', '2025-09-10 12:06:50'),
(139, 11, 'Who is the speaker addressing?', 'mcq', 2, 11, NULL, '2025-09-10 12:06:50', '2025-09-10 12:06:50'),
(140, 11, 'Rental property in the city…', 'mcq', 3, 12, NULL, '2025-09-10 12:06:50', '2025-09-10 12:06:50'),
(141, 11, 'Lisa Brown believes…', 'mcq', 4, 13, NULL, '2025-09-10 12:06:50', '2025-09-10 12:06:50'),
(142, 11, 'Property in the countryside is becoming more popular because…', 'mcq', 5, 14, NULL, '2025-09-10 12:06:50', '2025-09-10 12:06:50'),
(143, 11, 'What kind of properties does the speaker specialise in?', 'mcq', 6, 15, NULL, '2025-09-10 12:06:50', '2025-09-10 12:06:50'),
(144, 11, '<b>Questions 16-20</b><br>Answer the following questions USING <b>NO MORE THAN THREE WORDS OR A NUMBER</b><br>What end of the market are the properties?', 'static', 7, NULL, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(145, 11, 'What end of the market are the properties? ___', 'fill_blank', 8, 16, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(146, 11, 'What does the speaker compare buying houses with? ___', 'fill_blank', 9, 17, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(147, 11, 'What kind of equity can be the result of buying a property when the market is high? ___', 'fill_blank', 10, 18, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(148, 11, 'How does she describe the feeling of successful property investment? ___', 'fill_blank', 11, 19, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(149, 11, 'How can you ask the speaker a question? ___', 'fill_blank', 12, 20, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(150, 12, '<b>Questions 21-24</b><br>Answer the following questions USING <b>NO MORE THAN THREE WORDS OR A NUMBER</b><br>', 'static', 13, NULL, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(151, 12, 'How long is the radio show? ___', 'fill_blank', 14, 21, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(152, 12, 'What is the general focus of the programme?___', 'fill_blank', 15, 22, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(153, 12, 'Where is Professor Ripley from? ___', 'fill_blank', 16, 23, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(154, 12, 'According to Professor Ripley, what animals do people most associate with the African bush? ___', 'fill_blank', 17, 24, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(155, 12, '<b>Questions 25-28</b> <br> Complete the form using <b>NO MORE THAN TWO WORDS OR A NUMBER.</b><br>', 'static', 18, NULL, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(156, 12, '', 'static', 19, NULL, '{\"table_no\":2,\"row\":1,\"col\":1}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(157, 12, 'Threats', 'static', 20, NULL, '{\"table_no\":2,\"row\":1,\"col\":2}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(158, 12, 'Natural habitat', 'static', 21, NULL, '{\"table_no\":2,\"row\":1,\"col\":3}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(159, 12, 'Population', 'static', 22, NULL, '{\"table_no\":2,\"row\":1,\"col\":4}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(160, 12, 'African lions', 'static', 23, NULL, '{\"table_no\":2,\"row\":2,\"col\":1}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(161, 12, '', 'static', 24, NULL, '{\"table_no\":2,\"row\":2,\"col\":2}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(162, 12, 'bush', 'static', 25, NULL, '{\"table_no\":2,\"row\":2,\"col\":3}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(163, 12, 'Estimated to be ___', 'fill_blank', 26, 25, '{\"table_no\":2,\"row\":2,\"col\":4}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(164, 12, 'Tigers', 'static', 27, NULL, '{\"table_no\":2,\"row\":3,\"col\":1}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(165, 12, '___', 'fill_blank', 28, 26, '{\"table_no\":2,\"row\":3,\"col\":2}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(166, 12, 'forests and plains', 'static', 29, NULL, '{\"table_no\":2,\"row\":3,\"col\":3}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(167, 12, 'ewer than ___', 'fill_blank', 30, 27, '{\"table_no\":2,\"row\":3,\"col\":4}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(168, 12, 'Snow leopards', 'static', 31, NULL, '{\"table_no\":2,\"row\":4,\"col\":1}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(169, 12, 'Expansion of ___', 'fill_blank', 32, 28, '{\"table_no\":2,\"row\":4,\"col\":2}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(170, 12, 'high-altitude pastures', 'static', 33, NULL, '{\"table_no\":2,\"row\":4,\"col\":3}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(171, 12, '', 'static', 34, NULL, '{\"table_no\":2,\"row\":4,\"col\":4}', '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(172, 12, '<b>Questions 29-30</b><br>Circle the appropriate answer<br>', 'static', 35, NULL, NULL, '2025-09-10 12:07:35', '2025-09-10 12:07:35'),
(173, 12, 'Where is the WWF currently funding projects to help the snow leopard?', 'mcq', 36, 29, NULL, '2025-09-10 12:07:48', '2025-09-10 12:07:48'),
(174, 12, 'Listeners should telephone', 'mcq', 37, 30, NULL, '2025-09-10 12:07:48', '2025-09-10 12:07:48'),
(175, 13, '<b>Questions 31</b><br>Circle the appropriate answer<br>', 'static', 38, NULL, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(176, 13, 'The students are expecting', 'mcq', 36, 31, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(177, 13, '<b>Questions 32-36</b> <br> Complete the form using <b>NO MORE THAN TWO WORDS OR A NUMBER.</b><br>', 'static', 37, NULL, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(178, 13, '42 million adults ___', 'fill_blank', 38, 32, '{\"table_no\":3,\"row\":1,\"col\":1}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(179, 13, '50 million adults have the reading ability of a ___ year-old.', 'fill_blank', 39, 33, '{\"table_no\":3,\"row\":2,\"col\":1}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(180, 13, 'Increasing by around ___  and a quarter million per year. Illiteracy costs', 'fill_blank', 40, 34, '{\"table_no\":3,\"row\":3,\"col\":1}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(181, 13, '', 'static', 41, NULL, '{\"table_no\":3,\"row\":4,\"col\":1}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(182, 13, 'Unemployment', 'static', 42, NULL, '{\"table_no\":3,\"row\":4,\"col\":2}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(183, 13, 'Unrealised earnings', 'static', 43, NULL, '{\"table_no\":3,\"row\":4,\"col\":3}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(184, 13, 'Literacy programmes', 'static', 44, NULL, '{\"table_no\":3,\"row\":4,\"col\":4}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(185, 13, 'cost (in billions of US dollars)', 'static', 45, NULL, '{\"table_no\":3,\"row\":5,\"col\":1}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(186, 13, '$ ___', 'fill_blank', 46, 35, '{\"table_no\":3,\"row\":5,\"col\":2}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(187, 13, '237', 'static', 47, NULL, '{\"table_no\":3,\"row\":5,\"col\":3}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(188, 13, '$ ___', 'fill_blank', 48, 36, '{\"table_no\":3,\"row\":5,\"col\":4}', '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(189, 13, '<b>Questions 37</b><br>Circle the appropriate answer<br>', 'static', 49, NULL, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(190, 13, 'Illiteracy is increasing because many young learners are', 'mcq', 50, 37, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(191, 13, '<b>Questions 38-40</b><br>Answer the following questions USING <b>NO MORE THAN THREE WORDS OR A NUMBER</b><br>', 'static', 51, NULL, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(192, 13, 'English is made up of 26 letters, with 44 ___', 'fill_blank', 52, 38, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(193, 13, 'and 70 ways of ___ .', 'fill_blank', 53, 39, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(194, 13, 'Unsuccessful teaching practices persist, however, because reading is ___', 'fill_blank', 54, 40, NULL, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(195, 14, '<b>Questions 1-4 </b><br>The text has 7 paragraphs (A - G).<br>Which paragraph contains each of the following pieces of information?', 'static', 1, NULL, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(196, 14, 'Traffic accidents are sometimes caused by lack of sleep.', 'select', 2, 1, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(197, 14, 'The number of children included in the study', 'select', 3, 2, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(198, 14, 'How two schools are trying to deal with the problem', 'select', 4, 3, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(199, 14, 'How the effect of having less sleep was measured', 'select', 5, 4, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(200, 14, '<b>Questions 5-8 </b><br>Complete the sentences below <b> USING NO MORE THAN THREE WORDS </b> from the text for each gap.', 'static', 6, NULL, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(201, 14, 'Fallone is now studying the sleep patterns of children with ___', 'fill_blank', 7, 5, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(202, 14, 'The researchers used ___ that show movement to check that children went to bed at the right time.', 'fill_blank', 8, 6, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(203, 14, 'Students with less sleep had problems with memory, remembering new material, and ___', 'fill_blank', 9, 7, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(204, 14, 'Fallone admitted that it was ___ for children to get enough sleep.', 'fill_blank', 10, 8, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(205, 14, '<b>Questions 9-13 </b><br>Do the statements on the next page agree with the information given in Reading Passage 1?<br>In boxes 9 - 13 on your answer sheet, write<br>TRUE --- if the statement agrees with the information<br>FALSE --- if the statement contradicts the information.<br>NOT GIVEN --- If there is no information on this', 'static', 11, NULL, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(206, 14, 'The results of the study were first distributed to principals of American schools,', 'select', 12, 9, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(207, 14, 'Some of the children in the study had previously shown signs of sleeping problems..', 'select', 13, 10, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(208, 14, 'The study could influence how doctors deal with children’s health problems.', 'select', 14, 11, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(209, 14, 'Fallone does not let his daughter play soccer.', 'select', 15, 12, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(210, 14, 'Staying up later is acceptable if the child is doing homework', 'select', 16, 13, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(211, 15, '<b>Questions 14-17 </b><br>The text has 7 paragraphs (A - F).<br>Which paragraph does each of the following headings best fit?', 'static', 17, NULL, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(212, 15, 'Education for the masses', 'select', 18, 14, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(213, 15, 'Future possibilities', 'select', 19, 15, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(214, 15, 'Globalisation and competition', 'select', 20, 16, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(215, 15, 'Funding problem', 'select', 21, 17, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\"]}', '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(216, 15, '<b>Questions 18-22 </b><br>According to the text, <b> FIVE </b> of the following statements are true.', 'static', 22, NULL, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(217, 15, 'Write the corresponding letters in answer boxes 18 to 22 in any order.', 'checkbox', 23, 18, NULL, '2025-09-10 12:09:51', '2025-09-10 12:09:51'),
(218, 15, '<b>Questions 23-24 </b><br>Choose <b>TWO</b> letters', 'static', 24, NULL, NULL, '2025-09-10 12:10:27', '2025-09-10 12:10:27'),
(219, 15, 'What are <b>TWO</b> problems currently faced by universities, especially in Europe and globally?', 'checkbox', 25, 23, NULL, '2025-09-10 12:10:27', '2025-09-10 12:10:27'),
(220, 15, '<b>Questions 25-26 </b><br>Choose <b>TWO</b> letters', 'static', 26, NULL, NULL, '2025-09-10 12:10:48', '2025-09-10 12:10:48'),
(221, 15, 'What are TWO possible solutions proposed by reformists or conservatives?', 'checkbox', 27, 25, NULL, '2025-09-10 12:10:48', '2025-09-10 12:10:48'),
(222, 16, '<b>Questions 27-30 </b><br>For each question, only ONE of the choices is correct.<br>Write the corresponding letter in the appropriate box on your answer sheet.', 'static', 1, NULL, NULL, '2025-09-10 12:11:17', '2025-09-10 12:11:17'),
(223, 16, 'According to the diaries, in 1961, women rarely had free time on Sunday', 'mcq', 2, 27, NULL, '2025-09-10 12:11:17', '2025-09-10 12:11:17'),
(224, 16, 'People want to do more on Sundays because', 'mcq', 3, 28, NULL, '2025-09-10 12:11:17', '2025-09-10 12:11:17'),
(225, 16, 'Shopping habits have changed since 1961 in that', 'mcq', 4, 29, NULL, '2025-09-10 12:11:17', '2025-09-10 12:11:17'),
(226, 16, 'Compared with 1961,', 'mcq', 5, 30, NULL, '2025-09-10 12:11:17', '2025-09-10 12:11:17'),
(227, 16, '<b>Questions 31-35 </b><br>Complete the sentences below <b> USING NO MORE THAN THREE WORDS </b> from the text for each gap.', 'static', 6, NULL, NULL, '2025-09-10 12:12:23', '2025-09-10 12:12:23'),
(228, 16, 'Professor Gershuny discovered thousands of ___ at the BBC.', 'fill_blank', 7, 31, NULL, '2025-09-10 12:12:23', '2025-09-10 12:12:23'),
(229, 16, 'In 1961, people ate ___ tat 5 or 6 o’clock.', 'fill_blank', 8, 32, NULL, '2025-09-10 12:12:23', '2025-09-10 12:12:23'),
(230, 16, 'In 2001, people spent ___ 50 minutes on shopping on Sundays.', 'fill_blank', 9, 33, NULL, '2025-09-10 12:12:23', '2025-09-10 12:12:23'),
(231, 16, 'Shopping is something that is not as ___  as it was in 1961', 'fill_blank', 10, 34, NULL, '2025-09-10 12:12:23', '2025-09-10 12:12:23'),
(232, 16, 'In 1961, men would often go for a drink or be ___  before lunch.', 'fill_blank', 11, 35, NULL, '2025-09-10 12:12:23', '2025-09-10 12:12:23'),
(233, 16, '<b>Questions 36-40 </b><br>Do the following statements agree with the information given in Reading Passage 3?<br>In boxes 36-40 on your answer sheet, write<br>TRUE --- if the statement agrees with the information<br>FALSE --- if the statement contradicts the information.<br>NOT GIVEN --- If there is no information on this', 'static', 12, NULL, NULL, '2025-09-10 12:12:24', '2025-09-10 12:12:24'),
(234, 16, 'Mr. Atchison usually eats out.', 'select', 13, 36, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:12:24', '2025-09-10 12:12:24'),
(235, 16, 'Mrs. Hallows’ husband does no household chores on Sundays.', 'select', 14, 37, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:12:24', '2025-09-10 12:12:24'),
(236, 16, 'Mrs. Hallows thinks the shops are too busy on Sundays.', 'select', 15, 38, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:12:24', '2025-09-10 12:12:24'),
(237, 16, 'Mr. Jones is a widower.', 'select', 16, 39, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:12:24', '2025-09-10 12:12:24'),
(238, 16, 'Mr. Jones does household chores on Sundays.', 'select', 17, 40, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:12:24', '2025-09-10 12:12:24'),
(239, 19, '<b>Questions 1-7</b> <br>Complete the form below.<br>Write NO MORE THAN THREE WORDS AND/OR A NUMBER for each answer.', 'static', 1, NULL, NULL, '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(240, 19, '<b>Details of Order</b>', 'static', 2, NULL, NULL, '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(241, 19, 'Party Host', 'static', 3, NULL, '{\"table_no\":1,\"row\":1,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(242, 19, 'Example: Customer`s oldest daughter', 'static', 4, NULL, '{\"table_no\":1,\"row\":1,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(243, 19, 'Occasion', 'static', 5, NULL, '{\"table_no\":1,\"row\":2,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(244, 19, '18th birthday', 'static', 6, NULL, '{\"table_no\":1,\"row\":2,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(245, 19, 'Number of Guests Invited', 'static', 7, NULL, '{\"table_no\":1,\"row\":3,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(246, 19, ' ___', 'fill_blank', 8, 1, '{\"table_no\":1,\"row\":3,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(247, 19, 'Customer Budget', 'static', 9, NULL, '{\"table_no\":1,\"row\":4,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(248, 19, '___ £800', 'fill_blank', 10, 2, '{\"table_no\":1,\"row\":4,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(249, 19, 'Marquee Size', 'static', 11, NULL, '{\"table_no\":1,\"row\":5,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(250, 19, '___ X 9 metres', 'fill_blank', 12, 3, '{\"table_no\":1,\"row\":5,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(251, 19, '___ Cost', 'fill_blank', 13, 4, '{\"table_no\":1,\"row\":6,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(252, 19, '£450', 'static', 14, NULL, '{\"table_no\":1,\"row\":6,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(253, 19, '___', 'fill_blank', 15, 5, '{\"table_no\":1,\"row\":7,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(254, 19, '£150', 'static', 16, NULL, '{\"table_no\":1,\"row\":7,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(255, 19, 'Lighting Cost', 'static', 17, NULL, '{\"table_no\":1,\"row\":8,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(256, 19, 'approximately ₤ ___', 'fill_blank', 18, 6, '{\"table_no\":1,\"row\":8,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(257, 19, 'Number of Guests', 'static', 19, NULL, '{\"table_no\":1,\"row\":9,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(258, 19, 'seated 30 / standing 50', 'static', 20, NULL, '{\"table_no\":1,\"row\":9,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(259, 19, 'Furniture Cost', 'static', 21, NULL, '{\"table_no\":1,\"row\":10,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(260, 19, 'per table £4.00 / per chair £3.00', 'static', 22, NULL, '{\"table_no\":1,\"row\":10,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(261, 19, 'Dates Marquee Required', 'static', 23, NULL, '{\"table_no\":1,\"row\":11,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(262, 19, 'Set-up date ___ To be taken down on June 7th', 'fill_blank', 24, 7, '{\"table_no\":1,\"row\":11,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(263, 19, '<b>Questions 8-10</b> <br>Complete the form below.<br>Write NO MORE THAN THREE WORDS AND/OR A NUMBER for each answer.', 'static', 25, NULL, NULL, '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(264, 19, '<b>Customer Details</b>', 'static', 26, NULL, NULL, '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(265, 19, 'Name', 'static', 27, NULL, '{\"table_no\":2,\"row\":1,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(266, 19, '___', 'fill_blank', 28, 8, '{\"table_no\":2,\"row\":1,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(267, 19, 'Postcode', 'static', 29, NULL, '{\"table_no\":2,\"row\":2,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(268, 19, '___', 'fill_blank', 30, 9, '{\"table_no\":2,\"row\":2,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(269, 19, 'Contact Number', 'static', 31, NULL, '{\"table_no\":2,\"row\":3,\"col\":1}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(270, 19, '___', 'fill_blank', 32, 10, '{\"table_no\":2,\"row\":3,\"col\":2}', '2025-09-10 12:18:42', '2025-09-10 12:18:42'),
(271, 20, '<b>Questions 11-15</b><br>Label the map below of a typical medieval castle.<br>Write the correct letter, A-G, next to questions 11-15.', 'static', 33, NULL, NULL, '2025-09-10 12:19:53', '2025-09-10 12:19:53'),
(272, 20, '', 'static', 34, NULL, '{\"image\":\"images/mockTestImage/listening3-2.png\"}', '2025-09-10 12:19:53', '2025-09-10 12:19:53'),
(273, 20, 'Chapel', 'select', 35, 11, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:19:53', '2025-09-10 12:19:53'),
(274, 20, 'Great Hall', 'select', 36, 12, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:19:53', '2025-09-10 12:19:53'),
(275, 20, 'Great Chambers', 'select', 37, 13, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:19:53', '2025-09-10 12:19:53'),
(276, 20, 'Bakehouse', 'select', 38, 14, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:19:53', '2025-09-10 12:19:53'),
(277, 20, 'Stables', 'select', 39, 15, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:19:53', '2025-09-10 12:19:53'),
(278, 20, '<b>Questions 16-20</b><br>Choose the correct letter, A, B or C.', 'static', 40, NULL, NULL, '2025-09-10 12:19:53', '2025-09-10 12:19:53'),
(279, 20, 'Medieval castles', 'mcq', 41, 16, NULL, '2025-09-10 12:20:28', '2025-09-10 12:20:28'),
(280, 20, 'The early medieval Keep served as', 'mcq', 42, 17, NULL, '2025-09-10 12:20:28', '2025-09-10 12:20:28'),
(281, 20, 'In later medieval castles, the Keep', 'mcq', 43, 18, NULL, '2025-09-10 12:20:28', '2025-09-10 12:20:28'),
(282, 20, 'Underground dungeons were built in response to', 'mcq', 44, 19, NULL, '2025-09-10 12:20:28', '2025-09-10 12:20:28'),
(283, 20, 'The least effective line of defence was', 'mcq', 45, 20, NULL, '2025-09-10 12:20:28', '2025-09-10 12:20:28'),
(284, 21, '<b>Questions 21-25</b><br>Choose the correct letter, A, B or C.', 'static', 1, NULL, NULL, '2025-09-10 12:21:45', '2025-09-10 12:21:45'),
(285, 21, 'Julie and Dave thought the lecture', 'mcq', 2, 21, NULL, '2025-09-10 12:21:45', '2025-09-10 12:21:45'),
(286, 21, 'Hamlet was a play', 'mcq', 3, 22, NULL, '2025-09-10 12:21:45', '2025-09-10 12:21:45'),
(287, 21, 'In the time of James I', 'mcq', 4, 23, NULL, '2025-09-10 12:21:45', '2025-09-10 12:21:45'),
(288, 21, 'Shakespeare introduced ghosts into plays', 'mcq', 5, 24, NULL, '2025-09-10 12:21:45', '2025-09-10 12:21:45'),
(289, 21, 'Shakespeare`s audience would probably have', 'mcq', 6, 25, NULL, '2025-09-10 12:21:45', '2025-09-10 12:21:45'),
(290, 21, '<b>Questions 26-30</b><br>What does Julie say about the following subjects?<br>Write the correct letter, A, B or C, next to questions 26-30.<br><b>A.</b> cornful, dismissive<br><b>B.</b> open-minded<br><b>C.</b> believing', 'static', 7, NULL, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(291, 21, 'witches / astrology', 'select', 8, 26, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(292, 21, 'ghosts', 'select', 9, 27, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(293, 21, 'UFOs/aliens', 'select', 10, 28, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(294, 21, 'premonitions', 'select', 11, 29, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(295, 21, 'telepathy', 'select', 12, 30, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(296, 22, '<b>Questions 31-35</b><br>Complete the notes below.<br>Write NO MORE THAN THREE WORDS for each answer.', 'static', 1, NULL, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(297, 22, 'Darwin is credited with having ___ popular beliefs about Man`s creation.', 'fill_blank', 2, 31, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(298, 22, 'However, Alfred Russell Wallace simultaneously came up with an ___ to Darwin.', 'fill_blank', 3, 32, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(299, 22, 'Unfortunately for Wallace, Darwin seems to have been given the ___ for the theory of evolution.', 'fill_blank', 4, 33, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(300, 22, 'Darwin`s theory ___ , upsetting the religious authorities of his time.', 'fill_blank', 5, 34, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(301, 22, 'Today, it is often accepted that Man is a product ___ and not spontaneous creation.', 'fill_blank', 6, 35, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(302, 22, '<b>Questions 36-40</b><br>Complete the sentences below.<br>Write NO MORE THAN TWO WORDS for each answer.', 'static', 7, NULL, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(303, 22, 'The absence of a ___ might be seen by some to discredit Darwin`s theory.', 'fill_blank', 8, 36, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(304, 22, 'Finding an evolutionary bridge between Man and ape would provide undeniable ___ the theory of evolution.', 'fill_blank', 9, 37, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(305, 22, 'When ___ of the Piltdown Man was first unearthed in 1908, it seemed Darwin`s theory was no longer in doubt.', 'fill_blank', 10, 38, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(306, 22, 'In fact, the hoax proved ___ that scientists and the Press alike believed in its validity.', 'fill_blank', 11, 39, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(307, 22, 'After 40 years, Piltdown Man ___ as being no more than a fake.', 'fill_blank', 12, 40, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(308, 23, 'Questions 1-8<br>Do the following statements agree with the information given in the text?<br>For questions 1-8, write', 'static', 1, NULL, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(309, 23, '<b>TRUE.</b>	if the statement agrees with the information<br><b>FALSE.</b>	if the statement contradicts the information<br><b>NOT GIVEN.</b>	If there is no information on this', 'static', 2, NULL, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(310, 23, 'People usually daydream when they are walking around.', 'select', 3, 1, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(311, 23, 'Some people can daydream when they are asleep.', 'select', 4, 2, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(312, 23, 'Some daydreams help us to be more successful in our lives.', 'select', 5, 3, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(313, 23, 'Most lorry drivers daydream in their jobs to make them more interesting.', 'select', 6, 4, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(314, 23, 'Factory workers daydream more than lorry drivers.', 'select', 7, 5, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(315, 23, 'Daydreaming helps people to be creative.', 'select', 8, 6, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(316, 23, 'Old people daydream more than young people.', 'select', 9, 7, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(317, 23, 'Escapist people are generally very happy.', 'select', 10, 8, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(318, 23, '<b>Questions 9-10</b><br>Complete the sentences below.<br>Choose NO MORE THAN THREE WORDS from the text for each answer.', 'static', 11, NULL, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(319, 23, 'Writers, artists and other creative people use daydreaming to ___', 'fill_blank', 12, 9, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(320, 23, 'The areas of the brain used in daydreaming are also used for complicated ___', 'fill_blank', 13, 10, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(321, 23, '<b>Questions 11-13</b><br>Choose the correct letter, A, B, C or D.', 'static', 14, NULL, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(322, 23, 'Daydreams are', 'mcq', 15, 11, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(323, 23, 'In the nineteenth century, many people believed that daydreaming was', 'mcq', 16, 12, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(324, 23, 'People who daydream a lot', 'mcq', 17, 13, NULL, '2025-09-10 12:22:28', '2025-09-10 12:22:28'),
(325, 24, '<b>Questions 14-19</b><br>The text has seven paragraphs, A-G.<br>Which paragraph contains the following information?<br>Write the correct letter, A-G, next to questions 14-19.', 'static', 1, NULL, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15');
INSERT INTO `questions` (`id`, `question_group_id`, `text`, `type`, `order_no`, `question_no`, `meta_data`, `created_at`, `updated_at`) VALUES
(326, 24, 'a 19th-century opinion of what children should learn', 'select', 2, 14, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(327, 24, 'the most difficult sums', 'select', 3, 15, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(328, 24, 'the effect of pressure on doing something', 'select', 4, 16, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(329, 24, 'how children learn the times table', 'select', 5, 17, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(330, 24, 'a politician who got a sum wrong', 'select', 6, 18, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(331, 24, 'a history of the times table', 'select', 7, 19, '{\"options\":[\"A\",\"B\",\"C\",\"D\",\"E\",\"F\",\"G\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(332, 24, '<b>Questions 20-25</b><br>Do the following statements agree with the information given in the text?<br>For questions 20-25, write<br><br><b>TRUE.</b>	if the statement agrees with the information<br><b>FALSE.</b>	if the statement contradicts the information<br><b>NOT GIVEN.</b>	If there is no information on this', 'static', 8, NULL, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(333, 24, 'Pythagoras invented the times table in China.', 'select', 9, 20, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(334, 24, 'Stephen Byers and George Osborne were asked the same question.', 'select', 10, 21, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(335, 24, 'All children in the UK have to learn the multiplication table.', 'select', 11, 22, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(336, 24, 'George Osborne did not know the answer to 7 X 8.', 'select', 12, 23, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(337, 24, '7 X 8 is the hardest sum that children have to learn.', 'select', 13, 24, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(338, 24, 'Stephen Byers got the sum wrong because he choked.', 'select', 14, 25, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(339, 25, '<b>Questions 26-31</b><br>Choose the correct letter, A, B, C or D.', 'static', 1, NULL, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(340, 25, 'Which of the following statements is accurate?', 'mcq', 2, 26, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(341, 25, 'What does the writer mean by patient treatment being `legitimised abuse`?', 'mcq', 3, 27, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(342, 25, 'What brought about changes in the treatment of mentally ill patients?', 'mcq', 4, 28, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(343, 25, 'What was a feature of early care in the community schemes?', 'mcq', 5, 29, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(344, 25, 'What is true of care in the community schemes today?', 'mcq', 6, 30, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(345, 25, 'What can be said of the writer`s attitude towards care in the community?', 'mcq', 7, 31, NULL, '2025-09-10 12:23:15', '2025-09-10 12:23:15'),
(346, 25, '<b>Questions 32-36</b><br>Look at the following statements, 32-36, and the list of people, A-C.<br>Match each statement to the correct person.<br><br><b>A.</b>	Dr. Mayalla<br><b>B.</b>	Anita Brown<br><b>C.</b>	Bob Ratchett', 'static', 8, NULL, NULL, '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(347, 25, 'This person acknowledges certain inadequacies in the concept of care in the community, but recognises that attempts have been made to improve on existing schemes.', 'select', 9, 32, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(348, 25, 'This person whilst emphasising the benefits to the patient from care in the community schemes is critical of traditional care methods.', 'select', 10, 33, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(349, 25, 'This person’s views have been moderated by their professional contact with the mentally ill.', 'select', 11, 34, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(350, 25, 'This person places the welfare of others above that of the mentally ill.', 'select', 12, 35, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(351, 25, 'This person acknowledges that a mistrust of care in the community schemes may be unfounded.', 'select', 13, 36, '{\"options\":[\"A\",\"B\",\"C\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(352, 25, '<b>Questions 37-40</b><br>Do the following statements agree with the information given in the text?<br>For questions 37-40, write<br><b>TRUE.</b>	if the statement agrees with the information<br><b>FALSE.</b>	if the statement contradicts the information<br><b>NOT GIVEN.</b>	If there is no information on this', 'static', 14, NULL, NULL, '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(353, 25, 'There is a better understanding of the dynamics of mental illness today.', 'select', 15, 37, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(354, 25, 'Community care schemes do not provide adequate psychological support for patients.', 'select', 16, 38, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(355, 25, 'Dr. Mayalla believes that the scheme is less successful than in the past.', 'select', 17, 39, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52'),
(356, 25, 'The goal of community care schemes is to make patients less dependent on the system.', 'select', 18, 40, '{\"options\":[\"TRUE\",\"FALSE\",\"NOT GIVEN\"]}', '2025-09-10 12:23:52', '2025-09-10 12:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_text` varchar(255) DEFAULT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_answers`
--

INSERT INTO `question_answers` (`id`, `question_id`, `answer_text`, `option_id`, `created_at`, `updated_at`) VALUES
(1, 3, 'Keiko', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(2, 11, 'JO6337', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(3, 15, 'Advanced English studies', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(4, 17, '5 months', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(5, 19, 'About 4 months', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(6, 21, NULL, 2, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(7, 21, NULL, 4, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(8, 23, 'Seafood', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(9, 24, 'Tennis', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(10, 25, 'Take the train', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(11, 27, '90 days', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(12, 28, '30 pounds', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(13, 29, 'Confirm your nationality', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(14, 30, 'Page 13', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(15, 32, 'Currency form', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(16, 33, 'Tourist export form', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(17, 34, 'BM276', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(18, 36, 'International student card ', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(19, 37, '12', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(20, 39, 'Australian dollar', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(21, 41, 'Cashier', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(22, 42, '£50', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(23, 43, 'Big department stores', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(24, 44, 'Jeans', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(25, 54, '45 pounds', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(26, 56, '75 pounds', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(27, 58, '20 pounds', NULL, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(28, 60, NULL, 8, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(29, 60, NULL, 9, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(30, 60, NULL, 10, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(31, 62, NULL, 12, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(32, 63, NULL, 16, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(33, 64, NULL, 19, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(34, 65, NULL, 25, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(35, 66, NULL, 30, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(36, 67, NULL, 33, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(37, 68, NULL, 38, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(38, 69, NULL, 39, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(39, 70, NULL, 43, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(40, 71, NULL, 47, '2025-09-11 05:54:47', '2025-09-11 05:54:47'),
(41, 73, 'D', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(42, 74, 'C', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(43, 75, 'E', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(44, 76, 'A', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(45, 78, 'biggest', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(46, 79, 'an agent', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(47, 80, 'Tea', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(48, 81, 'long dominated', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(49, 83, 'NOT GIVEN', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(50, 84, 'TRUE', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(51, 85, 'FALSE', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(52, 86, 'FALSE', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(53, 87, 'FALSE', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(54, 89, 'B', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(55, 90, 'G', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(56, 91, 'F', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(57, 92, 'E', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(58, 94, NULL, 51, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(59, 94, NULL, 52, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(60, 94, NULL, 53, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(61, 94, NULL, 56, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(62, 94, NULL, 57, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(63, 96, NULL, 62, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(64, 97, NULL, 68, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(65, 98, NULL, 72, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(66, 99, NULL, 75, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(67, 101, NULL, 79, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(68, 102, NULL, 81, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(69, 103, NULL, 83, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(70, 104, NULL, 88, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(71, 106, 'cell phones', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(72, 107, 'useful light', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(73, 108, 'remote', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(74, 109, 'import duties', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(75, 110, 'dust', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(76, 112, 'TRUE', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(77, 113, 'NOT GIVEN', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(78, 114, 'FALSE', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(79, 115, 'TRUE', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(80, 116, 'TRUE', NULL, '2025-09-11 06:20:34', '2025-09-11 06:20:34'),
(81, 118, NULL, 90, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(82, 119, NULL, 93, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(83, 122, 'jackson', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(84, 128, '433398', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(85, 130, 'VN217', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(86, 132, '20', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(87, 134, 'Insurance', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(88, 135, 'Gold', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(89, 136, '54', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(90, 137, '433', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(91, 139, NULL, 98, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(92, 140, NULL, 100, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(93, 141, NULL, 104, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(94, 142, NULL, 109, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(95, 143, NULL, 112, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(96, 145, 'cheaper', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(97, 146, 'pension', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(98, 147, 'negative', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(99, 148, 'satisfying', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(100, 149, 'raise hand', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(101, 151, '1 hour', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(102, 152, 'conservation', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(103, 153, 'USA', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(104, 154, 'lions', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(105, 163, '50,000', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(106, 165, 'Hunting', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(107, 167, '6000', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(108, 169, 'Agriculture', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(109, 173, NULL, 116, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(110, 174, NULL, 121, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(111, 176, NULL, 125, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(112, 178, 'cannot read', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(113, 179, '10', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(114, 180, '2', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(115, 186, '6', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(116, 188, '10', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(117, 190, NULL, 126, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(118, 192, 'Sounds', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(119, 193, 'Spelling', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(120, 194, 'big business', NULL, '2025-09-16 06:39:14', '2025-09-16 06:39:14'),
(121, 196, 'C', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(122, 197, 'D', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(123, 198, 'F', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(124, 199, 'E', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(125, 201, 'ADHD', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(126, 202, 'wrist monitors', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(127, 203, 'paying attention', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(128, 204, 'tough', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(129, 206, 'FALSE', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(130, 207, 'FALSE', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(131, 208, 'TRUE', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(132, 209, 'NOT GIVEN', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(133, 210, 'NOT GIVEN', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(134, 212, 'B', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(135, 213, 'F', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(136, 214, 'D', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(137, 215, 'E', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(138, 217, NULL, 129, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(139, 217, NULL, 131, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(140, 217, NULL, 132, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(141, 217, NULL, 133, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(142, 217, NULL, 136, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(143, 219, NULL, 137, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(144, 219, NULL, 138, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(145, 221, NULL, 142, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(146, 221, NULL, 144, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(147, 223, NULL, 147, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(148, 224, NULL, 152, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(149, 225, NULL, 155, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(150, 226, NULL, 156, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(151, 228, 'diaries', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(152, 229, 'high tea', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(153, 230, 'an average of', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(154, 231, 'gender segregated', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(155, 232, 'playing football', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(156, 234, 'TRUE', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(157, 235, 'FALSE', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(158, 236, 'TRUE', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(159, 237, 'TRUE', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(160, 238, 'NOT GIVEN', NULL, '2025-09-16 06:39:27', '2025-09-16 06:39:27'),
(161, 246, '80', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(162, 248, 'maximum limit', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(163, 250, '4.5', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(164, 251, 'Hire and installation', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(165, 253, 'carpeting', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(166, 256, '55', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(167, 262, 'June 5th', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(168, 266, 'Jenny Lakewell', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(169, 268, 'CV6TL3', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(170, 270, '07944325883', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(171, 273, 'G', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(172, 274, 'D', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(173, 275, 'C', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(174, 276, 'A', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(175, 277, 'F', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(176, 279, NULL, 160, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(177, 280, NULL, 163, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(178, 281, NULL, 167, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(179, 282, NULL, 168, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(180, 283, NULL, 173, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(181, 285, NULL, 175, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(182, 286, NULL, 179, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(183, 287, NULL, 182, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(184, 288, NULL, 184, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(185, 289, NULL, 186, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(186, 291, 'A', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(187, 292, 'B', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(188, 293, 'C', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(189, 294, 'B', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(190, 295, 'C', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(191, 297, 'revolutionised', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(192, 298, 'Identical theory', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(193, 299, 'sole credit', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(194, 300, 'proved extremely controversial', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(195, 301, 'of evolution', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(196, 303, 'missing link', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(197, 304, 'proof of', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(198, 305, 'the skull', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(199, 306, 'so convincing', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(200, 307, 'was declared', NULL, '2025-09-16 07:19:06', '2025-09-16 07:19:06'),
(201, 310, 'FALSE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(202, 311, 'FALSE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(203, 312, 'TRUE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(204, 313, 'TRUE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(205, 314, 'NOT GIVEN', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(206, 315, 'TRUE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(207, 316, 'NOT GIVEN', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(208, 317, 'FALSE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(209, 319, 'develop new ideas', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(210, 320, 'problem-solving', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(211, 322, NULL, 191, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(212, 323, NULL, 194, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(213, 324, NULL, 200, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(214, 326, 'C', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(215, 327, 'F', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(216, 328, 'G', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(217, 329, 'A', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(218, 330, 'D', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(219, 331, 'B', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(220, 333, 'FALSE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(221, 334, 'TRUE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(222, 335, 'TRUE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(223, 336, 'FALSE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(224, 337, 'FALSE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(225, 338, 'NOT GIVEN', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(226, 340, NULL, 204, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(227, 341, NULL, 206, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(228, 342, NULL, 210, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(229, 343, NULL, 213, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(230, 344, NULL, 218, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(231, 345, NULL, 222, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(232, 347, 'A', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(233, 348, 'C', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(234, 349, 'C', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(235, 350, 'B', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(236, 351, 'B', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(237, 353, 'NOT GIVEN', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(238, 354, 'FALSE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(239, 355, 'FALSE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22'),
(240, 356, 'TRUE', NULL, '2025-09-16 07:19:22', '2025-09-16 07:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `question_groups`
--

CREATE TABLE `question_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `media_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_groups`
--

INSERT INTO `question_groups` (`id`, `section_id`, `title`, `description`, `media_file`, `created_at`, `updated_at`) VALUES
(1, 1, 'Listening Part 1', 'Listening 1', 'assets\\audios\\listening1.mp3', '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(2, 1, 'Listening Part 2', 'Listening', NULL, '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(3, 1, 'Listening Part 3', 'Listening', NULL, '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(4, 1, 'Listening Part 4', 'Listening', NULL, '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(5, 2, 'Reading Part 1', 'Reading 1', NULL, '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(6, 2, 'Reading Part 2', 'Reading', NULL, '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(7, 2, 'Reading Part 3', 'Reading', NULL, '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(8, 3, 'Writing Part 1', 'Writing 1', NULL, '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(9, 3, 'Writing Part 2', 'Writing', NULL, '2025-09-09 06:49:36', '2025-09-09 06:49:36'),
(10, 4, 'listening part 1', 'listening 2', 'assets\\audios\\listening2.mp3', '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(11, 4, 'listening part 2', 'listening part 2', NULL, '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(12, 4, 'listening part 3', 'listening part 3', NULL, '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(13, 4, 'listening part 4', 'listening part 4', NULL, '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(14, 5, 'reading part 1', 'reading 2', NULL, '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(15, 5, 'reading part 2', 'reading part 2', NULL, '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(16, 5, 'reading part 3', 'reading part 3', NULL, '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(17, 6, 'writing part 1', 'writing 2', NULL, '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(18, 6, 'writing part 2', 'writing part 2', NULL, '2025-09-10 11:41:46', '2025-09-10 11:41:46'),
(19, 7, 'listening part 1', 'listening 3', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00'),
(20, 7, 'listening part 2', 'listening part 2', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00'),
(21, 7, 'listening part 3', 'listening part 3', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00'),
(22, 7, 'listening part 4', 'listening part 4', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00'),
(23, 8, 'reading part 1', 'reading 3', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00'),
(24, 8, 'reading part 2', 'reading part 2', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00'),
(25, 8, 'reading part 1', 'reading part 3', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00'),
(26, 9, 'writing part 1', 'writing part 3', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00'),
(27, 9, 'writing part 2', 'writing part 2', NULL, '2025-09-10 12:16:00', '2025-09-10 12:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `row_index` int(11) DEFAULT NULL,
  `col_index` int(11) DEFAULT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `text`, `row_index`, `col_index`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 21, 'A. A big family with many young children', NULL, NULL, 0, '2025-09-10 05:59:06', '2025-09-10 05:59:06'),
(2, 21, 'B. A family without smoker or drinkers', NULL, NULL, 0, '2025-09-10 05:59:06', '2025-09-10 05:59:06'),
(3, 21, 'C. A family without any pets', NULL, NULL, 0, '2025-09-10 05:59:06', '2025-09-10 05:59:06'),
(4, 21, 'D. A family with many animals or pets', NULL, NULL, 0, '2025-09-10 05:59:06', '2025-09-10 05:59:06'),
(5, 60, 'A. Books', NULL, NULL, 0, '2025-09-10 07:08:59', '2025-09-10 07:08:59'),
(6, 60, 'B. Study materials', NULL, NULL, 0, '2025-09-10 07:08:59', '2025-09-10 07:08:59'),
(7, 60, 'C. Foods', NULL, NULL, 0, '2025-09-10 07:08:59', '2025-09-10 07:08:59'),
(8, 60, 'D. Trousers', NULL, NULL, 0, '2025-09-10 07:08:59', '2025-09-10 07:08:59'),
(9, 60, 'E. Shoes', NULL, NULL, 0, '2025-09-10 07:08:59', '2025-09-10 07:08:59'),
(10, 60, 'F. Sportswear', NULL, NULL, 0, '2025-09-10 07:08:59', '2025-09-10 07:08:59'),
(11, 62, 'A. Personal consultation sessions.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(12, 62, 'B. Extra materials, such as a booklist.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(13, 62, 'C. Mid-term examination.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(14, 62, 'D. Free glasses.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(15, 63, 'A. reduce your stress.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(16, 63, 'B. plan for every hour of the week.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(17, 63, 'C. own a good watch', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(18, 63, 'D. set goals and try to achieve these goals', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(19, 64, 'A. set goals and work in a systematic way.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(20, 64, 'B. work faster', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(21, 64, 'C. set an overview of your assignment', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(22, 64, 'D. make a list, plan for everything and try to stick to this plan.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(23, 65, 'A. team projects', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(24, 65, 'B. final term examinations', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(25, 65, 'C. essays.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(26, 65, 'D. time management courses.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(27, 66, 'A. library books go missing', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(28, 66, 'B. students get angry for no reason.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(29, 66, 'C. lower class attendance rates.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(30, 66, 'D. trouble at the library.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(31, 67, 'A. Making a very detailed plan of their daily activities.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(32, 67, 'B. Not being so stressed just because there is an assignment.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(33, 67, 'C. A regular one-hour session in their personal timetables.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(34, 67, 'D. Wearing comfortable shoes.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(35, 68, 'A. one weekly planner, one daily planner and one hour planner.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(36, 68, 'B. one yearly planner, one weekly planner and one daily planner.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(37, 68, 'C. one term planner, one monthly planner and one weekly planner.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(38, 68, 'D. one term planner, one weekly and one daily planner.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(39, 69, 'A. one week.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(40, 69, 'B. half a week.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(41, 69, 'C. one month.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(42, 69, 'D. one term..', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(43, 70, 'A. the detailed planning.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(44, 70, 'B. how to plan all available time.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(45, 70, 'C. TV schedules.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(46, 70, 'D. an overview of everything you need to do for several days..', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(47, 71, 'A. having more time to spend on relaxation and other activities.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(48, 71, 'B. improving your performance in the final term assignment.C. ', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(49, 71, 'C. helping you write better essays.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(50, 71, 'D. improving your memory.', NULL, NULL, 0, '2025-09-10 10:39:05', '2025-09-10 10:39:05'),
(51, 94, 'McCarthy claims people can become addicted to using cars.', NULL, NULL, 0, '2025-09-10 11:05:13', '2025-09-10 11:05:13'),
(52, 94, 'The cost of using a car rose by over ten per cent last year.', NULL, NULL, 0, '2025-09-10 11:05:13', '2025-09-10 11:05:13'),
(53, 94, 'Most British people borrow money to help buy cars.', NULL, NULL, 0, '2025-09-10 11:05:13', '2025-09-10 11:05:13'),
(54, 94, 'Many people need cars to drive in London occasionally.', NULL, NULL, 0, '2025-09-10 11:05:13', '2025-09-10 11:05:13'),
(55, 94, 'Streetcar operates in over 20 cities in Britain.', NULL, NULL, 0, '2025-09-10 11:05:13', '2025-09-10 11:05:13'),
(56, 94, 'Streetcar’s cars must be left at specific locations.', NULL, NULL, 0, '2025-09-10 11:05:13', '2025-09-10 11:05:13'),
(57, 94, 'Car sharing is becoming more popular with people who live and work near each other.', NULL, NULL, 0, '2025-09-10 11:05:13', '2025-09-10 11:05:13'),
(58, 94, 'The government wants to encourage people to go to work on foot or by bicycle.', NULL, NULL, 0, '2025-09-10 11:05:13', '2025-09-10 11:05:13'),
(59, 96, 'A. not to follow protestors’ suggestions..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(60, 96, 'B. to become more democratic.', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(61, 96, 'C. to go ahead with charging drivers to use roads..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(62, 96, 'D. Both A and C.', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(63, 96, 'E. Both B and C.', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(64, 97, 'A. relatively cheap in Britain..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(65, 97, 'B. relatively expensive to operate in Britain..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(66, 97, 'C. sold second-hand in Britain..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(67, 97, 'D. Both A and C.', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(68, 97, 'E. Both A and B.', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(69, 98, 'A. make up about 20% of the cost of running a car..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(70, 98, 'B. are related to the amount drivers pay for their cars..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(71, 98, 'C. depend on how far you drive..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(72, 98, 'D. Both A and C.', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(73, 98, 'E. Both B and C.', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(74, 99, 'A. will save money for British motorists, except in London..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(75, 99, 'B. and renting a car part of the time can save money..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(76, 99, 'C. costs Londoners about £1,700 a year..', NULL, NULL, 0, '2025-09-10 11:14:40', '2025-09-10 11:14:40'),
(77, 101, 'A. provide light for 100,000 Indian villages.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(78, 101, 'B. are very expensive to install.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(79, 101, 'C. are powered by the sun.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(80, 102, 'A. kerosene as a cooking fuel.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(81, 102, 'B. biomass as a cooking fuel.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(82, 102, 'C. solar power as a cooking fuel.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(83, 103, 'A. in rural areas.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(84, 103, 'B. in urban areas.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(85, 103, 'C. in all areas.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(86, 104, 'A. are not as reliable as electricity from the national power grid.require skill to use.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(87, 104, 'B. Conly provide four hours of light a day.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(88, 104, 'C. Conly provide four hours of light a day.', NULL, NULL, 0, '2025-09-10 11:25:33', '2025-09-10 11:25:33'),
(89, 118, '(A) thinks Europe is a good destination', NULL, NULL, 0, '2025-09-10 12:04:59', '2025-09-10 12:04:59'),
(90, 118, '(B) can personally recommend Vancouver', NULL, NULL, 0, '2025-09-10 12:04:59', '2025-09-10 12:04:59'),
(91, 118, '(C) does not think America is a good choice.', NULL, NULL, 0, '2025-09-10 12:04:59', '2025-09-10 12:04:59'),
(92, 119, '(A) is going to Europe next year', NULL, NULL, 0, '2025-09-10 12:04:59', '2025-09-10 12:04:59'),
(93, 119, '(B) knows people living in Canada', NULL, NULL, 0, '2025-09-10 12:04:59', '2025-09-10 12:04:59'),
(94, 119, '(C) wants to go to the warmest place', NULL, NULL, 0, '2025-09-10 12:04:59', '2025-09-10 12:04:59'),
(95, 139, 'A. Property agents', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(96, 139, 'B. People selling houses', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(97, 139, 'C. People in the countryside', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(98, 139, 'D. People buying second homes', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(99, 140, 'A. is very easy to find', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(100, 140, 'B. is becoming more difficult to find', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(101, 140, 'C. is an investment opportunity', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(102, 140, 'D. is often the only option', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(103, 141, 'A. most people will own their own home at some time', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(104, 141, 'B. there is a psychological factor involved in owning your own home', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(105, 141, 'C. fewer people are interested in owning a house', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(106, 141, 'D. most young people need a deposit before they can buy a house.', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(107, 142, 'A. people want to get away from the city', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(108, 142, 'B. some parts of the city are becoming overcrowded', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(109, 142, 'C. the concept of the home office means that some people don\"t need to go into work', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(110, 142, 'D. public transport is beginning to serve outlying areas.', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(111, 143, 'A. Commercial', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(112, 143, 'B. Investment', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(113, 143, 'C. First homes', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(114, 143, 'D. Rural', NULL, NULL, 0, '2025-09-10 12:07:15', '2025-09-10 12:07:15'),
(115, 173, 'A. Nepal, Pakistan and Bhutan', NULL, NULL, 0, '2025-09-10 12:08:08', '2025-09-10 12:08:08'),
(116, 173, 'B. Nepal and Pakistan', NULL, NULL, 0, '2025-09-10 12:08:08', '2025-09-10 12:08:08'),
(117, 173, 'C. Bhutan and Nepal', NULL, NULL, 0, '2025-09-10 12:08:08', '2025-09-10 12:08:08'),
(118, 173, 'D. Pakistan and Bhutan', NULL, NULL, 0, '2025-09-10 12:08:08', '2025-09-10 12:08:08'),
(119, 174, 'A. immediately if they want to put forward an opinion', NULL, NULL, 0, '2025-09-10 12:08:08', '2025-09-10 12:08:08'),
(120, 174, 'B. during the commercial break', NULL, NULL, 0, '2025-09-10 12:08:08', '2025-09-10 12:08:08'),
(121, 174, 'C. in 10 minutes if they have anything they want to ask the professor', NULL, NULL, 0, '2025-09-10 12:08:08', '2025-09-10 12:08:08'),
(122, 174, 'D. if they have any information regarding pumas or jaguars.', NULL, NULL, 0, '2025-09-10 12:08:08', '2025-09-10 12:08:08'),
(123, 176, 'A. to hear a lecture on overpopulation', NULL, NULL, 0, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(124, 176, 'B. Mr Mackenzie', NULL, NULL, 0, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(125, 176, 'C. a guest speaker', NULL, NULL, 0, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(126, 190, 'A. not being taught how to break words into sounds', NULL, NULL, 0, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(127, 190, 'B. given word lists which are too long', NULL, NULL, 0, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(128, 190, 'C. not challenged enough in the classroom.', NULL, NULL, 0, '2025-09-10 12:09:04', '2025-09-10 12:09:04'),
(129, 217, 'A. Some universities are joining with each other.', NULL, NULL, 0, '2025-09-10 12:10:14', '2025-09-10 12:10:14'),
(130, 217, 'B. There are not enough graduates in developed countries.', NULL, NULL, 0, '2025-09-10 12:10:14', '2025-09-10 12:10:14'),
(131, 217, 'C. Many top companies now spend one-third of their budget on research and marketing', NULL, NULL, 0, '2025-09-10 12:10:14', '2025-09-10 12:10:14'),
(132, 217, 'D. The number of people from developed countries studying outside their home countries has doubled in the last two decades', NULL, NULL, 0, '2025-09-10 12:10:14', '2025-09-10 12:10:14'),
(133, 217, 'E. Scandinavian governments provide enough money for their universities.', NULL, NULL, 0, '2025-09-10 12:10:14', '2025-09-10 12:10:14'),
(134, 217, 'F. The largest university in the world is in Turkey.', NULL, NULL, 0, '2025-09-10 12:10:14', '2025-09-10 12:10:14'),
(135, 217, 'G. Italian students must have a five-minute interview with a professor before being accepted into university.', NULL, NULL, 0, '2025-09-10 12:10:14', '2025-09-10 12:10:14'),
(136, 217, 'H. Peter Drucker foresees the end of university campuses.', NULL, NULL, 0, '2025-09-10 12:10:14', '2025-09-10 12:10:14'),
(137, 219, 'A. pressure to charge students higher tuition fees', NULL, NULL, 0, '2025-09-10 12:10:36', '2025-09-10 12:10:36'),
(138, 219, 'B. conflicts between university administrators and government funders', NULL, NULL, 0, '2025-09-10 12:10:36', '2025-09-10 12:10:36'),
(139, 219, 'C. decrease in student enrollment worldwide', NULL, NULL, 0, '2025-09-10 12:10:36', '2025-09-10 12:10:36'),
(140, 219, 'D. outdated library and lab resources', NULL, NULL, 0, '2025-09-10 12:10:36', '2025-09-10 12:10:36'),
(141, 219, 'E. shortage of qualified academic staff', NULL, NULL, 0, '2025-09-10 12:10:36', '2025-09-10 12:10:36'),
(142, 221, 'A. Expanding the use of internet-based tuition and private universities.', NULL, NULL, 0, '2025-09-10 12:11:00', '2025-09-10 12:11:00'),
(143, 221, 'B. Replacing university professors with business professionals.', NULL, NULL, 0, '2025-09-10 12:11:00', '2025-09-10 12:11:00'),
(144, 221, 'C. Returning to traditional academic values and subjects.', NULL, NULL, 0, '2025-09-10 12:11:00', '2025-09-10 12:11:00'),
(145, 221, 'D. Focusing all education on job-specific training only', NULL, NULL, 0, '2025-09-10 12:11:00', '2025-09-10 12:11:00'),
(146, 221, 'E. Closing traditional campuses to save costs.', NULL, NULL, 0, '2025-09-10 12:11:00', '2025-09-10 12:11:00'),
(147, 223, 'A. mornings', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(148, 223, 'B. afternoons', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(149, 223, 'C. evenings', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(150, 224, 'A. more shops are open.', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(151, 224, 'B. it is a good day to graze', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(152, 224, 'C. they are tired on Saturdays', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(153, 225, 'A. people shop less at weekends.', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(154, 225, 'B. men shop more than women', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(155, 225, 'C. men do as much shopping as women.', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(156, 226, 'A. women do far less housework on Sundays.', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(157, 226, 'B. men do far less housework on Sundays.', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(158, 226, 'C. men and women do far less housework on Sundays', NULL, NULL, 0, '2025-09-10 12:12:10', '2025-09-10 12:12:10'),
(159, 279, 'A. shared a common design.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(160, 279, 'B. were each unique.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(161, 279, 'C. had the same methods of fortification in common.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(162, 280, 'A. a prison and fortified tower.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(163, 280, 'B. a fortified tower and living area.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(164, 280, 'C. a fortified entrance to the inner castle area.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(165, 281, 'A. evolved into a set of different buildings.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(166, 281, 'B. was used purely for accommodation.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(167, 281, 'C. played a less significant role in the castle`s domestic life.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(168, 282, 'A. a shift in the medieval belief system.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(169, 282, 'B. the Keep being no longer used for prisoners.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(170, 282, 'C. a call for harsher treatment of prisoners.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(171, 283, 'A. the portcullis.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(172, 283, 'B. the drawbridge.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(173, 283, 'C. the barbican.', NULL, NULL, 0, '2025-09-10 12:21:29', '2025-09-10 12:21:29'),
(174, 285, 'A. gave a new insight into Shakespeare`s style.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(175, 285, 'B. offered a thought-provoking view on Shakespeare and his work.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(176, 285, 'C. explained Shakespeare`s belief in ghosts.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(177, 286, 'A. which reflected popular belief in the supernatural.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(178, 286, 'B. that recorded historical events.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(179, 286, 'C. seemingly in conflict with accepted beliefs.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(180, 287, 'A. a belief in ghosts was not tolerated.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(181, 287, 'B. more people believed in ghosts.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(182, 287, 'C. certain religious beliefs were not acceptable.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(183, 288, 'A. because he believed in a spirit world.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(184, 288, 'B. as a theatrical device.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(185, 288, 'C. to provoke religious debate.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(186, 289, 'A. secretly approved of a supernatural content in plays.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(187, 289, 'B. shown approval for plays with a supernatural content.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(188, 289, 'C. disapproved of the inclusion of ghosts in plays.', NULL, NULL, 0, '2025-09-10 12:22:05', '2025-09-10 12:22:05'),
(189, 322, 'A. dreams that we have when we fall asleep in daytime.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(190, 322, 'B. about things that happened that make us sad.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(191, 322, 'C. often about things that we would like to happen.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(192, 322, 'D. activities that only a few people are able to do.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(193, 323, 'A. helpful in factory work.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(194, 323, 'B. a way of avoiding work.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(195, 323, 'C. something that few people did.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(196, 323, 'D. a healthy activity.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(197, 324, 'A. usually have creative jobs.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(198, 324, 'B. are much happier than other people.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(199, 324, 'C. are less intelligent than other people.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(200, 324, 'D. do not have as many friends as other people.', NULL, NULL, 0, '2025-09-10 12:22:56', '2025-09-10 12:22:56'),
(201, 340, 'A. In the 20th century, illegal surgical procedures were carried out on the mentally ill.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(202, 340, 'B. The Victorian era saw an increase in mental illness amongst married couples.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(203, 340, 'C. Mental institutions of the past were better-equipped for dealing with the mentally ill.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(204, 340, 'D. In the past, others often benefitted when a patient was sent to a mental asylum.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(205, 341, 'A. There were proper guidelines for the punishment of mentally ill patients.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(206, 341, 'B. Maltreatment of mentally ill patients was not illegal and so was tolerated.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(207, 341, 'C. Only those who were legally entitled to do so could punish mentally ill patients.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(208, 341, 'D. Physical abuse of mentally ill patients was a legal requirement of mental institutions.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(209, 342, 'A. A radio documentary exposed patient maltreatment.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(210, 342, 'B. People rebelled against the consistent abuse of mentally ill patients.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(211, 342, 'C. Previous treatments of mentally ill patients were proved to be ineffective.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(212, 342, 'D. The maltreatment of mentally ill patients could never be revealed.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(213, 343, 'A. Patient support was the responsibility more of relatives than professionals.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(214, 343, 'B. Advanced professional help was available to patients.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(215, 343, 'C. All mentally ill patients could benefit from the scheme.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(216, 343, 'D. Patients were allowed to enjoy full independence.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(217, 344, 'A. They permit greater patient autonomy.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(218, 344, 'B. More professional services are available to patients.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(219, 344, 'C. Family support networks have become unnecessary.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(220, 344, 'D. All patients can now become part of these schemes.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(221, 345, 'A. He believes that the scheme has proved to be a failure.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(222, 345, 'B. He believes that it can only work under certain circumstances.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(223, 345, 'C. He believes that it will never work as mentally ill patients will always be disadvantaged.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36'),
(224, 345, 'D. He believes it has failed due to patient neglect by professional helpers.', NULL, NULL, 0, '2025-09-10 12:23:36', '2025-09-10 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `reading_passages`
--

CREATE TABLE `reading_passages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_group_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reading_passages`
--

INSERT INTO `reading_passages` (`id`, `question_group_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 5, 'Reading Passage 1', 'You should spend about 20 minutes on <b>Questions 1 -13</b>, which are based on Reading Passage 1 below.', '2025-09-15 07:10:19', '2025-09-15 07:10:19'),
(2, 5, NULL, '<img src=\"/images/mockTestImage/reading1-1.jpg\" alt=\"Reading Passage\">', '2025-09-15 07:40:37', '2025-09-15 07:40:37'),
(3, 5, 'Money Transfers by Mobile', 'A. The ping of a text message has never sounded so sweet. In what is being touted as a world first, Kenyas biggest mobile operator is allowing subscribers to send cash to other phone users by SMS. Known as M-Pesa, or mobile money, the service is expected to revolutionise banking in a country where more than 80% of people are excluded from the formal financial sector. Apart from transferring cash - a service much in demand among urban Kenyans supporting relatives in rural areas - customers of the Safaricom network will be able to keep up to 50,000 shillings (£370) in a “virtual account” on their handsets.<br><br>B. Developed by Vodafone, which holds a 35% share in Safaricom, M-Pesa was formally launched in Kenya two weeks ago. More than 10,000 people have signed up for the service, with around 8 million shillings transferred so far, mostly in tiny denominations. Safaricoms executives are confident that growth will be strong in Kenya, and later across Africa. “We are effectively giving people ATM cards without them ever having to open a real bank account,” said Michael Joseph, chief executive of Safaricom, who called the money transfer concept the “next big thing” in mobile telephony.<br><br>C. M-Pesa`s is simple. There is no need for a new handset or SIM card. To send money, you hand over the cash to a registered agent - typically a retailer - who credits your virtual account. You then send between 100 shillings (74p) and 35,000 shillings (£259) via text message to the desired recipient - even someone on a different mobile network - who cashes it at an agent by entering a secret code and showing ID. A commission of up to 170 shillings (£1.25) is paid by the recipient but it compares favourably with fees levied by the major banks, whose services are too expensive for most of the population.<br><br>D. Mobile phone growth in Kenya, as in most of Africa, has been remarkable, even among the rural poor. In June 1999, Kenya had 15,000 mobile subscribers. Today, it has nearly 8 million out of a population of 35 million, and the two operators networks are as extensive as the access to banks is limited. Safaricom says it is not so much competing with financial services companies as filling a void. In time, M-Pesa will allow people to borrow and repay money, and make purchases. Companies will be able to pay salaries directly into workers phones - something that has already attracted the interest of larger employers, such as the tea companies, whose workers often have to be paid in cash as they do not have bank accounts. There are concerns about security, but Safaricom insists that even if someones phone is stolen, the PIN system prevents unauthorised withdrawals. Mr. Joseph said the only danger is sending cash to the wrong mobile number and the recipient redeeming it straight away.<br><br>E. The project is being watched closely by mobile operators around the world as a way of targeting the multibillion pound international cash transfer industry long dominated by companies such as Western Union and Moneygram. Remittances sent from nearly 200 million migrant workers to developing countries totalled £102 billion last year, according to the World Bank. The GSM Association, which represents more than 700 mobile operators worldwide, believes this could quadruple by 2012 if transfers by SMS become the norm. Vodafone has entered a partnership with Citigroup that will soon allow Kenyans in the UK to send money home via text message. The charge for sending £50 is expected to be about £3, less than a third of what some traditional services charge.', '2025-09-15 07:40:37', '2025-09-15 07:40:37'),
(4, 6, 'Reading Passage 2', 'You should spend about 20 minutes on Questions 14 - 26, which are based on Reading Passage 2 below.', '2025-09-15 07:40:37', '2025-09-15 07:40:37'),
(5, 6, NULL, '<img src=\"/images/mockTestImage/reading1-2.jpg\" alt=\"Reading Passage\">', '2025-09-15 07:40:37', '2025-09-15 07:40:37'),
(6, 6, 'Park the Car Permanently', 'A. More than a million people are likely to be disappointed by their experience of the Government`s attempts to improve the democratic process. They may have signed an online petition against road pricing, but ministers are determined to push ahead with plans to make it more expensive to drive. The Government is convinced that this is the only way to reduce congestion and the environmental damage caused by motoring.<br><br>B. Why wait until you are forced off the road by costly charges? You may enjoy the convenience of your car, but the truth is that for huge numbers of people, owning a car makes little financial sense. You`d be far better off giving it up and relying on other forms of transport. \"I`m 47 and I`ve never owned a car, despite having a job that requires me to travel all over the South-East to visit clients,\" says Donnachadh McCarthy, an environmental expert who specialises in advising people how to be greener. \"A car is a huge financial commitment, as well as being a psychological addiction. Not owning a vehicle is far more practical than most people realise.\"<br><br>C. It may seem as if cars have never been cheaper. After all, it is now possible to buy a brand new car for less than £4,800 - the Perodua Kelisa, if you`re interested. There are plenty of decent vehicles you can buy straight from the showroom for between £5,000 and £7,000. Of course, if you buy second-hand, the prices will be even lower. However, the falling purchase price of cars masks the fact that it has never been more expensive to own and run a vehicle. The estimate is that the cost of running a car rose by more than ten per cent last year alone. The annual cost of running your own vehicle is put at an average of £5,539, or £107 a week. While drivers who do less or more than the average mileage each year will spend correspondingly less or more, many of the costs of car ownership are fixed - and therefore unavoidable.<br><br>D. Depreciation - the fact that your vehicle loses a large chunk of its resale value each year - is one problem, accounting for £2,420 a year. The cost of finance packages, which most people have to resort to to pay for at least part of the price of a new car, has also been rising - to an average of £1,040 a year. Then there`s insurance, maintenance, tax, and breakdown insurance, all of which will cost you broadly the same amount, however many miles you do. Only fuel costs are truly variable. While petrol prices are the most visible indicator of the cost of running a car, for the typical driver they account for less than one fifth of the real costs each year. In other words, leaving aside all the practical and psychological barriers to giving up your car, in financial terms, doing so makes sense for many people.<br><br>E. Take the cost of public transport, for example. In London, the most expensive city in the UK, the most expensive annual travel card, allowing travel in any zone at any time, costs just over £1,700. You could give up your car and still have thousands of pounds to spare to spend on occasional car hire. In fact, assuming that you have the most expensive travel card in London, you could hire a cheap car from a company, such as easyCar for about 30 weeks a year, and still be better off overall than if you own your own vehicle. Not that car hire is necessarily the most cost-effective option for people who are prepared to do without a car but may still need to drive occasionally.<br><br>F. Streetcar, one of several \"car clubs\" with growing numbers of members, reckons that using its vehicles twice a week, every week, for a year, would cost you just £700. Streetcar`s model works very similarly to those of its main rivals, Citycarclub and Whizzgo. These three companies, which now operate in 20 of Britain`s towns and cities, charge their members a refundable deposit - £150 at Streetcar - and then provide them with an electronic smart card. This enables members to get into the vehicles, which are left parked in set locations, and the keys are then found in the glove compartment. Members pay an hourly rate for the car - £4.95 is the cost at Streetcar - and return it to the same spot, or to a different designated parking place.<br><br>G. Car sharing is an increasingly popular option for people making the same journeys regularly - to and from work, for example. Many companies run schemes that help colleagues who live near to each other and work in the same place to contact each other so they can share the journey to work. Liftshare and Carshare are two national organisations that maintain online databases of people who would be prepared to team up. Other people may be able to replace part or all of their journey to work - or any journeys, for that matter - with low-cost transport such as a bicycle, or even by just walking. The more you can reduce your car use, however you gain access to it, the more you will save.', '2025-09-15 07:40:37', '2025-09-15 07:40:37'),
(7, 7, 'Reading Passage 3', 'You should spend about 20 minutes on Questions 27 - 40, which are based on Reading Passage 3 below.', '2025-09-15 07:40:37', '2025-09-15 07:40:37'),
(8, 7, NULL, '<img src=\"/images/mockTestImage/reading1-3.jpg\" alt=\"Reading Passage\">', '2025-09-15 07:40:37', '2025-09-15 07:40:37'),
(9, 7, 'Low-Cost Lamps Light Rural India', 'Until three months ago, life in this humble village without electricity would come to a halt after sunset. Inside his mud-and-clay home, Ganpat Jadhav`s three children used to study in the dim, smoky glow of a kerosene lamp, when their monthly fuel quota of four litres dried up in just a fortnight, they had to strain their eyes using the light from a cooking fire. That all changed with the installation of low-cost, energy-efficient lamps that are powered entirely by the sun. The lights were installed by the Grameen Surya Bijli Foundation (GSBF), an Indian non-governmental organisation focused on bringing light to rural India. Some 100,000 Indian villages do not yet have electricity. The GSBF lamps use LEDs - light emitting diodes - that are four times more efficient than a normal bulb. After a $55 installation cost, solar energy lights the lamp free of charge. LED lighting, like cell phones, is another example of a technology whose low cost could allow the rural poor to leap into the 21st century.<br><br>As many as 1.5 billion people - nearly 80 million in India alone - light their houses using kerosene as the primary lighting media. The fuel is dangerous, dirty, and - despite being subsidised - consumes nearly four per cent of a typical rural Indian household`s budget. A recent report by the Intermediate Technology Development Group suggests that indoor air pollution from such lighting media results in 1.6 million deaths worldwide every year. LED lamps, or more specifically white LEDs, are believed to produce nearly 200 times more useful light than a kerosene lamp and almost 50 times the amount of useful light of a conventional bulb. \"This technology can light an entire rural village with less energy than that used by a single conventional 100-watt light bulb,” says Dave Irvine-Halliday, a professor of electrical engineering at the University of Calgary, Canada and the founder of Light up the World Foundation (LUTW). Founded in 1997, LUTW has used LED technology to bring light to nearly 10,000 homes in remote and disadvantaged corners of some 27 countries like India, Nepal, Sri Lanka, Bolivia, and the Philippines.<br><br>The technology, which is not yet widely known in India, faces some scepticism here. “LED systems are revolutionising rural lighting, but this isn`t a magic solution to the world`s energy problems,” says Ashok Jhunjhunwala, head of the electrical engineering department at the Indian Institute of Technology, Madras. In a scenario in which nearly 60 per cent of India`s rural population uses 180 million tons of biomass per year for cooking via primitive wood stoves - which are smoky and provide only 10-15 per cent efficiency in cooking -Jhunjhunwala emphasises the need for a clean energy source, not just for lighting but for other domestic purposes as well. The Indian government in April launched an ambitious project to bring electricity to 112,000 rural villages in the next decade. However, the remote locations of the village will make reaching this goal difficult. A. K. Lakhina, the chairman of India`s Rural Electrification Corporation, says the Indian government recognises the potential of LED lighting powered by solar technology, but expressed reservations about its high costs. “If only LEDs weren`t imported but manufactured locally,” he says, “and in bulk.”<br><br>The lamps installed in nearly 300 homes by GSBF cost nearly half the price of other solar lighting systems. Jasjeet Singh Chaddha, the founder of the NGO, currently imports his LEDs from China. He wants to set up an LED manufacturing unit and a solar panel manufacturing unit in India. If manufactured locally, the cost of his LED lamp could plummet to $22, as they will not incur heavy import duties. “We need close to $5 million for this,” he says. Mr. Chaddha says he has also asked the government to exempt the lamps from such duties, but to no avail. An entrepreneur who made his money in plastics, Chaddha has poured his own money into the project, providing the initial installations free of charge. As he looks to make the project self-sustainable, he recognises that it is only urban markets -which have also shown an avid interest in LED lighting - that can pay. The rural markets in India cannot afford it, he says, until the prices are brought down. The rural markets would be able to afford it, says Mr. Irvine-Halliday, if they had access to microcredit. He says that in Tembisa, a shanty town in Johannesburg, he found that almost 10,000 homes spent more than $60 each on candles and paraffin every year. As calculations revealed, these families can afford to purchase a solid state lighting system in just over a year of paying per week what they would normally spend on candles and paraffin - if they have access to microcredit. LUTW is in the process of creating such a microcredit facility for South Africa.<br><br>In villages near Khadakwadi, the newly installed LED lamps are a subject of envy, even for those connected to the grid. Those connected to the grid have to face power cuts up to 6 or 7 hours a day. Constant energy shortages and blackouts are a common problem due to a lack of power plants, transmission, and distribution losses caused by old technology and illegal stealing of electricity from the grid. LED systems require far less maintenance, a longer life, and as villagers jokingly say, “no electricity bills”. The lamps provided by GSBF have enough power to provide just four hours of light a day. However, that is enough for people to get their work done in the early hours of the night, and is more reliable than light generated off India`s electrical grid. Villagers are educated by GSBF officials to make the most of the new lamps. An official from GSBF instructs Jadhav and his family to clean the lamp regularly. “Its luminosity and life will diminish if you let the dust settle on it,” he warns them.', '2025-09-15 07:40:37', '2025-09-15 07:40:37'),
(10, 14, 'Reading Passage 1', 'You should spend about 20 minutes on Questions 1 -13, which are based on Reading Passage 1 below.', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(11, 14, NULL, '<img src=\"/images/mockTestImage/reading2-1.jpg\" alt=\"Reading Passage\">', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(12, 14, 'Sleepy Students Perform Worse', 'A. Staying up an hour or two past bedtime makes it far harder for kids to learn, say scientists who deprived youngsters of sleep and tested whether their teachers could tell the difference. They could. If parents want their children to thrive academically, “Getting them to sleep on time is as important as getting them to school on time,\" said psychologist Gahan Fallone, who conducted the research at Brown Medical School.<br>B. The study, unveiled Thursday at an American Medical Association (AMA) science writers meeting, was conducted on healthy children who had no evidence of sleep- or learning-related disorders. Difficulty paying attention was among the problems the sleepy youngsters faced - raising the question of whether sleep deprivation could prove even worse for people with attention deficit hyperactivity disorder, or ADHD. Fallone now is studying that question, and suspects that sleep problems “could hit children with ADHD as a double whammy”.<br>C. Sleep experts have long warned that Americans of all ages do not get enough shuteye. Sleep is important for health, bringing a range of benefits that, as Shakespeare put it, “knits up the ravelled sleave of care”. Not getting enough is linked to a host of problems, from car crashes as drivers doze off to crippled memory and inhibited creativity. Exactly how much sleep correlates with school performance is hard to prove. So, Brown researchers set out to test whether teachers could detect problems with attention and learning when children stayed up late - even if the teachers had no idea how much sleep their students actually got.<br>D. They recruited seventy-four 6- to 12-year-olds from Rhode Island and southern Massachusetts for the three-week study. For one week, the youngsters went to bed and woke up at their usual times. They already were fairly good sleepers, getting nine to 9.5 hours of sleep a night. Another week, they were assigned to spend no fewer than ten hours in bed a night. The other week, they were kept up later than usual: First -and second-graders were in bed no more than eight hours and the older children no more than 6.5 hours. In addition to parents’ reports, the youngsters wore motiondetecting wrist monitors to ensure compliance.<br>E. Teachers were not told how much the children slept or which week they stayed up late, but rated the students on a variety of performance measures each week. The teachers reported significantly more academic problems during the week of sleep deprivation, the study, which will be published in the journal Sleep in December, concluded. Students who got eight hours of sleep or less a night were more forgetful, had the most trouble learning new lessons, and had the most problems paying attention, reported Fallone, now at the Forest Institute of Professional Psychology.<br>F. Sleep has long been a concern of educators. Potter-Burns Elementary School sends notes to parents reminding them to make sure students get enough sleep prior to the school’s yearly achievement testing. Another school considers it important enough to include in the school’s monthly newsletters. Definitely, there is an impact on students’ performance if they come to school tired. However, the findings may change physician practice, said Dr. Regina Benjamin, a family physician in Bayou La Batre, who reviewed the data at the Thursday’s AMA meeting. “I don’t ask about sleep” when evaluating academically struggling students, she noted. “I’m going to start.”<br>G. So how much sleep do kids need? Recommended amounts range from about ten to eleven hours a night for young elementary students to 8.5 hours for teens. Fallone insists that his own second-grader get ten hours a night, even when it meant dropping soccer - season that practice did not start until 7:30 — too late for her to fit in dinner and time to wind down before she needed to be snoozing. “It’s tough,” he acknowledged, but “parents must believe in the importance of sleep.\"', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(13, 15, 'Reading Passage 2', 'You should spend about 20 minutes on Questions 14 - 26, which are based on Reading Passage 2 below.', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(14, 15, NULL, '<img src=\"/images/mockTestImage/reading2-2.jpg\" alt=\"Reading Passage\">', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(15, 15, 'The Brains Business', 'A. For those of a certain age and educational background, it is hard to think of higher education without thinking of ancient institutions. Some universities are of a venerable age - the University of Bologna was founded in 1088, the University of Oxford in 1096 - and many of them have a strong sense of tradition. The truly old ones make the most of their pedigrees, and those of a more recent vintage work hard to create an aura of antiquity. Yet these tradition-loving (or -creating) institutions are currently enduring a thunderstorm of changes so fundamental that some say the very idea of the university is being challenged. Universities are experimenting with new ways of funding (most notably through student fees), forging partnerships with private companies and engaging in mergers and acquisitions.Such changes are tugging at the ivy’s roots.<br>B. This is happening for four reasons. The first is the democratisation of higher education “massification\" in the language of the educational profession. In the rich world, massification has been going on for some time. The proportion of adults with higher educational qualifications in developed countries almost doubled between l975 and 2000. From 22% to 41%. Most of the rich countries are still struggling to digest this huge growth in numbers. Now massification is spreading to the developing world. China doubled its student population in the late 1990s, and India is trying to follow suit<br>C. The second reason is the rise of the knowledge economy. The world is in the grips of a “soft revolution” in which knowledge is replacing physical resources as the main driver of economic growth. Between 1985 and 1997, the contribution of knowledge-based industries to total value added increased from 51% to 59% in Germany and from 45% to 51% in Britain. The best companies are now devoting at least a third of their investment to knowledge-intensive intangibles such as R&D, licensing, and marketing. Universities are among the most important engines of the knowledge economy. Not only do they produce the brain workers who man it, they also provide much of its backbone, from laboratories to libraries to computer networks.<br>D. The third factor is globalisation. The death of distance is transforming academia just as radically as it is transforming business. The number of people from developed countries studying abroad has doubled over the past twenty years, to 1.9 million; universities are opening campuses all around the world; and a growing number of countries are trying to turn higher education into an export industry. The fourth is competition. Traditional universities are being forced to compete for students and research grants, and private companies are trying to break into a sector which they regard as “the new health care”. The World Bank calculates that global spending on higher education amounts to $300 billion a year, or 1 % of global economic output. There are more than 80 million students worldwide, and 3.5 million people are employed to teach them or look after them.<br>E. All this sounds as though a golden age for universities has arrived. However, inside academia, particularly in Europe, it. does not feel like it. Academics complain and administrators are locked in bad-tempered exchanges with the politicians who fund them. What has gone wrong? The biggest problem is the role of the state. If more and more governments are embracing massification, few of them are willing to draw the appropriate conclusion from their enthusiasm: that they should either provide the requisite hinds (as the Scandinavian countries do) or allow universities to charge realistic fees. Many governments have tried to square the circle through lighter management, but management cannot make up for lack of resources.<br>F. What, if anything can be done? Techno-utopians believe that higher education is ripe for revolution. The university, they say, is a hopelessly antiquated institution, wedded in outdated practices such as tenure and lectures, and incapable of serving a new world of mass audiences and just-in-time information. “Thirty wars from now the big university campuses will be relics,\" says Peter Drucker, a veteran management guru. \"I consider the American research university of the past 40 years to be a failure.\" Fortunately, in his view, help is on the way in the form of Internet tuition and for-profit universities. Cultural conservatives, on the other hand, believe that the best way forward is backward. They think it is foolish to waste higher education on people who would rather study \"Seinfeld\" than Socrates, and disingenuous to confuse the pursuit of truth with the pursuit of profit.', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(16, 16, 'Reading Passage 3', 'You should spend about 20 minutes on Questions 27 - 40, which are based on Reading Passage 2 below.', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(17, 16, NULL, '<img src=\"/images/mockTestImage/reading2-3.jpg\" alt=\"Reading Passage\">', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(18, 16, 'Sunday Is a Fun Day for Modern Brits', 'In a new study, Essex University sociologists have dissected the typical British Sunday, and found we get up later and do fewer chores than we did 40 years ago - and we are far more likely to be out shopping or enjoying ourselves than cooking Sunday lunch. Academics at the university’s Institute of Social and Economic Research asked 10,000 people to keep a detailed diary of how they spent Sundays in 2001. Then they compared the results with 3,500 diaries written in 1961, a treasure trove of information that had been uncovered ‘in two egg boxes and a tea chest’ in the basement of the BBC by ISER’s director, Professor Jonathan Gershuny.<br>The contrast between the two periods could not be more striking. Forty years ago, Sunday mornings were a flurry of activity as men and women - especially women - caught up on their weekly chores and cooked up a storm in the kitchen. Women rarely allowed themselves any ‘leisure’ until the afternoon, after the dishes were cleaned. In 1961, more than a fifth of all men and women in Britain were sitting at a table by 2 p.m., most likely tucking into a roast with all the trimmings. Then there would be another rush to the table between 5 p.m. and 6 p.m. for high tea.<br>Since the arrival of brunch, the gastropub and the all-you-can-eat Sunday buffet at the local curry house, such institutions have become extinct. Today, we graze the entire day. You only have two free days a week. You don’t want to have to waste one because there is nothing to do but watch TV. Sunday has leapfrogged Saturday in the fun stakes. On Saturdays, you are recovering from the week. Sundays are the last bastion of the weekend - you want to get as much as you can out of the day before you have to go back to work.<br>According to researchers, the ability to trail around B&Q has made the most dramatic difference to our Sundays. In 1961, adults spent an average of 20 minutes a day shopping; by 2001, it was 50 minutes. ‘Shopping used to be a gender segregated activity that would take place during the week, while the husband was at work. Now it’s as much men as women,’ said Gershuny. We’re all more likely to be relaxing or shopping on a Sunday morning these days than scrubbing the floor or putting up shelves. ‘Men now stay in bed longer, and get up not, as previously, to work around the house, but rather to shop or to pursue other outside leisure activities.<br>‘Men do about the same amount of unpaid work around the house as they used to on a Sunday, but it’s spread throughout the whole day, instead of crammed into the morning. Women do considerably less than 40 years ago. Indeed, men and women were ‘pretty much different species’ in 1961, as far as the way they spent Sundays was concerned, with men far more likely to be out of the house - at the pub or playing football - before lunch. ‘For women, leisure happened only in the afternoon. But by 2001, the shapes of men’s and women’s Sundays were much more similar,’ says the report.<br>‘Sunday for me is all about holding on to the weekend and trying to stave off Monday. An ideal Sunday would involve getting up and having a nice lunch. Sometimes we cook, but more often I go out to get a roast or bangers and mash at a gastropub. If it is a nice day, there is nothing better than sitting outside in the beer garden, reading the Sunday papers - one tabloid and one broadsheet - with a Guinness, extra cold. Sunday is often a chance to visit other parts of London, as long as it is not too far. I use Sundays to go clothes shopping, or to the cinema. I often go to Camden market, as I love the international foods on offer and hunting for bargains and vintage clothes.’<br>Jonathan Bentley Atchison (25, Clapham, London, works in communications)', '2025-09-15 08:15:24', '2025-09-15 08:15:24'),
(19, 23, 'Reading Passage 1', 'You should spend about 20 minutes on Questions 1 -13, which are based on Reading Passage 1 below.', '2025-09-15 08:46:18', '2025-09-15 08:46:18'),
(20, 23, NULL, '<img src=\"/images/mockTestImage/reading3-1.jpg\" alt=\"Reading Passage\">', '2025-09-15 08:46:18', '2025-09-15 08:46:18'),
(21, 23, 'Daydreaming', 'Everyone daydreams sometimes. We sit or lie down, close our eyes and use our imagination to think about something that might happen in the future or could have happened in the past. Most daydreaming is pleasant. We would like the daydream to happen and we would be very happy if it did actually happen. We might daydream that we are in another person’s place, or doing something that we have always wanted to do, or that other people like or admire us much more than they normally do.<br>Daydreams are not dreams, because we can only daydream if we are awake. Also, we choose what our daydreams will be about, which we cannot usually do with dreams. With many daydreams, we know that what we imagine is unlikely to happen. At least, if it does happen, it probably will not do so in the way we want it to. However, some daydreams are about things that are likely to happen. With these, our daydreams often help us to work out what we want to do, or how to do it to get the best results. So, these daydreams are helpful. We use our imagination to help us understand the world and other people.<br>Daydreams can help people to be creative. People in creative or artistic careers, such as composers, novelists and filmmakers, develop new ideas through daydreaming. This is also true of research scientists and mathematicians. In fact, Albert Einstein said that imagination is more important than knowledge because knowledge is limited whereas imagination is not.<br>Research in the 1980s showed that most daydreams are about ordinary, everyday events. It also showed that over 75% of workers in so-called \"boring jobs\", such as lorry drivers and security guards, spend a lot of time daydreaming in order to make their time at work more interesting. Recent research has also shown that daydreaming has a positive effect on the brain. Experiments with MRI brain scans show that the parts of the brain linked with complex problem-solving are more active during daydreaming. Researchers conclude that daydreaming is an activity in which the brain consolidates learning. In this respect, daydreaming is the same as dreaming during sleep.<br>Although there do seem to be many advantages with daydreaming, in many cultures it is considered a bad thing to do. One reason for this is that when you are daydreaming, you are not working. In the 19th century, for example, people who daydreamed a lot were judged to be lazy. This happened in particular when people started working in factories on assembly lines. When you work on an assembly line, all you do is one small task again and again, every time exactly the same. It is rather repetitive and, obviously, you cannot be creative. So many people decided that there was no benefit in daydreaming.<br>Other people have said that daydreaming leads to \"escapism\" and that this is not healthy, either. Escapist people spend a lot of time living in a dream world in which they are successful and popular, instead of trying to deal with the problems they face in the real world. Such people often seem to be unhappy and are unable or unwilling to improve their daily lives. Indeed, recent studies show that people who often daydream have fewer close friends than other people. In fact, they often do not have any close friends at all.', '2025-09-15 08:46:18', '2025-09-15 08:46:18'),
(22, 24, 'Reading Passage 2', 'You should spend about 20 minutes on Questions 14 - 25, which are based on Reading Passage 2 below.', '2025-09-15 08:46:18', '2025-09-15 08:46:18'),
(23, 24, NULL, '<img src=\"/images/mockTestImage/reading2-2.jpg\" alt=\"Reading Passage\">', '2025-09-15 08:46:18', '2025-09-15 08:46:18'),
(24, 24, 'TRICKY SUMS AND PSYCHOLOGY', 'A. In their first years of studying mathematics at school, children all over the world usually have to learn the times table, also known as the multiplication table, which shows what you get when you multiply numbers together. Children have traditionally learned their times table by going from \"1 times 1 is 1\" all the way up to \"12 times 12 is 144\".<br>B. Times tables have been around for a very long time now. The oldest known tables using base 10 numbers, the base that is now used everywhere in the world, are written on bamboo strips dating from 305 BC, found in China. However, in many European cultures the times table is named after the Ancient Greek mathematician and philosopher Pythagoras (570-495 BC). And so it is called the Table of Pythagoras in many languages, including French and Italian.<br>C. In 1820, in his book The Philosophy of Arithmetic, the mathematician John Leslie recommended that young pupils memories the times table up to 25 x 25. Nowadays, however, educators generally believe it is important for children to memorise the table up to 9 x 9, 10 x 10 or 12 x12.<br>D. The current aim in the UK is for school pupils to know all their times tables up to 12 x 12 by the age of nine. However, many people do not know them, even as adults. Recently, some politicians have been asked arithmetical questions of this kind. For example, in 1998, the schools minister Stephen Byers was asked the answer to 7 x 8. He got the answer wrong, saying 54 rather than 56, and everyone laughed at him.<br>E. In 2014, a young boy asked the UK Chancellor George Osborne the exact same question. As he had passed A-level maths and was in charge of the UK`s economic policies at the time, you would expect him to know the answer. However, he simply said, \"I`ve made it a rule in life not to answer such questions.\"<br>F. Why would a politician refuse to answer such a question? It is certainly true that some sums are much harder than others. Research has shown that learning and remembering sums involving 6,7,8 and 9 tends to be harder than remembering sums involving other numbers. And it is even harder when 6,7,8 and 9 are multiplied by each other. Studies often find that the hardest sum is 6x8, with 7x8 not far behind. However, even though 7x8 is a relatively difficult sum, it is unlikely that George Osborne did not know the answer. So there must be some other reason why he refused to answer the question.<br>G. The answer is that Osborne was being \"put on the spot\" and he didn`t like it. It is well known that when there is a lot of pressure to do something right, people often have difficulty doing something that they normally find easy. When you put someone on the spot and ask such a question, it causes stress. The person`s heart beats faster and their adrenalin levels go up. As a result, people will often make mistakes that they would not normally make. This is called \"choking\". Choking often happens in sport, such as when a footballer takes a crucial penalty. In the same way, the boy`s question put Osborne under great pressure. He knew it would be a disaster for him if he got the answer to such a simple question wrong and feared that he might choke. And that is why he refused to answer the question.', '2025-09-15 08:46:18', '2025-09-15 08:46:18'),
(25, 25, 'Reading Passage 3', 'You should spend about 20 minutes on Questions 27 - 40, which are based on Reading Passage 2 below.', '2025-09-15 08:46:18', '2025-09-15 08:46:18'),
(26, 25, NULL, '<img src=\"/images/mockTestImage/reading3-3.jpg\" alt=\"Reading Passage\">', '2025-09-15 08:46:18', '2025-09-15 08:46:18'),
(27, 25, 'Care in the Community', '\"Bedlam\" is a word that has become synonymous in the English language with chaos and disorder. The term itself derives from the shortened name for a former 16th century London institution for the mentally ill, known as St. Mary of Bethlehem. This institution was so notorious that its name was to become a byword for mayhem. Patient \"treatment\" amounted to little more than legitimised abuse. Inmates were beaten and forced to live in unsanitary conditions, whilst others were placed on display to a curious public as a side-show. There is little indication to suggest that other institutions founded at around the same time in other European countries were much better.<br>Even up until the mid-twentieth century, institutions for the mentally ill were regarded as being more places of isolation and punishment than healing and solace. In popular literature of the Victorian era that reflected true-life events, individuals were frequently sent to the \"madhouse\" as a legal means of permanently disposing of an unwanted heir or spouse. Later, in the mid-twentieth century, institutes for the mentally ill regularly carried out invasive brain surgery known as a \"lobotomy\" on violent patients without their consent. The aim was to \"calm\" the patient but ended up producing a patient that was little more than a zombie. Such a procedure is well documented to devastating effect in the film \"One Flew Over the Cuckoo’s Nest\". Little wonder then that the appalling catalogue of treatment of the mentally ill led to a call for change from social activists and psychologists alike.<br>Improvements began to be seen in institutions from the mid-50s onwards, along with the introduction of care in the community for less severely ill patients. Community care was seen as a more humane and purposeful approach to dealing with the mentally ill. Whereas institutionalised patients lived out their existence in confinement, forced to obey institutional regulations, patients in the community were free to live a relatively independent life. The patient was never left purely to their own devices as a variety of services could theoretically be accessed by the individual. In its early stages, however, community care consisted primarily of help from the patient’s extended family network. In more recent years, such care has extended to the provision of specialist community mental health teams (CMHTs) in the UK. Such teams cover a wide range of services from rehabilitation to home treatment and assessment. In addition, psychiatric nurses are on hand to administer prescription medication and give injections. The patient is therefore provided with the necessary help that they need to survive in the everyday world whilst maintaining a degree of autonomy.<br>Often, though, when a policy is put into practice, its failings become apparent. This is true for the policy of care in the community. Whilst back-up services may exist, an individual may not call upon them when needed, due to reluctance or inability to assess their own condition. As a result, such an individual may be alone during a critical phase of their illness, which could lead them to self-harm or even become a threat to other members of their community. Whilst this might be an extreme-case scenario, there is also the issue of social alienation that needs to be considered. Integration into the community may not be sufficient to allow the individual to find work, leading to poverty and isolation. Social exclusion could then cause a relapse as the individual is left to battle mental health problems alone. The solution, therefore, is to ensure that the patient is always in touch with professional helpers and not left alone to fend for themselves. It should always be remembered that whilst you can take the patient out of the institution, you can’t take the institution out of the patient.<br>When questioned about care in the community, there seems to be a division of opinion amongst members of the public and within the mental healthcare profession itself. Dr. Mayalla, practising clinical psychologist, is inclined to believe that whilst certain patients may benefit from care in the community, the scheme isn’t for everyone. \"Those suffering moderate cases of mental illness stand to gain more from care in the community than those with more pronounced mental illness. I don’t think it’s a one-size-fits-all policy. But I also think that there is a far better infrastructure of helpers and social workers in place now than previously and the scheme stands a greater chance of success than in the past.\"<br>Anita Brown, mother of three, takes a different view. \"As a mother, I’m very protective towards my children. As a result, I would not put my support behind any scheme that I felt might put my children in danger... I guess there must be assessment methods in place to ensure that dangerous individuals are not let loose amongst the public but I’m not for it at all. I like to feel secure where I live, but more to the point, that my children are not under any threat.\"<br>Bob Ratchett, a former mental health nurse, takes a more positive view on community care projects. \"Having worked in the field myself, I’ve seen how a patient can benefit from living an independent life, away from an institution. Obviously, only individuals well on their way to recovery would be suitable for consideration as participants in such a scheme. If you think about it, is it really fair to condemn an individual to a lifetime in an institution when they could be living a fairly fulfilled and independent life outside the institution?\"', '2025-09-15 08:46:18', '2025-09-15 08:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `scorers`
--

CREATE TABLE `scorers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `speaking` varchar(255) DEFAULT NULL,
  `listening` varchar(255) DEFAULT NULL,
  `reading` varchar(255) DEFAULT NULL,
  `writing` varchar(255) DEFAULT NULL,
  `speaking_status` tinyint(1) DEFAULT NULL,
  `listening_status` tinyint(1) DEFAULT NULL,
  `reading_status` tinyint(1) DEFAULT NULL,
  `writing_status` tinyint(1) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scorers`
--

INSERT INTO `scorers` (`id`, `name`, `image`, `speaking`, `listening`, `reading`, `writing`, `speaking_status`, `listening_status`, `reading_status`, `writing_status`, `score`, `created_at`, `updated_at`) VALUES
(2, 'USHA ARUNIMA', 'image1756803291.png', '6', '8.5', '7', '6', 0, 0, 0, 0, '7', '2025-03-03 12:31:51', '2025-09-02 08:58:34'),
(3, 'IMTIAZ MASOOR', 'image1756803089.png', '6.5', '6.5', '8.5', '9', 0, 0, 0, 0, '7.5', '2025-03-03 12:32:27', '2025-09-02 08:51:55'),
(4, 'SHAIKH FARHANA FAISAL PINKI', 'image1756802549.png', '5', '6', '7', '8', 0, 0, 0, 0, '7.0', '2025-03-03 12:32:36', '2025-09-02 08:44:10'),
(5, 'ISRAT JAHAN ZIM MOON', 'image1756802520.png', '7.0', '8.O', '7.0', '6.5', 1, 1, 1, 1, '7.0', '2025-03-03 12:32:44', '2025-09-02 08:44:42'),
(8, 'SK ASHRAFUL AHMED TAHSIN', 'image1756803600.png', '5', '8.5', '7', '8', 0, 0, 0, 0, '7.0', '2025-09-02 09:00:00', '2025-09-02 09:00:00'),
(9, 'SK FAHIM UDDIN', 'image1756808521.JPG', '8.5', '8.5', '8.5', '6', 0, 0, 0, 0, '8.0', '2025-09-02 10:22:01', '2025-09-02 10:22:01'),
(10, 'MD ATIQUR RAHMAN', 'image1756808642.JPG', '8', '7', '8', '6.5', 0, 0, 0, 0, '8.0', '2025-09-02 10:24:02', '2025-09-02 10:24:02'),
(11, 'MD REZWANUR RAHMAN', 'image1756808717.JPG', '00', '00', '00', '00', 0, 0, 0, 0, '7.5', '2025-09-02 10:25:17', '2025-09-02 10:25:17'),
(12, 'SHUVO DIP DATTA', 'image1756808773.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.5', '2025-09-02 10:26:13', '2025-09-02 10:26:13'),
(13, 'SWADHIN DAS', 'image1756808818.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.5', '2025-09-02 10:26:58', '2025-09-02 10:26:58'),
(14, 'SAGOR EJARDER', 'image1756808907.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:28:27', '2025-09-02 10:28:27'),
(15, 'MD AKASH HAWLADER', 'image1756808974.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:29:34', '2025-09-02 10:29:34'),
(16, 'AHNAF ZAMAN', 'image1756809041.JPG', '0', '0', 'O', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:30:41', '2025-09-02 10:30:41'),
(17, 'Md Zahidul Islam', 'image1756809095.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.5', '2025-09-02 10:31:35', '2025-09-02 10:31:35'),
(18, 'JAWAD ALI SHEIKH', 'image1756809162.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.5', '2025-09-02 10:32:42', '2025-09-02 10:32:42'),
(19, 'KHADIZA ISLAM SHUCHONA', 'image1756809290.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:34:50', '2025-09-02 10:34:50'),
(20, 'SUJOY BOSU', 'image1756809450.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.5', '2025-09-02 10:37:30', '2025-09-02 10:37:30'),
(21, 'SAHANA AKTER', 'image1756809531.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:38:51', '2025-09-02 10:38:51'),
(22, 'AFRA SIDDIQUE', 'image1756809609.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:40:09', '2025-09-02 10:40:09'),
(23, 'MD AKIL KHAN', 'image1756809657.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:40:57', '2025-09-02 10:40:57'),
(24, 'MD FAISAL KARIM', 'image1756809697.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:41:37', '2025-09-02 10:41:37'),
(25, 'NAWSHIN RAHMAN', 'image1756809740.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:42:20', '2025-09-02 10:42:20'),
(26, 'ADNAN AHMEDB JOY', 'image1756809784.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:43:04', '2025-09-02 10:43:04'),
(27, 'MIR ALL MUHTASIM DIAN', 'image1756809819.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.5', '2025-09-02 10:43:39', '2025-09-02 10:43:39'),
(28, 'ARMIN JAHAN NEHA', 'image1756809858.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:44:18', '2025-09-02 10:44:18'),
(29, 'DIBONHITA BONHI', 'image1756809911.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:45:11', '2025-09-02 10:45:11'),
(30, 'NISHAT TASNIM', 'image1756809949.JPG', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:45:49', '2025-09-02 10:45:49'),
(31, 'RITU SAHA', 'image1756809996.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:46:36', '2025-09-02 10:46:36'),
(32, 'SAKIB SALMAN', 'image1756810041.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:47:21', '2025-09-02 10:47:21'),
(33, 'KAZI MOSTAFIR HASSAN SIFAT', 'image1756810095.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:48:15', '2025-09-02 10:48:15'),
(34, 'RABEYA SULTANA', 'image1756810173.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.5', '2025-09-02 10:49:33', '2025-09-02 10:49:33'),
(35, 'SAKIB HASAN ANIK', 'image1756810239.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:50:39', '2025-09-02 10:50:39'),
(36, 'SAPTARSHI SAHA', 'image1756810286.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:51:26', '2025-09-02 10:51:26'),
(37, 'SM AKRAMUL ISLAM', 'image1756810359.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:52:39', '2025-09-02 10:52:39'),
(38, 'IASIN ISHRAK SIAM', 'image1756810403.png', '0', '0', '0', '0', 0, 0, 0, 0, '8.0', '2025-09-02 10:53:23', '2025-09-02 10:53:23'),
(39, 'MD HASAN', 'image1756810450.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:54:10', '2025-09-02 10:54:10'),
(40, 'ARMIN JAHAN NEHA', 'image1756810489.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:54:49', '2025-09-02 10:54:49'),
(41, 'ANIKA TAHSIN JESY', 'image1756810524.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.5', '2025-09-02 10:55:24', '2025-09-02 10:55:24'),
(42, 'MD NAFIS SADMAN', 'image1756810593.png', '0', '0', '0', '0', 0, 0, 0, 0, '7.0', '2025-09-02 10:56:33', '2025-09-02 10:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mock_test_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `mock_test_id`, `name`, `order_no`, `duration`, `created_at`, `updated_at`) VALUES
(1, 1, 'Listening', 1, 30, '2025-09-09 06:38:23', '2025-09-09 06:38:23'),
(2, 1, 'Reading', 2, 60, '2025-09-09 06:38:23', '2025-09-09 06:38:23'),
(3, 1, 'Writing', 3, 60, '2025-09-09 06:38:23', '2025-09-09 06:38:23'),
(4, 2, 'Listening', 1, 30, '2025-09-10 11:39:31', '2025-09-10 11:39:31'),
(5, 2, 'Reading', 2, 60, '2025-09-10 11:39:31', '2025-09-10 11:39:31'),
(6, 2, 'Writing', 3, 60, '2025-09-10 11:39:31', '2025-09-10 11:39:31'),
(7, 3, 'Listening', 1, 30, '2025-09-10 12:14:21', '2025-09-10 12:14:21'),
(8, 3, 'Reading', 2, 60, '2025-09-10 12:14:21', '2025-09-10 12:14:21'),
(9, 3, 'Writing', 3, 60, '2025-09-10 12:14:21', '2025-09-10 12:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `mobile1` varchar(255) DEFAULT NULL,
  `mobile2` varchar(255) DEFAULT NULL,
  `mobile3` varchar(255) DEFAULT NULL,
  `mobile4` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `ceo_image` varchar(255) DEFAULT NULL,
  `ceo_image_back` varchar(255) DEFAULT NULL,
  `ceo_description` text DEFAULT NULL,
  `who_we_are_image` varchar(255) DEFAULT NULL,
  `who_we_are_description` text DEFAULT NULL,
  `vision_image` varchar(255) DEFAULT NULL,
  `vision_description` text DEFAULT NULL,
  `mission_image` varchar(255) DEFAULT NULL,
  `mission_description` text DEFAULT NULL,
  `contact_image` varchar(255) DEFAULT NULL,
  `blogs_image` varchar(255) DEFAULT NULL,
  `score_image` varchar(255) DEFAULT NULL,
  `event_image` varchar(255) DEFAULT NULL,
  `higher_education_image` varchar(255) DEFAULT NULL,
  `immigration_image` varchar(255) DEFAULT NULL,
  `ielts_reg_image` varchar(255) DEFAULT NULL,
  `placement_image` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `messenger` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `description`, `logo`, `favicon`, `email`, `website`, `mobile1`, `mobile2`, `mobile3`, `mobile4`, `address`, `ceo_image`, `ceo_image_back`, `ceo_description`, `who_we_are_image`, `who_we_are_description`, `vision_image`, `vision_description`, `mission_image`, `mission_description`, `contact_image`, `blogs_image`, `score_image`, `event_image`, `higher_education_image`, `immigration_image`, `ielts_reg_image`, `placement_image`, `instagram`, `twitter`, `linkedin`, `youtube`, `facebook`, `whatsapp`, `messenger`, `created_at`, `updated_at`) VALUES
(1, 'Lexicon', NULL, 'logo1751192839.png', 'favicon1747029693.png', 'lexiconeltc@gmail.com', 'https://www.lexiconeltc.com/', '+8801913 919470', '+8801914 919470', '+8801842 919470', '+8801841 919470', '𝐍𝐋𝐈 𝐓𝐎𝐖𝐄𝐑 (𝟕𝐭𝐡 𝐅𝐥𝐨𝐨𝐫), 𝟗𝟕𝟕, 𝐔𝐩𝐩𝐞𝐫 𝐉𝐞𝐬𝐬𝐨𝐫𝐞 𝐑𝐨𝐚𝐝 𝐊𝐃𝐀, 𝐍𝐞𝐰 𝐌𝐚𝐫𝐤𝐞𝐭 𝐀𝐫𝐞𝐚, Khulna, Bangladesh', 'ceo_image1742118627.jpg', 'ceo_image_back1742118017.jpg', NULL, 'who_we_are_image1742022062.jpg', '<p>We are delighted to have this opportunity to address you. With 13 years of experience in English Language and IELTS teaching, I am deeply committed to providing exceptional education and guidance to our students.</p><p>Currently pursuing an International Master of Teaching degree at Saint Mary’s University in Halifax, NS, Canada, I am dedicated to constantly enhancing my knowledge and skills to better serve our students. In 2020, I successfully completed my Cambridge CELTA, and I have received extensive training from reputable institutions such as the British Council, IDP, and experienced trainers from Australia and the local trainers of the British Council.</p><p>At Lexicon, our mission is to offer the highest quality English language education and comprehensive IELTS preparation. We take immense pride in our experienced and certified faculty, who bring a wealth of expertise and international credentials to our institution. Our team of teachers includes professionals who have achieved outstanding scores of 9.0 out of 9.0 in individual sections of the IELTS exam.</p><p>We understand the importance of providing a conducive learning environment and personalized attention to our students. Our goal is to empower each student to excel in their English language skills and achieve their desired results in the IELTS exam. We offer a wide range of courses, including IELTS preparation, mock tests, and registration services, as well as English language courses for adults and young learners.</p><p>I invite you to join Lexicon and experience our commitment to excellence firsthand. Together, we will embark on a transformative educational journey that will help you reach your full potential. We are dedicated to making your future brighter and ensuring that “The Future Begins Here” at Lexicon.</p>', 'vision_image1747031118.jpg', '<p>We are delighted to have this opportunity to address you. With 13 years of experience in English Language and IELTS teaching, I am deeply committed to providing exceptional education and guidance to our students.</p>', 'mission_image1747031118.jpg', '<p>We are delighted to have this opportunity to address you. With 13 years of experience in English language and IELTS teaching, I am deeply committed to providing exceptional education and guidance to our students.</p><p>Currently pursuing an International Master of Teaching degree at Saint Mary’s University in Halifax, NS, Canada, I am dedicated to constantly enhancing my knowledge and skills to better serve our students. In 2020, I successfully completed my Cambridge CELTA, and I have received extensive training from reputable institutions such as the British Council, IDP, and experienced trainers from Australia and the local trainers of the British Council.</p>', 'contact_image1742115280.jpg', 'blogs_image1742029280.jpg', 'score_image1756806125.jpg', 'event_image1742115011.jpg', 'higher_education_image1742115011.jpg', 'immigration_image1742115011.jpg', 'ielts_reg_image1756806227.png', 'placement_image1742115011.jpg', 'https://www.instagram.com/lexiconeltc/', 'https://x.com/lexiconeltc', 'https://www.linkedin.com/in/in%2Flexiconeltc%2F', 'https://www.youtube.com/@LexiconELTC', 'https://www.facebook.com/LexiconELTC', '01913919470', 'LexiconELTC', NULL, '2025-09-02 09:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(11, NULL, '6821d33ccb9a9.webp', '2025-05-11 11:39:50', '2025-05-12 14:53:49'),
(12, NULL, '6821cfd18ec69.webp', '2025-05-11 11:40:24', '2025-05-12 14:39:14'),
(13, NULL, '6821cde98fc12.webp', '2025-05-11 11:40:35', '2025-05-12 14:31:05'),
(14, NULL, '6821cf7a77ade.webp', '2025-05-11 12:32:38', '2025-05-12 14:37:47'),
(15, NULL, '6821ce6996698.webp', '2025-05-12 14:29:01', '2025-05-12 14:33:14'),
(16, NULL, '6821ceaeddb71.webp', '2025-05-12 14:34:23', '2025-05-12 14:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `description`, `image`, `name`, `score`, `created_at`, `updated_at`) VALUES
(1, 'Very trustworthy and clearly platform to invest in various kind of category. Safe investment with monthly payout. Highly Recommended.', 'image1741857991.jpg', 'Maggy Bishop', '8.5', '2025-03-11 09:55:55', '2025-03-13 13:26:31'),
(2, 'Very trustworthy and clearly platform to invest in various kind of category. Safe investment with monthly payout. Highly Recommended.', 'image1741856333.jpg', 'Beau Graves', '7.5', '2025-03-11 10:11:15', '2025-03-13 12:58:53'),
(3, 'Very trustworthy and clearly platform to invest in various kind of category. Safe investment with monthly payout. Highly Recommended.', 'image1742119000.png', 'Lilah Harrell', '7', '2025-03-11 10:11:30', '2025-03-16 13:56:40'),
(4, 'Very trustworthy and clearly platform to invest in various kind of category. Safe investment with monthly payout. Highly Recommended.', 'image1742118989.png', 'Brian Chaney', '8', '2025-03-11 10:11:41', '2025-03-16 13:56:29'),
(5, 'Very trustworthy and clearly platform to invest in various kind of category. Safe investment with monthly payout. Highly Recommended.', 'image1742118977.png', 'Jeanette Mueller', '6', '2025-03-11 10:12:04', '2025-03-16 13:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_listenings`
--

CREATE TABLE `test_listenings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam` varchar(255) DEFAULT NULL,
  `user_id` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `test_id` varchar(2) DEFAULT NULL,
  `answer1` varchar(155) DEFAULT NULL,
  `mark1` varchar(2) DEFAULT NULL,
  `answer2` varchar(155) DEFAULT NULL,
  `mark2` varchar(2) DEFAULT NULL,
  `answer3` varchar(155) DEFAULT NULL,
  `mark3` varchar(2) DEFAULT NULL,
  `answer4` varchar(155) DEFAULT NULL,
  `mark4` varchar(2) DEFAULT NULL,
  `answer5` varchar(155) DEFAULT NULL,
  `mark5` varchar(2) DEFAULT NULL,
  `answer6` varchar(155) DEFAULT NULL,
  `mark6` varchar(2) DEFAULT NULL,
  `answer7` varchar(155) DEFAULT NULL,
  `mark7` varchar(2) DEFAULT NULL,
  `answer8` varchar(155) DEFAULT NULL,
  `mark8` varchar(2) DEFAULT NULL,
  `answer9` varchar(155) DEFAULT NULL,
  `mark9` varchar(2) DEFAULT NULL,
  `answer10` varchar(155) DEFAULT NULL,
  `mark10` varchar(2) DEFAULT NULL,
  `answer11` varchar(155) DEFAULT NULL,
  `mark11` varchar(2) DEFAULT NULL,
  `answer12` varchar(155) DEFAULT NULL,
  `mark12` varchar(2) DEFAULT NULL,
  `answer13` varchar(155) DEFAULT NULL,
  `mark13` varchar(2) DEFAULT NULL,
  `answer14` varchar(155) DEFAULT NULL,
  `mark14` varchar(2) DEFAULT NULL,
  `answer15` varchar(155) DEFAULT NULL,
  `mark15` varchar(2) DEFAULT NULL,
  `answer16` varchar(155) DEFAULT NULL,
  `mark16` varchar(2) DEFAULT NULL,
  `answer17` varchar(155) DEFAULT NULL,
  `mark17` varchar(2) DEFAULT NULL,
  `answer18` varchar(155) DEFAULT NULL,
  `mark18` varchar(2) DEFAULT NULL,
  `answer19` varchar(155) DEFAULT NULL,
  `mark19` varchar(2) DEFAULT NULL,
  `answer20` varchar(155) DEFAULT NULL,
  `mark20` varchar(2) DEFAULT NULL,
  `answer21` varchar(155) DEFAULT NULL,
  `mark21` varchar(2) DEFAULT NULL,
  `answer22` varchar(155) DEFAULT NULL,
  `mark22` varchar(2) DEFAULT NULL,
  `answer23` varchar(155) DEFAULT NULL,
  `mark23` varchar(2) DEFAULT NULL,
  `answer24` varchar(155) DEFAULT NULL,
  `mark24` varchar(2) DEFAULT NULL,
  `answer25` varchar(155) DEFAULT NULL,
  `mark25` varchar(2) DEFAULT NULL,
  `answer26` varchar(155) DEFAULT NULL,
  `mark26` varchar(2) DEFAULT NULL,
  `answer27` varchar(155) DEFAULT NULL,
  `mark27` varchar(2) DEFAULT NULL,
  `answer28` varchar(155) DEFAULT NULL,
  `mark28` varchar(2) DEFAULT NULL,
  `answer29` varchar(155) DEFAULT NULL,
  `mark29` varchar(2) DEFAULT NULL,
  `answer30` varchar(155) DEFAULT NULL,
  `mark30` varchar(2) DEFAULT NULL,
  `answer31` varchar(155) DEFAULT NULL,
  `mark31` varchar(2) DEFAULT NULL,
  `answer32` varchar(155) DEFAULT NULL,
  `mark32` varchar(2) DEFAULT NULL,
  `answer33` varchar(155) DEFAULT NULL,
  `mark33` varchar(2) DEFAULT NULL,
  `answer34` varchar(155) DEFAULT NULL,
  `mark34` varchar(2) DEFAULT NULL,
  `answer35` varchar(155) DEFAULT NULL,
  `mark35` varchar(2) DEFAULT NULL,
  `answer36` varchar(155) DEFAULT NULL,
  `mark36` varchar(2) DEFAULT NULL,
  `answer37` varchar(155) DEFAULT NULL,
  `mark37` varchar(2) DEFAULT NULL,
  `answer38` varchar(155) DEFAULT NULL,
  `mark38` varchar(2) DEFAULT NULL,
  `answer39` varchar(155) DEFAULT NULL,
  `mark39` varchar(2) DEFAULT NULL,
  `answer40` varchar(155) DEFAULT NULL,
  `mark40` varchar(2) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `correct` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_listenings`
--

INSERT INTO `test_listenings` (`id`, `exam`, `user_id`, `name`, `email`, `status`, `test_id`, `answer1`, `mark1`, `answer2`, `mark2`, `answer3`, `mark3`, `answer4`, `mark4`, `answer5`, `mark5`, `answer6`, `mark6`, `answer7`, `mark7`, `answer8`, `mark8`, `answer9`, `mark9`, `answer10`, `mark10`, `answer11`, `mark11`, `answer12`, `mark12`, `answer13`, `mark13`, `answer14`, `mark14`, `answer15`, `mark15`, `answer16`, `mark16`, `answer17`, `mark17`, `answer18`, `mark18`, `answer19`, `mark19`, `answer20`, `mark20`, `answer21`, `mark21`, `answer22`, `mark22`, `answer23`, `mark23`, `answer24`, `mark24`, `answer25`, `mark25`, `answer26`, `mark26`, `answer27`, `mark27`, `answer28`, `mark28`, `answer29`, `mark29`, `answer30`, `mark30`, `answer31`, `mark31`, `answer32`, `mark32`, `answer33`, `mark33`, `answer34`, `mark34`, `answer35`, `mark35`, `answer36`, `mark36`, `answer37`, `mark37`, `answer38`, `mark38`, `answer39`, `mark39`, `answer40`, `mark40`, `score`, `correct`, `created_at`, `updated_at`) VALUES
(88, 'Admin1', NULL, 'Ulric Serrano', 'zoguj@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-14 05:04:46', '2025-08-14 05:04:46'),
(89, NULL, NULL, NULL, 'tazim2206@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-14 05:16:47', '2025-08-14 05:16:47'),
(90, NULL, NULL, NULL, 'alhasibrabbi894@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-14 08:00:39', '2025-08-14 08:00:39'),
(91, 'Admin2', NULL, 'Darryl Stephens', 'tuzytut@mailinator.com', NULL, NULL, 'Accusantium itaque d', NULL, 'Quo nisi eu ipsum Na', NULL, 'Reprehenderit est a', NULL, 'At id molestiae eum', NULL, 'Culpa saepe suscipi', NULL, 'Magnam reprehenderit', NULL, 'Excepturi excepturi', NULL, 'Voluptatum non exerc', NULL, 'Dolores laboris quis', NULL, 'Consequatur est ea', NULL, 'Quia veritatis dolor', NULL, 'Nostrud ea quia sunt', NULL, 'Dolorum ad eligendi', NULL, 'Minus molestiae comm', NULL, 'Velit in placeat re', NULL, 'Voluptas impedit do', NULL, 'Sit aperiam impedit', NULL, 'Necessitatibus quisq', NULL, 'Iste quae repellendu', NULL, 'Beatae irure accusan', NULL, 'she doesn’t have enough information', NULL, 'solar power in America', NULL, 'Fossil fuels are limited', NULL, 'it can be harnessed with simple technology', NULL, 'C', NULL, 'Pariatur Animi vol', NULL, 'Do earum perspiciati', NULL, 'Quidem cum iusto in', NULL, 'Optio quis iste eum', NULL, 'Excepteur a saepe iu', NULL, 'Similique sed eius v', NULL, 'Nobis sed sed tempor', NULL, 'In quia molestias co', NULL, 'Aut dolorem placeat', NULL, 'Consectetur corrupt', NULL, 'Quis est nostrud qui', NULL, 'In explicabo Reicie', NULL, 'Mollit ratione sint', NULL, 'Quod magnam iusto di', NULL, 'Animi est sit ut e', NULL, 'F', '0', '2025-08-14 08:50:12', '2025-08-14 08:50:12'),
(92, NULL, NULL, NULL, 'eftekharul.alam98@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-14 09:00:50', '2025-08-14 09:00:50'),
(93, 'Admin1', NULL, 'Keelie Washington', 'skbshvn@gmail.com', NULL, NULL, 'Ea sint debitis ear', NULL, 'Error reprehenderit', NULL, 'Reprehenderit nemo', NULL, 'Tenetur assumenda it', NULL, 'Qui lorem molestiae', NULL, 'A family without any pets', NULL, 'Reprehenderit ducimu', NULL, 'Ex ut repudiandae et', NULL, 'Occaecat dolor magni', NULL, 'Commodi dignissimos', NULL, 'Nulla architecto tot', NULL, 'Nam placeat dolores', NULL, 'Ipsum perferendis e', NULL, 'Autem dolor officiis', NULL, 'Necessitatibus sunt', NULL, 'Consequatur cillum q', NULL, 'Reiciendis nihil dol', NULL, 'Ratione voluptas nob', NULL, 'Minima qui autem est', NULL, 'Voluptate corrupti', NULL, 'Ut in voluptate reru', NULL, 'Et nostrud iste dolo', NULL, 'Omnis reprehenderit', NULL, 'Placeat et aut temp', NULL, 'Sapiente doloribus e', NULL, 'Provident eiusmod s', NULL, 'Neque unde officiis', NULL, 'Trousers', NULL, NULL, NULL, NULL, NULL, 'Personal consultation sessions', NULL, 'reduce your stress', NULL, 'set an overview of your assignment', NULL, 'team projects', NULL, 'lower class attendance rates', NULL, 'Wearing comfortable shoes', NULL, 'one weekly planner, one daily planner and one hour planner', NULL, 'one month', NULL, 'the detailed planning', NULL, 'helping you write better essays', NULL, 'F', '0', '2025-08-14 09:01:56', '2025-08-14 09:01:56'),
(94, NULL, NULL, NULL, 'RUBELALAM192105@GMAIL.COM', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-14 10:01:48', '2025-08-14 10:01:48'),
(95, 'Admin1', NULL, 'Kylan Dorsey', 'skbshvn@gmail.com', NULL, NULL, 'Pariatur Beatae eni', NULL, 'Dolor omnis quis aut', NULL, 'Excepturi minima dol', NULL, 'Voluptas veritatis q', NULL, 'Consequatur fugit', NULL, 'A family without smoker or drinkers', NULL, 'Omnis culpa quis au', NULL, 'Excepturi repellendu', NULL, 'Neque esse cum amet', NULL, 'Ut ducimus consequa', NULL, 'Officiis dignissimos', NULL, 'Reprehenderit rerum', NULL, 'Irure dolore repelle', NULL, 'Dolores sequi in non', NULL, 'Anim eligendi est ne', NULL, 'Sequi laborum minus', NULL, 'Aliquam alias ut vol', NULL, 'Cum dolorem quidem c', NULL, 'Id id libero error', NULL, 'Tempora qui et aut e', NULL, 'Dolore nihil eiusmod', NULL, 'Placeat iure numqua', NULL, 'Et odio amet in con', NULL, 'Suscipit pariatur N', NULL, 'Nobis harum ducimus', NULL, 'Dolorem beatae nesci', NULL, 'Consequatur sequi i', NULL, 'Shoes', NULL, NULL, NULL, NULL, NULL, 'Personal consultation sessions', NULL, 'set goals and try to achieve these goals', NULL, 'work faster', NULL, 'team projects', NULL, 'trouble at the library', NULL, 'Wearing comfortable shoes', NULL, 'one weekly planner, one daily planner and one hour planner', NULL, 'one week', NULL, 'the detailed planning', NULL, 'helping you write better essays', NULL, 'F', '0', '2025-08-14 10:24:52', '2025-08-14 10:24:52'),
(96, 'Admin1', NULL, 'MD AL HASIB RABBI', 'alhasibrabbi894@gmail.com', NULL, NULL, 'keiko', NULL, 'J06337', NULL, 'Advance English', NULL, '4 months', NULL, '5 weeks', NULL, 'A family without smoker or drinkers', NULL, 'sea food', NULL, 'tenison', NULL, 'faster', NULL, 'Afternoon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '1', '2025-08-14 13:37:49', '2025-08-14 13:37:49'),
(97, NULL, NULL, NULL, 'sadia123@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-14 15:25:27', '2025-08-14 15:25:27'),
(98, 'Admin1', NULL, 'Arman Sharif', 'arman.bae.innovation@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-14 17:10:54', '2025-08-14 17:10:54'),
(99, 'Admin1', NULL, 'Giacomo Dalton', 'jahod@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-14 17:12:07', '2025-08-14 17:12:07'),
(100, 'Admin2', NULL, 'Phelan Bishop', 'sexeviri@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-14 17:20:01', '2025-08-14 17:20:01'),
(101, 'Admin1', NULL, 'Heather Avery', 'qetyrizape@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-14 17:27:59', '2025-08-14 17:27:59'),
(102, 'Admin1', NULL, 'Stuart Rivas', 'mozyve@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-16 06:16:10', '2025-08-16 06:16:10'),
(103, 'Admin1', NULL, 'Jordan Knowles', 'fykuc@mailinator.com', NULL, NULL, 'Nobis quas cupiditat', NULL, 'Blanditiis sit iste', NULL, 'Non tempora incidunt', NULL, 'Et quia est quasi vo', NULL, 'Ea non dolorum velit', NULL, 'A big family with many young children', NULL, 'Fugiat veritatis vo', NULL, 'Eligendi pariatur R', NULL, 'Consequatur exceptur', NULL, 'Delectus sit molli', NULL, 'Quod illo et amet i', NULL, 'Dolor quis iste elig', NULL, 'Deserunt et deserunt', NULL, 'Velit culpa nostrud', NULL, 'Libero ipsum nostrud', NULL, 'Qui alias quas qui n', NULL, 'Laboriosam et illo', NULL, 'Voluptatem minus id', NULL, 'Officia eos ipsum v', NULL, 'Culpa voluptates max', NULL, 'Vitae itaque qui aut', NULL, 'Voluptates iure ut e', NULL, 'Deleniti voluptate l', NULL, 'Dolorum id in volupt', NULL, 'Excepturi consectetu', NULL, 'Ex in irure esse qu', NULL, 'Ut qui tenetur excep', NULL, 'Shoes', NULL, 'Study materials', NULL, 'Sportswear', NULL, 'Personal consultation sessions', NULL, 'set goals and try to achieve these goals', NULL, 'set an overview of your assignment', NULL, 'team projects', NULL, 'library books go missing', NULL, 'A regular one-hour session in their personal timetables', NULL, 'one term planner, one monthly planner and one weekly planner', NULL, 'one month', NULL, 'TV schedules', NULL, 'helping you write better essays', NULL, 'F', '0', '2025-08-16 06:41:14', '2025-08-16 06:41:14'),
(104, 'Admin2', NULL, 'Elvis Hobbs', 'wovejejesa@mailinator.com', NULL, NULL, 'Et dolores voluptati', NULL, 'Eu velit aut quibusd', NULL, 'Distinctio Aut reru', NULL, 'Reprehenderit elige', NULL, 'Vel sed do perspicia', NULL, 'Tenetur quo nihil id', NULL, 'Distinctio Minima d', NULL, 'Temporibus pariatur', NULL, 'Pariatur Expedita i', NULL, 'Nobis ipsum dignissi', NULL, 'Reprehenderit labor', NULL, 'Consequuntur volupta', NULL, 'Facilis quis autem s', NULL, 'Porro sit non id au', NULL, 'Nemo labore vel quis', NULL, 'Amet et omnis conse', NULL, 'Alias quia voluptate', NULL, 'Adipisicing minim ni', NULL, 'Officia accusamus et', NULL, 'Est aut voluptas nul', NULL, 'she doesn’t have enough information', NULL, 'alternative energy technology', NULL, 'Fossil fuels have an impact on the environment', NULL, 'it can be applied equally well in any country', NULL, 'C', NULL, 'Proident esse labo', NULL, 'Non ex eos enim omni', NULL, 'In dolores aut accus', NULL, 'Ea cum aute lorem ad', NULL, 'Debitis pariatur Ei', NULL, 'Nulla vero velit aut', NULL, 'Rem cum explicabo Q', NULL, 'Deserunt et dolores', NULL, 'Provident consequat', NULL, 'Natus ad beatae null', NULL, 'Consequuntur eiusmod', NULL, 'Autem est ratione a', NULL, 'Sint impedit minus', NULL, 'Expedita illum volu', NULL, 'Esse nobis magnam id', NULL, 'F', '0', '2025-08-16 06:50:36', '2025-08-16 06:50:36'),
(105, NULL, NULL, NULL, 'lexiconeltc@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-17 06:27:01', '2025-08-17 06:27:01'),
(106, 'Admin1', NULL, 'Pearl Donovan', 'bohida@mailinator.com', NULL, NULL, 'Consequatur asperio', NULL, 'Sint quis harum odio', NULL, 'Iusto quis nihil qui', NULL, 'Ullamco reprehenderi', NULL, 'Et voluptatem iure n', NULL, 'A big family with many young children', NULL, 'Animi quibusdam mol', NULL, 'Alias fugiat aut err', NULL, 'Id ad modi repellend', NULL, 'Quidem et dolorum vo', NULL, 'Reprehenderit blandi', NULL, 'Irure et debitis nob', NULL, 'Consequat Ea volupt', NULL, 'Soluta veniam rem o', NULL, 'Enim voluptatibus qu', NULL, 'Inventore amet esse', NULL, 'Maiores molestiae qu', NULL, 'Sunt hic id autem ul', NULL, 'Tempor nihil ad aut', NULL, 'Eligendi vitae in vi', NULL, 'Dignissimos quo labo', NULL, 'Commodi aut magnam m', NULL, 'Velit at reprehender', NULL, 'Commodo consequat T', NULL, 'Consequatur Vitae c', NULL, 'Cillum ipsam et sunt', NULL, 'Ad harum exercitatio', NULL, 'Study materials', NULL, 'Study materials', NULL, 'Shoes', NULL, 'Free glasses', NULL, 'set goals and try to achieve these goals', NULL, 'set goals and work in a systematic way', NULL, 'final term examinations', NULL, 'students get angry for no reason', NULL, 'Not being so stressed just because there is an assignment', NULL, 'one term planner, one weekly and one daily planner', NULL, 'one term', NULL, 'TV schedules', NULL, 'helping you write better essays', NULL, 'F', '0', '2025-08-17 07:30:01', '2025-08-17 07:30:01'),
(107, 'Admin1', NULL, 'Jermaine Mckee', 'nojuxow@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Books', NULL, 'Study materials', NULL, 'Books', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-17 07:58:38', '2025-08-17 07:58:38'),
(108, 'Admin1', NULL, 'Laura Rich', 'nipimibyc@mailinator.com', NULL, NULL, '1', NULL, '2', NULL, '3', NULL, '4', NULL, '5', NULL, 'A family without any pets', NULL, '7', NULL, '6', NULL, '7', NULL, '8', NULL, '1', NULL, '2', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, '1', NULL, 'Study materials', NULL, 'Study materials', NULL, 'Foods', NULL, 'Extra materials, such as a booklist', NULL, 'own a good watch', NULL, 'set an overview of your assignment', NULL, 'final term examinations', NULL, 'library books go missing', NULL, 'Making a very detailed plan of their daily activities', NULL, 'one term planner, one monthly planner and one weekly planner', NULL, 'half a week', NULL, 'TV schedules', NULL, 'helping you write better essays', NULL, 'F', '0', '2025-08-17 09:38:57', '2025-08-17 09:38:57'),
(109, 'Admin1', NULL, 'Arman Sharif', 'arman.bae.innovation@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-17 11:41:14', '2025-08-17 11:41:14'),
(110, 'Admin2', NULL, 'Maya Ramirez', 'wuvakyvyku@mailinator.com', NULL, NULL, 'Earum ullamco corrup', NULL, 'Hic at eos nobis qu', NULL, 'In aut eos voluptat', NULL, 'Pariatur Quaerat vo', NULL, 'Laborum est nostrum', NULL, 'Mollitia id ut sequi', NULL, 'Non itaque et in a n', NULL, 'Corrupti eiusmod du', NULL, 'Accusamus tenetur id', NULL, 'Sapiente excepturi e', NULL, 'In corporis ullam do', NULL, 'Dolore non consequat', NULL, 'Corrupti odio enim', NULL, 'Magna excepteur mole', NULL, 'Sapiente reprehender', NULL, 'Vel ullamco ullamco', NULL, 'Qui voluptas eligend', NULL, 'Enim sit provident', NULL, 'Ut excepteur quibusd', NULL, 'Aute elit voluptate', NULL, 'she doesn’t have enough time', NULL, 'solar-powered water heaters', NULL, 'Fossil fuels are expensive', NULL, 'it can be applied equally well in any country', NULL, 'C', NULL, 'Et fugiat consequatu', NULL, 'Lorem vero impedit', NULL, 'Ea et duis in possim', NULL, 'Sit perferendis labo', NULL, 'Est iusto aut tenetu', NULL, 'Sunt sed consequuntu', NULL, 'Tempor itaque id eni', NULL, 'Nulla eligendi hic p', NULL, 'Earum sint duis aper', NULL, 'Dolor animi numquam', NULL, 'Est sit adipisicing', NULL, 'Ex et illo sit numqu', NULL, 'Quis officia deserun', NULL, 'Culpa aperiam repel', NULL, 'Eveniet velit adipi', NULL, 'F', '0', '2025-08-18 05:46:15', '2025-08-18 05:46:15'),
(111, 'Admin1', NULL, 'MD AL HASIB RABBI', 'alhasibrabbi894@gmail.com', NULL, NULL, 'keiko', NULL, 'J06337', NULL, 'Advance English', NULL, '4 months', NULL, '5 weeks', NULL, NULL, NULL, 'sea food', NULL, 'tenison', NULL, 'faster', NULL, 'Afternoon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '1', '2025-08-18 06:51:28', '2025-08-18 06:51:28'),
(112, 'Admin1', NULL, 'Shakib hossain Shovon', 'info@metacademy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-18 11:48:34', '2025-08-18 11:48:34'),
(113, NULL, NULL, NULL, 'sourav102753@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-21 04:42:23', '2025-08-21 04:42:23'),
(114, NULL, NULL, NULL, 'xogypuwos@mailinator.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-21 11:28:54', '2025-08-21 11:28:54'),
(115, 'Admin1', NULL, 'Shoma Ghosh', 'shomacivil@gmail.com', NULL, NULL, 'Keiko', NULL, 'JO6337', NULL, 'Advances English', NULL, '20 weeks', NULL, '4 months', NULL, 'A family without smoker or drinkers', NULL, 'seafood', NULL, 'tannies', NULL, 'train', NULL, 'from beginning.', NULL, '90 days', NULL, '$30', NULL, 'embassy', NULL, 'tour', NULL, 'currency form', NULL, 'video cameras', NULL, 'BM276', NULL, 'railway station', NULL, '2', NULL, 'Australian dollars', NULL, 'cashier', NULL, '$50', NULL, NULL, NULL, 'jeans', NULL, '75 pounds', NULL, '50 pounds', NULL, '25 pounds', NULL, 'Trousers', NULL, 'Trousers', NULL, 'Trousers', NULL, 'Extra materials, such as a booklist', NULL, 'plan for every hour of the week', NULL, 'set goals and work in a systematic way', NULL, 'team projects', NULL, 'library books go missing', NULL, 'Making a very detailed plan of their daily activities', NULL, 'one weekly planner, one daily planner and one hour planner', NULL, 'one week', NULL, 'how to plan all available time', NULL, 'having more time to spend on relaxation and other activities', NULL, 'F', '8', '2025-08-22 07:00:24', '2025-08-22 07:00:24'),
(116, 'Admin1', NULL, 'Eftekher Ahammed Efty', 'ahammedefty@gmail.com', NULL, NULL, 'KEIKO', NULL, 'JO6337', NULL, 'ADVANCED ENGLISH STUDIES', NULL, '15 WEEKS', NULL, '4 MONTHS', NULL, 'A family without smoker or drinkers', NULL, 'SEA FOOD', NULL, 'TENNIS', NULL, 'CATCH TRAINS', NULL, 'TO STAY WITH', NULL, '90 DAYS', NULL, '30 POUNDS', NULL, 'CONFIRM NATIONALITY', NULL, 'PAGE 13', NULL, 'CURRENCY FORM', NULL, 'TOURIST EXPORT FORM', NULL, 'BM276', NULL, 'INTERNATIONAL STUDENT CARD', NULL, '12', NULL, 'AUSTRALIAN DOLLARS', NULL, 'CASHIER', NULL, '50 POUNDS', NULL, 'DEPARTMENTAL STORES', NULL, 'JEANS', NULL, '45 POUNDS', NULL, '75 POUNDS', NULL, '20 POUNDS', NULL, 'Sportswear', NULL, 'Trousers', NULL, 'Shoes', NULL, 'Extra materials, such as a booklist', NULL, 'plan for every hour of the week', NULL, 'set goals and work in a systematic way', NULL, 'essays', NULL, NULL, NULL, 'A regular one-hour session in their personal timetables', NULL, 'one term planner, one weekly and one daily planner', NULL, 'one week', NULL, 'how to plan all available time', NULL, 'having more time to spend on relaxation and other activities', NULL, '5', '17', '2025-08-22 07:03:51', '2025-08-22 07:03:51'),
(117, 'Admin2', NULL, 'rakibul', 'rakibulhasanshovon5@gamil.com', NULL, NULL, 'kaiko', NULL, 'smna', NULL, 'xnmnx', NULL, NULL, NULL, NULL, NULL, 'assdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'she can’t organise her presentation', NULL, 'solar power in America', NULL, 'Fossil fuels have an impact on the environment', NULL, NULL, NULL, 'B', NULL, 'xccz', NULL, NULL, NULL, NULL, NULL, 'zxczx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-23 04:06:04', '2025-08-23 04:06:04'),
(118, NULL, NULL, NULL, 'abubakars4209@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-23 04:26:40', '2025-08-23 04:26:40'),
(119, 'Admin1', NULL, 'Khandakar Rashedul Islam', 'khandakarrashedulislam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-23 06:47:13', '2025-08-23 06:47:13'),
(120, 'Admin2', NULL, 'Khandakar Rashedul Islam', 'khandakarrashedulislam@gmail.com', NULL, NULL, 'wadell', NULL, 'Robyn palace', NULL, '26368666', NULL, 'visa', NULL, '10 days', NULL, '35', NULL, 'unlimited kilometres', NULL, 'relative', NULL, 'automatic', NULL, 'driving license', NULL, '681', NULL, 'tunnels', NULL, '5', NULL, '115', NULL, 'penguin', NULL, '25 hours', NULL, 'government', NULL, 'construction', NULL, 'states', NULL, 'continent', NULL, 'she doesn’t have enough time', NULL, 'solar-powered water heaters', NULL, 'Fossil fuels have an impact on the environment', NULL, 'it can be applied equally well in any country', NULL, 'C', NULL, '40 litres', NULL, 'solar coil', NULL, '20', NULL, '65', NULL, 'foam', NULL, 'marketing', NULL, 'legal advice', NULL, 'witness', NULL, 'customer numbers', NULL, 'changeable', NULL, 'products', NULL, 'auckland', NULL, 'improve service', NULL, 'head office', NULL, 'receiption', NULL, '4', '12', '2025-08-23 07:17:47', '2025-08-23 07:17:47'),
(121, 'Admin1', NULL, 'Rashad Khan', 'tushar.fastdigital@gmail.com', NULL, NULL, 'keiko', NULL, 'jo6337', NULL, 'advance English', NULL, '8weeks', NULL, '4 month', NULL, 'A family without smoker or drinkers', NULL, 'see food', NULL, 'tennis', NULL, 'train', NULL, 'meets', NULL, '19days', NULL, '13 pounds', NULL, 'own ambac', NULL, NULL, NULL, 'form', NULL, 'advance', NULL, 'bm276', NULL, 'international student card', NULL, NULL, NULL, 'Australian doller', NULL, 'bank casher', NULL, 'shopping', NULL, 'big store', NULL, 'jence', NULL, '45', NULL, '15', NULL, NULL, NULL, 'Books', NULL, 'Trousers', NULL, 'Foods', NULL, 'Extra materials, such as a booklist', NULL, 'set goals and try to achieve these goals', NULL, 'set goals and work in a systematic way', NULL, 'time management courses', NULL, 'trouble at the library', NULL, NULL, NULL, NULL, NULL, 'half a week', NULL, 'how to plan all available time', NULL, 'improving your memory', NULL, 'F', '5', '2025-08-27 08:00:02', '2025-08-27 08:00:02'),
(122, 'Admin2', NULL, 'Shoma Ghosh', 'shomacivil@gmail.com', NULL, NULL, 'Waddell', NULL, 'Roby', NULL, '2638666', NULL, '455013928309', NULL, '10 days', NULL, '$25', NULL, '$35', NULL, 'relatives', NULL, 'automatic car', NULL, 'driving license', NULL, '681', NULL, '316 tunnels', NULL, '5', NULL, NULL, NULL, 'penguin and seas', NULL, '4353 km', NULL, NULL, NULL, '1 million', NULL, 'states', NULL, 'train continent.', NULL, 'she can’t organise her presentation', NULL, 'solar-powered water heaters', NULL, 'Fossil fuels are limited', NULL, 'it is infinite', NULL, 'A', NULL, '45-50 liters', NULL, 'solar coil', NULL, '20', NULL, '65', NULL, 'thick', NULL, 'service marketing', NULL, 'marketing', NULL, 'identify service', NULL, 'the service', NULL, 'difficult to marketing', NULL, NULL, NULL, 'the clients', NULL, 'improve services', NULL, 'hours of choice', NULL, 'representative', NULL, '4', '10', '2025-08-28 07:02:08', '2025-08-28 07:02:08'),
(123, 'Admin1', NULL, 'Asadullah Munna', 'amunna0007@gmail.com', NULL, NULL, 'KEIKO YUICHINI', NULL, 'JO6337', NULL, 'ENGLISH STUDIES', NULL, '15 WEEKS', NULL, '4 MONTHS', NULL, 'A family without smoker or drinkers', NULL, 'SEA FOOD', NULL, 'TENNIS', NULL, 'CATHCHING TRAINS', NULL, NULL, NULL, '90 DAYS', NULL, '2 MONTHS', NULL, 'EMBASSY', NULL, 'PAGE 13', NULL, 'CURRENCY FORM', NULL, NULL, NULL, 'BM276', NULL, 'INTERNATIONAL STUDENT CARD', NULL, '12', NULL, 'AUSTRALIAN DOLLARS', NULL, 'CASHIER', NULL, '50 POUNDS', NULL, 'DEPARTMENT STORE', NULL, 'JEANS', NULL, '45 POUNDS', NULL, '75 POUNDS', NULL, '20 POUNDS', NULL, 'Sportswear', NULL, 'Shoes', NULL, 'Trousers', NULL, 'Extra materials, such as a booklist', NULL, 'plan for every hour of the week', NULL, 'set goals and work in a systematic way', NULL, 'time management courses', NULL, 'library books go missing', NULL, 'A regular one-hour session in their personal timetables', NULL, 'one term planner, one weekly and one daily planner', NULL, 'one week', NULL, 'an overview of everything you need to do for several days', NULL, 'having more time to spend on relaxation and other activities', NULL, '4.5', '13', '2025-08-28 07:32:51', '2025-08-28 07:32:51'),
(124, 'Admin1', NULL, 'Nahida Rahman', 'diba.est.just@gmail.com', NULL, NULL, 'KEIKO', NULL, 'JO6337', NULL, NULL, NULL, '5 WEEKS', NULL, '4 MONTHS', NULL, 'A family without smoker or drinkers', NULL, 'SEA FOOD', NULL, 'TENNIS', NULL, 'CATCHING TRAIN', NULL, 'THIS AFTERNOON', NULL, '90 DAYS', NULL, '30 DOLLARS', NULL, NULL, NULL, 'PAGE 13', NULL, 'CURRENCY FORM', NULL, NULL, NULL, 'BM276', NULL, 'INTERNATIONAL STUDENT CARD', NULL, '12', NULL, 'AUSTRALIAN DOLLARS', NULL, 'CASIER', NULL, '50 POUNDS', NULL, 'DEPARTMENT STORES', NULL, 'JEANS', NULL, '45 POUNDS', NULL, '75 POUNDS', NULL, '20 POUNDS', NULL, 'Trousers', NULL, 'Shoes', NULL, 'Sportswear', NULL, 'Extra materials, such as a booklist', NULL, 'plan for every hour of the week', NULL, 'set goals and work in a systematic way', NULL, 'essays', NULL, 'students get angry for no reason', NULL, 'A regular one-hour session in their personal timetables', NULL, 'one weekly planner, one daily planner and one hour planner', NULL, 'one week', NULL, 'the detailed planning', NULL, 'having more time to spend on relaxation and other activities', NULL, '4.5', '14', '2025-08-28 07:36:34', '2025-08-28 07:36:34'),
(125, 'Admin1', NULL, 'MD SHOZIBUL ISLAM', 'shozib2011@gmail.com', NULL, NULL, 'kaiko', NULL, 'smna', NULL, '30', NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghg', NULL, NULL, NULL, 'gall', NULL, 'lite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hjuk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Foods', NULL, 'Foods', NULL, 'Foods', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-29 15:08:55', '2025-08-29 15:08:55'),
(126, NULL, NULL, NULL, 'rumiislam2535@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-02 04:50:22', '2025-09-02 04:50:22'),
(127, NULL, NULL, NULL, 'nyvufe@mailinator.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-03 06:31:18', '2025-09-03 06:31:18'),
(128, NULL, NULL, NULL, 'nevidegysi@mailinator.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-03 10:39:37', '2025-09-03 10:39:37'),
(129, 'Admin1', NULL, 'alh', 'alhasibrabbi894@gmail.com', NULL, NULL, '18', NULL, 'biologist', NULL, 'struck by lightning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GIVE AWAY', NULL, 'CASH', NULL, 'charity', NULL, 'SELL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'swimming', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MEXICAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-09-04 03:42:19', '2025-09-04 03:42:19'),
(130, 'Admin1', NULL, 'Nafisha', 'nafisahussain2512@gmail.com', NULL, NULL, 'keiko', NULL, 'JO6337', NULL, 'Advanced English', NULL, '20 weeks', NULL, '4 months', NULL, 'A family without smoker or drinkers', NULL, 'seafood', NULL, 'tannies', NULL, 'trains', NULL, 'from beginning.', NULL, '90 days', NULL, '$30', NULL, 'embassy', NULL, 'tour', NULL, 'currency form', NULL, 'video cameras', NULL, 'BM276', NULL, 'international student card', NULL, '2', NULL, 'Australian dollars', NULL, 'cashier', NULL, '50', NULL, 'big place', NULL, 'jeans', NULL, 'nylon', NULL, 'wash wear performence', NULL, 'cotton,wool and silk', NULL, 'Sportswear', NULL, 'Trousers', NULL, 'Shoes', NULL, 'Extra materials, such as a booklist', NULL, 'set goals and try to achieve these goals', NULL, 'make a list, plan for everything and try to stick to this plan', NULL, 'team projects', NULL, 'trouble at the library', NULL, 'Making a very detailed plan of their daily activities', NULL, 'one term planner, one weekly and one daily planner', NULL, 'one term', NULL, 'how to plan all available time', NULL, 'having more time to spend on relaxation and other activities', NULL, 'F', '9', '2025-09-04 04:40:12', '2025-09-04 04:40:12'),
(131, 'Admin1', NULL, 'Dipankar Dutta', 'dipankar.6026@gmail.com', NULL, NULL, 'KEIKO', NULL, 'JO6337', NULL, 'ADVANCED', NULL, 'FOUR MONTHS', NULL, 'FOUR MONTHS', NULL, 'A big family with many young children', NULL, 'MEAT', NULL, 'TENNES', NULL, 'USE TRAIN', NULL, 'TO TALK', NULL, '2 MONTHS', NULL, '2 MONTHS', NULL, 'EMBASSY', NULL, 'MONDAY', NULL, 'FORM', NULL, 'ADDITIONAL PAPER', NULL, 'BM276', NULL, 'INTERNATIONAL STUDENT CARD', NULL, '2', NULL, 'AUSTRALIAN DOLLAR', NULL, 'CASHIER', NULL, NULL, NULL, 'DEPARTMENTAL STORES', NULL, 'JEANS', NULL, 'ONCE', NULL, '20', NULL, NULL, NULL, 'Trousers', NULL, 'Shoes', NULL, 'Shoes', NULL, 'Extra materials, such as a booklist', NULL, 'plan for every hour of the week', NULL, 'make a list, plan for everything and try to stick to this plan', NULL, 'time management courses', NULL, 'library books go missing', NULL, 'A regular one-hour session in their personal timetables', NULL, 'one yearly planner, one weekly planner and one daily planner', NULL, 'one week', NULL, 'the detailed planning', NULL, 'helping you write better essays', NULL, 'F', '7', '2025-09-04 05:52:10', '2025-09-04 05:52:10'),
(132, 'Admin1', NULL, 'Rumi Akter Ruhi', 'rumiislam2535@gmail.com', NULL, NULL, 'KEIKO', NULL, 'J06337', NULL, '21C', NULL, '15 WEEKS', NULL, '4 MONTHS', NULL, 'A family with many animals or pets', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '1', '2025-09-04 09:06:03', '2025-09-04 09:06:03'),
(133, 'Admin1', NULL, 'Rumi Akter Ruhi', 'rumiislam2535@gmail.com', NULL, NULL, 'KEIKO', NULL, 'J06337', NULL, '21C', NULL, '15 WEEKS', NULL, '4 MONTHS', NULL, 'A family with many animals or pets', NULL, 'SEA FOOD', NULL, 'TENNIS', NULL, 'TRAINS', NULL, 'BACK', NULL, '90 DAYS', NULL, '30 POUNDS', NULL, 'OWN EMBASSY', NULL, 'YOUR TOUR', NULL, 'CURRENCY FORM', NULL, 'VIDEO CAMERA', NULL, 'BEM276', NULL, 'INTERNATIONAL STUDENTS CARD', NULL, '12', NULL, 'AUSTRILIAN DOLLARS', NULL, 'CASHIER', NULL, 'BOOKS', NULL, 'DEPARTMENT STORS', NULL, 'JEANS', NULL, '45 POUNDS', NULL, '20 POUNDS', NULL, '20 POUNDS', NULL, 'Shoes', NULL, 'Trousers', NULL, 'Sportswear', NULL, 'Extra materials, such as a booklist', NULL, 'plan for every hour of the week', NULL, 'set an overview of your assignment', NULL, 'time management courses', NULL, 'lower class attendance rates', NULL, 'A regular one-hour session in their personal timetables', NULL, 'one weekly planner, one daily planner and one hour planner', NULL, 'one month', NULL, 'how to plan all available time', NULL, 'having more time to spend on relaxation and other activities', NULL, '4', '10', '2025-09-04 09:29:35', '2025-09-04 09:29:35'),
(134, NULL, NULL, NULL, 'al@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 11:37:29', '2025-09-08 11:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `test_readings`
--

CREATE TABLE `test_readings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam` varchar(255) DEFAULT NULL,
  `user_id` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `test_id` varchar(2) DEFAULT NULL,
  `answer1` varchar(156) DEFAULT NULL,
  `mark1` varchar(2) DEFAULT NULL,
  `answer2` varchar(155) DEFAULT NULL,
  `mark2` varchar(2) DEFAULT NULL,
  `answer3` varchar(155) DEFAULT NULL,
  `mark3` varchar(2) DEFAULT NULL,
  `answer4` varchar(155) DEFAULT NULL,
  `mark4` varchar(2) DEFAULT NULL,
  `answer5` varchar(155) DEFAULT NULL,
  `mark5` varchar(2) DEFAULT NULL,
  `answer6` varchar(155) DEFAULT NULL,
  `mark6` varchar(2) DEFAULT NULL,
  `answer7` varchar(155) DEFAULT NULL,
  `mark7` varchar(2) DEFAULT NULL,
  `answer8` varchar(155) DEFAULT NULL,
  `mark8` varchar(2) DEFAULT NULL,
  `answer9` varchar(155) DEFAULT NULL,
  `mark9` varchar(2) DEFAULT NULL,
  `answer10` varchar(155) DEFAULT NULL,
  `mark10` varchar(2) DEFAULT NULL,
  `answer11` varchar(155) DEFAULT NULL,
  `mark11` varchar(2) DEFAULT NULL,
  `answer12` varchar(155) DEFAULT NULL,
  `mark12` varchar(2) DEFAULT NULL,
  `answer13` varchar(155) DEFAULT NULL,
  `mark13` varchar(2) DEFAULT NULL,
  `answer14` varchar(155) DEFAULT NULL,
  `mark14` varchar(2) DEFAULT NULL,
  `answer15` varchar(155) DEFAULT NULL,
  `mark15` varchar(2) DEFAULT NULL,
  `answer16` varchar(155) DEFAULT NULL,
  `mark16` varchar(2) DEFAULT NULL,
  `answer17` varchar(155) DEFAULT NULL,
  `mark17` varchar(2) DEFAULT NULL,
  `answer18` varchar(155) DEFAULT NULL,
  `mark18` varchar(2) DEFAULT NULL,
  `answer19` varchar(155) DEFAULT NULL,
  `mark19` varchar(2) DEFAULT NULL,
  `answer20` varchar(155) DEFAULT NULL,
  `mark20` varchar(2) DEFAULT NULL,
  `answer21` varchar(155) DEFAULT NULL,
  `mark21` varchar(2) DEFAULT NULL,
  `answer22` varchar(155) DEFAULT NULL,
  `mark22` varchar(2) DEFAULT NULL,
  `answer23` varchar(155) DEFAULT NULL,
  `mark23` varchar(2) DEFAULT NULL,
  `answer24` varchar(155) DEFAULT NULL,
  `mark24` varchar(2) DEFAULT NULL,
  `answer25` varchar(155) DEFAULT NULL,
  `mark25` varchar(2) DEFAULT NULL,
  `answer26` varchar(155) DEFAULT NULL,
  `mark26` varchar(2) DEFAULT NULL,
  `answer27` varchar(155) DEFAULT NULL,
  `mark27` varchar(2) DEFAULT NULL,
  `answer28` varchar(155) DEFAULT NULL,
  `mark28` varchar(2) DEFAULT NULL,
  `answer29` varchar(155) DEFAULT NULL,
  `mark29` varchar(2) DEFAULT NULL,
  `answer30` varchar(155) DEFAULT NULL,
  `mark30` varchar(2) DEFAULT NULL,
  `answer31` varchar(155) DEFAULT NULL,
  `mark31` varchar(2) DEFAULT NULL,
  `answer32` varchar(155) DEFAULT NULL,
  `mark32` varchar(2) DEFAULT NULL,
  `answer33` varchar(155) DEFAULT NULL,
  `mark33` varchar(2) DEFAULT NULL,
  `answer34` varchar(155) DEFAULT NULL,
  `mark34` varchar(2) DEFAULT NULL,
  `answer35` varchar(155) DEFAULT NULL,
  `mark35` varchar(2) DEFAULT NULL,
  `answer36` varchar(155) DEFAULT NULL,
  `mark36` varchar(2) DEFAULT NULL,
  `answer37` varchar(155) DEFAULT NULL,
  `mark37` varchar(2) DEFAULT NULL,
  `answer38` varchar(155) DEFAULT NULL,
  `mark38` varchar(2) DEFAULT NULL,
  `answer39` varchar(155) DEFAULT NULL,
  `mark39` varchar(2) DEFAULT NULL,
  `answer40` varchar(155) DEFAULT NULL,
  `mark40` varchar(2) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `correct` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_readings`
--

INSERT INTO `test_readings` (`id`, `exam`, `user_id`, `name`, `email`, `status`, `test_id`, `answer1`, `mark1`, `answer2`, `mark2`, `answer3`, `mark3`, `answer4`, `mark4`, `answer5`, `mark5`, `answer6`, `mark6`, `answer7`, `mark7`, `answer8`, `mark8`, `answer9`, `mark9`, `answer10`, `mark10`, `answer11`, `mark11`, `answer12`, `mark12`, `answer13`, `mark13`, `answer14`, `mark14`, `answer15`, `mark15`, `answer16`, `mark16`, `answer17`, `mark17`, `answer18`, `mark18`, `answer19`, `mark19`, `answer20`, `mark20`, `answer21`, `mark21`, `answer22`, `mark22`, `answer23`, `mark23`, `answer24`, `mark24`, `answer25`, `mark25`, `answer26`, `mark26`, `answer27`, `mark27`, `answer28`, `mark28`, `answer29`, `mark29`, `answer30`, `mark30`, `answer31`, `mark31`, `answer32`, `mark32`, `answer33`, `mark33`, `answer34`, `mark34`, `answer35`, `mark35`, `answer36`, `mark36`, `answer37`, `mark37`, `answer38`, `mark38`, `answer39`, `mark39`, `answer40`, `mark40`, `score`, `correct`, `created_at`, `updated_at`) VALUES
(52, NULL, NULL, NULL, 'tazim2206@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-14 05:20:40', '2025-08-14 05:20:40'),
(53, 'Admin2', NULL, 'Darryl Stephens', 'tuzytut@mailinator.com', NULL, NULL, 'C', NULL, 'E', NULL, 'C', NULL, 'A', NULL, 'Amet quis dolor omn', NULL, 'Enim nisi quidem qui', NULL, 'Non ipsum eiusmod e', NULL, 'Voluptate necessitat', NULL, 'TRUE', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'E', NULL, 'A', NULL, 'G', NULL, 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'who were in their last year of studies only', NULL, 'employs more graduates than most other organisations and companies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '5', '2025-08-14 08:56:35', '2025-08-14 08:56:35'),
(54, 'Admin1', NULL, 'Keelie Washington', 'skbshvn@gmail.com', NULL, NULL, 'A', NULL, 'B', NULL, 'E', NULL, 'D', NULL, 'Quasi minus amet no', NULL, 'Irure minim asperior', NULL, 'Numquam dolor in nem', NULL, 'Saepe quis eos dolo', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'FALSE', NULL, 'TRUE', NULL, 'FALSE', NULL, 'G', NULL, 'A', NULL, 'G', NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Both B and C', NULL, 'relatively expensive to operate in Britain', NULL, 'Both B and C', NULL, 'and renting a car part of the time can save money', NULL, 'are powered by the sun', NULL, 'biomass as a cooking fuel', NULL, 'in rural areas', NULL, 'are not as reliable as electricity from the national power grid', NULL, 'Praesentium quidem r', NULL, 'Non non harum volupt', NULL, 'Nisi minima sit ut', NULL, 'Incididunt minim rer', NULL, 'Consequuntur volupta', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'F', '6', '2025-08-14 09:07:12', '2025-08-14 09:07:12'),
(55, 'Admin1', NULL, 'Kylan Dorsey', 'skbshvn@gmail.com', NULL, NULL, 'A', NULL, 'D', NULL, 'E', NULL, 'A', NULL, 'Alias et sunt natus', NULL, 'Quasi aperiam praese', NULL, 'Aliqua Eiusmod volu', NULL, 'Est voluptatum omni', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'FALSE', NULL, 'TRUE', NULL, 'TRUE', NULL, 'F', NULL, 'F', NULL, 'E', NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'to go ahead with charging drivers to use roads', NULL, 'relatively cheap in Britain', NULL, 'make up about 20% of the cost of running a car', NULL, 'costs Londoners about £1,700 a year', NULL, 'provide light for 100,000 Indian villages', NULL, 'biomass as a cooking fuel', NULL, 'in rural areas', NULL, 'require skill to use', NULL, 'Facere modi harum es', NULL, 'Sit mollit voluptate', NULL, 'Est quidem voluptate', NULL, 'Ducimus sint ration', NULL, 'Quidem sint autem in', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'F', '5', '2025-08-14 10:26:26', '2025-08-14 10:26:26'),
(56, NULL, NULL, NULL, 'RUBELALAM192105@GMAIL.COM', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-14 10:48:30', '2025-08-14 10:48:30'),
(57, 'Admin1', NULL, 'MD AL HASIB RABBI', 'alhasibrabbi894@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-14 13:38:03', '2025-08-14 13:38:03'),
(58, 'Admin1', NULL, 'Arman Sharif', 'arman.bae.innovation@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-14 17:10:59', '2025-08-14 17:10:59'),
(59, 'Admin1', NULL, 'Giacomo Dalton', 'jahod@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-14 17:12:13', '2025-08-14 17:12:13'),
(60, 'Admin1', NULL, 'Stuart Rivas', 'mozyve@mailinator.com', NULL, NULL, 'C', NULL, 'D', NULL, 'A', NULL, 'C', NULL, 'Aliqua Dolor itaque', NULL, 'Ex aliquip adipisci', NULL, 'Est molestiae enim r', NULL, 'Ipsa minima magna t', NULL, 'TRUE', NULL, 'TRUE', NULL, 'FALSE', NULL, 'TRUE', NULL, 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '3', '2025-08-16 06:16:31', '2025-08-16 06:16:31'),
(61, 'Admin1', NULL, 'Jordan Knowles', 'fykuc@mailinator.com', NULL, NULL, 'C', NULL, 'B', NULL, 'C', NULL, 'C', NULL, 'Repudiandae non pers', NULL, 'Et necessitatibus ea', NULL, 'Sint laudantium er', NULL, 'Ipsum non laborum D', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'FALSE', NULL, 'E', NULL, 'F', NULL, 'A', NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Both B and C', NULL, 'relatively cheap in Britain', NULL, 'depend on how far you drive', NULL, 'will save money for British motorists, except in London', NULL, 'provide light for 100,000 Indian villages', NULL, 'solar power as a cooking fuel', NULL, 'in urban areas', NULL, 'require skill to use', NULL, 'Consequuntur nihil q', NULL, 'Et placeat est inve', NULL, 'Est iusto tempore', NULL, 'Ad consequatur cumq', NULL, 'Incidunt occaecat m', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'F', '2', '2025-08-16 06:42:24', '2025-08-16 06:42:24'),
(62, 'Admin2', NULL, 'Elvis Hobbs', 'wovejejesa@mailinator.com', NULL, NULL, 'C', NULL, 'E', NULL, 'A', NULL, 'E', NULL, 'Obcaecati proident', NULL, 'Eum sed dolore eos u', NULL, 'Culpa ipsa et saepe', NULL, 'Officiis obcaecati r', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'A', NULL, 'E', NULL, 'D', NULL, 'D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'studying a variety of subjects', NULL, 'was unpopular with business students', NULL, NULL, NULL, NULL, NULL, 'find objects in the sky that are not normally visible', NULL, 'can be used for surfing the Internet', NULL, 'uses lasers to help it avoid objects', NULL, 'has two pairs of hands', NULL, 'Iure aperiam rerum d', NULL, 'Dolorem adipisci dol', NULL, 'Id qui earum iusto', NULL, 'Excepturi aute rerum', NULL, 'Odit nisi laborum E', NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'F', '4', '2025-08-16 06:51:47', '2025-08-16 06:51:47'),
(63, 'Admin1', NULL, 'Laura Rich', 'nipimibyc@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-17 11:32:02', '2025-08-17 11:32:02'),
(64, 'Admin1', NULL, 'Laura Rich', 'nipimibyc@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-17 11:38:52', '2025-08-17 11:38:52'),
(65, 'Admin1', NULL, 'Laura Rich', 'nipimibyc@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'The cost of using a car rose by over ten per cent last year', NULL, 'Many people need cars to drive in London occasionally', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, 'Streetcar’s cars must be left at specific locations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-17 11:39:31', '2025-08-17 11:39:31'),
(66, 'Admin1', NULL, 'Arman Sharif', 'arman.bae.innovation@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'Most British people borrow money to help buy cars', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-17 11:41:30', '2025-08-17 11:41:30'),
(67, 'Admin1', NULL, 'Arman Sharif', 'arman.bae.innovation@gmail.com', NULL, NULL, 'D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '1', '2025-08-17 11:43:06', '2025-08-17 11:43:06'),
(68, 'Admin1', NULL, 'Arman Sharif', 'arman.bae.innovation@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'The cost of using a car rose by over ten per cent last year', NULL, 'Most British people borrow money to help buy cars', NULL, 'Many people need cars to drive in London occasionally', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-17 11:45:15', '2025-08-17 11:45:15'),
(69, 'Admin1', NULL, 'Arman Sharif', 'arman.bae.innovation@gmail.com', NULL, NULL, 'D', NULL, 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2', '2025-08-17 11:46:36', '2025-08-17 11:46:36'),
(70, 'Admin1', NULL, 'MD AL HASIB RABBI', 'alhasibrabbi894@gmail.com', NULL, NULL, 'B', NULL, 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '1', '2025-08-18 06:59:50', '2025-08-18 06:59:50'),
(71, NULL, NULL, NULL, 'sourav102753@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-21 05:42:24', '2025-08-21 05:42:24'),
(72, NULL, NULL, NULL, 'xogypuwos@mailinator.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-21 11:35:45', '2025-08-21 11:35:45'),
(73, 'Admin1', NULL, 'Shoma Ghosh', 'shomacivil@gmail.com', NULL, NULL, 'D', NULL, 'C', NULL, 'B', NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FALSE', NULL, 'TRUE', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'B', NULL, 'G', NULL, 'F', NULL, 'A', NULL, 'Most British people borrow money to help buy cars', NULL, 'Many people need cars to drive in London occasionally', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, 'Streetcar’s cars must be left at specific locations', NULL, 'Streetcar’s cars must be left at specific locations', NULL, 'Both B and C', NULL, 'relatively expensive to operate in Britain', NULL, 'depend on how far you drive', NULL, 'costs Londoners about £1,700 a year', NULL, 'are powered by the sun', NULL, 'biomass as a cooking fuel', NULL, 'in rural areas', NULL, 'are not as reliable as electricity from the national power grid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NOT GIVEN', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, '4', '12', '2025-08-22 07:44:09', '2025-08-22 07:44:09'),
(74, NULL, NULL, NULL, 'abubakars4209@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-23 04:33:19', '2025-08-23 04:33:19'),
(75, 'Admin2', NULL, 'Khandakar Rashedul Islam', 'khandakarrashedulislam@gmail.com', NULL, NULL, 'E', NULL, 'B', NULL, 'D', NULL, 'A', NULL, 'emerging middle-class', NULL, 'national statistics', NULL, 'household debt', NULL, 'children', NULL, 'FALSE', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'B', NULL, 'H', NULL, 'A', NULL, 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'studying a variety of subjects', NULL, 'was first choice in most categories', NULL, NULL, NULL, NULL, NULL, 'find objects in the sky that are not normally visible', NULL, 'is being produced as a limited edition', NULL, 'is programmable', NULL, 'can run', NULL, 'substantial celestial database', NULL, 'e-paper display', NULL, 'rows of pixels', NULL, 'entertain', NULL, 'five years ago', NULL, 'TRUE', NULL, 'FALSE', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'NOT GIVEN', NULL, '5.5', '19', '2025-08-23 08:15:08', '2025-08-23 08:15:08'),
(76, 'Admin2', NULL, 'Khandakar Rashedul Islam', 'khandakarrashedulislam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-08-23 09:30:37', '2025-08-23 09:30:37'),
(77, 'Admin1', NULL, 'Rashad Khan', 'tushar.fastdigital@gmail.com', NULL, NULL, 'D', NULL, 'C', NULL, 'E', NULL, 'B', NULL, 'rural poor', NULL, 'worker phones', NULL, 'tea', NULL, 'dominated', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'TRUE', NULL, 'B', NULL, 'G', NULL, 'F', NULL, 'E', NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'The cost of using a car rose by over ten per cent last year', NULL, 'Many people need cars to drive in London occasionally', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, 'Streetcar’s cars must be left at specific locations', NULL, 'Both A and C', NULL, 'relatively expensive to operate in Britain', NULL, 'Both B and C', NULL, 'and renting a car part of the time can save money', NULL, 'are very expensive to install', NULL, 'biomass as a cooking fuel', NULL, 'in rural areas', NULL, 'only provide four hours of light a day', NULL, 'light', NULL, 'energy', NULL, 'educated', NULL, 'duties', NULL, 'regularly', NULL, 'TRUE', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'TRUE', NULL, '4', '12', '2025-08-27 09:01:07', '2025-08-27 09:01:07'),
(78, 'Admin2', NULL, 'Shoma Ghosh', 'shomacivil@gmail.com', NULL, NULL, 'E', NULL, 'C', NULL, 'D', NULL, 'B', NULL, 'women\'s increasing', NULL, 'MasterCard’s findings fit', NULL, 'political empowerment', NULL, 'national pension system', NULL, 'FALSE', NULL, 'TRUE', NULL, 'FALSE', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'F', NULL, 'G', NULL, 'C', NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'studying a variety of subjects', NULL, 'was unpopular with business students', NULL, NULL, NULL, NULL, NULL, 'find objects in the sky that are not normally visible', NULL, 'cannot be bent', NULL, 'is programmable', NULL, 'can run', NULL, 'a substantial celestial database', NULL, 'retaining an image', NULL, 'visible pixels', NULL, 'judge', NULL, 'at Honda Company', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'TRUE', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'F', '8', '2025-08-28 08:02:23', '2025-08-28 08:02:23'),
(79, 'Admin1', NULL, 'Asadullah Munna', 'amunna0007@gmail.com', NULL, NULL, 'D', NULL, 'C', NULL, 'E', NULL, 'B', NULL, 'next big thing', NULL, 'a retailer', NULL, 'tea', NULL, 'dominated', NULL, 'NOT GIVEN', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'TRUE', NULL, 'TRUE', NULL, 'B', NULL, 'G', NULL, 'F', NULL, 'E', NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'The cost of using a car rose by over ten per cent last year', NULL, 'Many people need cars to drive in London occasionally', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, 'Streetcar’s cars must be left at specific locations', NULL, 'Both A and C', NULL, 'relatively expensive to operate in Britain', NULL, 'Both B and C', NULL, 'and renting a car part of the time can save money', NULL, 'are powered by the sun', NULL, 'biomass as a cooking fuel', NULL, 'in rural areas', NULL, 'are not as reliable as electricity from the national power grid', NULL, 'cell phones', NULL, 'useful light', NULL, 'remote locations', NULL, 'microcredit', NULL, 'dust', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, '5', '17', '2025-08-28 08:33:41', '2025-08-28 08:33:41'),
(80, 'Admin1', NULL, 'Nahida Rahman', 'diba.est.just@gmail.com', NULL, NULL, 'D', NULL, 'C', NULL, 'E', NULL, 'B', NULL, 'VIRTUAL', NULL, 'a registered agent', NULL, 'tea companies', NULL, 'dominated', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'FALSE', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'B', NULL, 'G', NULL, 'F', NULL, 'E', NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'The cost of using a car rose by over ten per cent last year', NULL, 'Many people need cars to drive in London occasionally', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, 'Streetcar’s cars must be left at specific locations', NULL, 'to go ahead with charging drivers to use roads', NULL, 'Both A and C', NULL, 'make up about 20% of the cost of running a car', NULL, 'costs Londoners about £1,700 a year', NULL, 'are powered by the sun', NULL, 'biomass as a cooking fuel', NULL, 'in rural areas', NULL, 'only provide four hours of light a day', NULL, 'LED lighting', NULL, 'useful light', NULL, 'remote', NULL, 'imported', NULL, 'the dust', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'TRUE', NULL, '5', '16', '2025-08-28 08:38:16', '2025-08-28 08:38:16'),
(81, NULL, NULL, NULL, 'rumiislam2535@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-02 05:51:47', '2025-09-02 05:51:47'),
(82, NULL, NULL, NULL, 'nyvufe@mailinator.com', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-03 06:32:22', '2025-09-03 06:32:22'),
(83, 'Admin1', NULL, 'alh', 'alhasibrabbi894@gmail.com', NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, NULL, 'CHARITY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FALSE', NULL, NULL, NULL, 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2', '2025-09-04 03:42:40', '2025-09-04 03:42:40'),
(84, 'Admin1', NULL, 'Nafisha', 'nafisahussain2512@gmail.com', NULL, NULL, 'D', NULL, 'C', NULL, 'E', NULL, 'D', NULL, 'shilling', NULL, 'registered agent', NULL, 'tea', NULL, 'dominated', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'FALSE', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'F', NULL, 'G', NULL, 'E', NULL, 'B', NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'The cost of using a car rose by over ten per cent last year', NULL, 'Many people need cars to drive in London occasionally', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, 'Streetcar’s cars must be left at specific locations', NULL, 'Both B and C', NULL, 'relatively expensive to operate in Britain', NULL, 'make up about 20% of the cost of running a car', NULL, 'and renting a car part of the time can save money', NULL, 'are powered by the sun', NULL, 'solar power as a cooking fuel', NULL, 'in rural areas', NULL, 'only provide four hours of light a day', NULL, 'dim', NULL, 'efficient', NULL, 'rural', NULL, 'incur heavy import', NULL, 'dust', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'TRUE', NULL, 'TRUE', NULL, '4.5', '14', '2025-09-04 05:35:45', '2025-09-04 05:35:45'),
(85, 'Admin1', NULL, 'Dipankar Dutta', 'dipankar.6026@gmail.com', NULL, NULL, 'D', NULL, 'C', NULL, 'E', NULL, 'A', NULL, 'biggest', NULL, 'text message', NULL, NULL, NULL, NULL, NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'FALSE', NULL, 'C', NULL, 'G', NULL, 'F', NULL, 'B', NULL, 'McCarthy claims people can become addicted to using cars', NULL, 'The cost of using a car rose by over ten per cent last year', NULL, 'Many people need cars to drive in London occasionally', NULL, 'Streetcar’s cars must be left at specific locations', NULL, 'The government wants to encourage people to go to work on foot or by bicycle', NULL, 'to go ahead with charging drivers to use roads', NULL, 'Both A and C', NULL, 'make up about 20% of the cost of running a car', NULL, 'costs Londoners about £1,700 a year', NULL, 'are powered by the sun', NULL, 'kerosene as a cooking fuel', NULL, 'in rural areas', NULL, 'only provide four hours of light a day', NULL, 'low-cost, energy-efficient lamps', NULL, 'light', NULL, 'remote', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'TRUE', NULL, 'NOT GIVEN', NULL, '4', '12', '2025-09-04 06:52:45', '2025-09-04 06:52:45'),
(86, 'Admin1', NULL, 'Rumi Akter Ruhi', 'rumiislam2535@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '0', '2025-09-04 09:06:12', '2025-09-04 09:06:12'),
(87, 'Admin1', NULL, 'Rumi Akter Ruhi', 'rumiislam2535@gmail.com', NULL, NULL, 'D', NULL, 'C', NULL, 'E', NULL, 'A', NULL, 'biggest', NULL, 'agent', NULL, 'tea', NULL, 'multibillion', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, 'FALSE', NULL, 'TRUE', NULL, 'TRUE', NULL, 'G', NULL, 'B', NULL, 'F', NULL, 'D', NULL, 'The cost of using a car rose by over ten per cent last year', NULL, 'Most British people borrow money to help buy cars', NULL, 'Streetcar operates in over 20 cities in Britain', NULL, 'Streetcar’s cars must be left at specific locations', NULL, 'The government wants to encourage people to go to work on foot or by bicycle', NULL, 'to become more democratic', NULL, 'relatively expensive to operate in Britain', NULL, 'make up about 20% of the cost of running a car', NULL, 'costs Londoners about £1,700 a year', NULL, 'are powered by the sun', NULL, 'kerosene as a cooking fuel', NULL, 'in rural areas', NULL, 'require skill to use', NULL, 'pollution', NULL, 'energy', NULL, 'remote', NULL, 'microcredit', NULL, 'night', NULL, 'TRUE', NULL, 'TRUE', NULL, 'FALSE', NULL, 'NOT GIVEN', NULL, 'FALSE', NULL, '4', '12', '2025-09-04 10:21:50', '2025-09-04 10:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `test_users`
--

CREATE TABLE `test_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mock_test_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_users`
--

INSERT INTO `test_users` (`id`, `mock_test_id`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dominic Fowler', '+1 (199) 779-5031', 'lexuhycew@mailinator.com', '2025-09-09 00:31:53', '2025-09-09 00:31:53'),
(2, 1, 'Hilel Valdez', '+1 (137) 209-6839', 'denuwy@mailinator.com', '2025-09-09 01:27:50', '2025-09-09 01:27:50'),
(3, 1, 'Kamal Jenkins', '+1 (858) 586-3718', 'kuruwa@mailinator.com', '2025-09-09 20:56:12', '2025-09-09 20:56:12'),
(4, 1, 'Lane Valencia', '+1 (639) 868-2359', 'tinyjaqyla@mailinator.com', '2025-09-09 21:01:02', '2025-09-09 21:01:02'),
(5, 1, 'Jonas Thornton', '+1 (741) 317-6743', 'jaco@mailinator.com', '2025-09-09 23:33:37', '2025-09-09 23:33:37'),
(6, 1, 'Plato Hammond', '+1 (625) 368-6319', 'xynys@mailinator.com', '2025-09-09 23:56:11', '2025-09-09 23:56:11'),
(7, 1, 'Iris Clayton', '+1 (364) 424-9563', 'vylylec@mailinator.com', '2025-09-10 04:13:46', '2025-09-10 04:13:46'),
(8, 2, 'Dominic Smith', '+1 (873) 439-3887', 'zirenuwu@mailinator.com', '2025-09-10 06:04:04', '2025-09-10 06:04:04'),
(9, 1, 'Dorothy Mason', '+1 (146) 832-4288', 'cugoty@mailinator.com', '2025-09-10 23:16:56', '2025-09-10 23:16:56'),
(10, 1, 'Tamara Frank', '+1 (371) 845-6239', 'hewori@mailinator.com', '2025-09-11 01:06:01', '2025-09-11 01:06:01'),
(11, 1, 'Tiger Wynn', '+1 (369) 157-5311', 'qogabihe@mailinator.com', '2025-09-11 04:30:22', '2025-09-11 04:30:22'),
(12, 1, 'Philip Moody', '+1 (647) 826-1832', 'sipyhih@mailinator.com', '2025-09-11 06:06:01', '2025-09-11 06:06:01'),
(13, 1, 'Cody Logan', '+1 (991) 435-8736', 'gywofuxyz@mailinator.com', '2025-09-12 09:21:44', '2025-09-12 09:21:44'),
(14, 1, 'Kasper Stout', '+1 (432) 292-6691', 'vacexobimo@mailinator.com', '2025-09-12 09:58:57', '2025-09-12 09:58:57'),
(15, 1, 'Camilla Gamble', '+1 (474) 161-3999', 'pivecu@mailinator.com', '2025-09-14 10:13:26', '2025-09-14 10:13:26'),
(16, 1, 'Oren Dudley', '+1 (195) 496-7872', 'quliweqe@mailinator.com', '2025-09-14 23:50:37', '2025-09-14 23:50:37'),
(17, 1, 'Giselle Clements', '+1 (949) 315-2588', 'ruvifo@mailinator.com', '2025-09-15 04:18:07', '2025-09-15 04:18:07'),
(18, 2, 'Alexandra Travis', '+1 (804) 158-3572', 'vohuh@mailinator.com', '2025-09-16 00:13:48', '2025-09-16 00:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `test_writings`
--

CREATE TABLE `test_writings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `test_id` varchar(255) DEFAULT NULL,
  `answer1` text DEFAULT NULL,
  `mark1` varchar(255) DEFAULT NULL,
  `answer2` text DEFAULT NULL,
  `mark2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_writings`
--

INSERT INTO `test_writings` (`id`, `exam`, `user_id`, `name`, `email`, `status`, `test_id`, `answer1`, `mark1`, `answer2`, `mark2`, `created_at`, `updated_at`) VALUES
(66, 'Writing One', NULL, 'Md Eftekharul Alam', 'eftekharul.alam98@gmail.com', NULL, NULL, 'The line graph shows the variation in number of population of India and China through the year 2000 to 2050.\r\nin the graph, a gradual rise can be seen in population of India throughout the year. Compared to India, growth rate of population decreased in China.\r\nin the early 2000s, India had less population than China. There can be seen a gradual increase in both lines. Although, China had the highest rate of growth of population compared to India, the population growth of India started to increase rapidly. In the mid 2030s, the both line intersected at a point just above 1,400 billions of population. after the 2030s, the number of population of China started to fall (bellow 1,400 billions), whereas, the population of India started to grow up to 1,600 billions.\r\nOverall, the population of China was much higher than India before the 2030s, but the population of India started to increase in a gradual rate after the 2030s.', NULL, 'Writing Task 2\r\nin recent times, the matter of many people undergoes life through either doing a job they dislike or doesn\'t have the skill for has sparked quite the debate. There are several reasons for this issue including problems like fewer career opportunities and lack of adequate from their early institutions.in this essay, arguments will be provided to understand the reasons behind this and the consequence that comes after.\r\nThe first reason is minimum career opportunities. Small scale towns often tend to have small business and job opportunities. For those who wish to live in their native area are often forced to do less paying jobs as there isn\'t much option left. Some are forced to work underpaying jobs due to requirement of experience in high paid job criteria. However, in some cases, some people are forced to do jobs they don\'t have the skill for as they mostly focus on incentives and salaries, not on the quality of work. As example, in Bangladesh, there can be seen migration of people to large cities for more career options. To afford the living costs, Most of them either end up doing a job they don\'t like or a job they don\'t have the enough skill for.in developing countries, most people prioritize salaries over job satisfaction and performance.\r\nThe second reason is lack of proper training initiatives or institutions. Most people focus on academic sides of their college, where they also should be focused or motivated to join training programs which can enhance their skills or learn new ones. Lack of vocational training facilities can lead to such problems\r\nAs a result, both the workers and the company can suffer from major consequences. Doing a job of dislike may lead to mental health issues like stress and fatigue. A worker who is either not satisfied with his job or don\'t have the required talent may underperform, which may decrease the productivity and sell of the company or intuitions. Additionally, less job satisfaction may negatively impact the personal lives of the workers with their family.\r\nIn conclusion,  incentive focused workers are prone to dislike their jobs or underperforms due to their lack of skill and often results in mental health problems and decline in production of company.', NULL, '2025-08-14 06:51:36', '2025-08-14 06:51:36'),
(67, 'Writing Two', NULL, 'Md. Tanvir Ahmed', 'tanvir190440@gmail.com', NULL, NULL, 'The bar chart illustrates the data about proportion of average smokers around the globe and adult male smokers in seven distinct countries in 2000 and 2015.\r\nOverall, the smokers number is decreasing than before. While average rate of smokers are decreasing in Armenia, Bangladesh, China, Mexico, and Australia, smokers from Egypt and Lebanon are rising. Smoking around the world  also decreasing in modern time.\r\nAverage percentages of chain smokers dropped just over 40% in 2000 to about 35% in 2015, around the globe. The proportion of male smokers in Armenia dropped significantly from about 67% to approximately 52%, in 2000 and 2015. The rate of adult smokers changed drastically in Bangladesh from 63% in 2000 to just under 40% in 2015.  In 2000, Mexico had about 365 adult smokers, while in 2015 it dropped to just over 20%. Australia experienced a little change in their proportion of male smokers. In 2000, it was nearly 305, while 17% in 2015. On the other hand, rate of smokers in China changed about 53% to nearly 51%, from 2000 to 2015.\r\nHowever, in Egypt and Lebanon percentages of smokers became high over time. In 2000, rate of male smokers in Egypt and Lebanon were about 35% and nearly 34% respectively, which boosted in 2015. In 1015, proportion of male smokers in Egypt was nearly 40% and in Lebanon it was about 35%.', NULL, 'It is undeniable that, call recordings and messages are very private data. It is claim that, government of a country could listen and read the call recording and messages of citizens, but other argues that these data are private and can\'t be use without the their concern. As far as I am concerned, recordings of call and text messages are private, but it can\'t be denied that, when it comes to the national security personal data could be used.\r\nSafety of a country should be the main concern of the official authorities of a country. To ensure the safety, the government, ought to access all the data they can find. For instance, if the authorities found some information about the a hijacking of a plane. For ensuring the safety of all the passengers, officials can access through all the messages and call history if that needed. In addition, while checking their call history and text messages, they also can access social media for finding some valuable information. Therefore, for securing citizens governments might check different personal belongings.\r\nHowever, text messages and call log is a personal data, which can be used by corrupted officials to blackmail different professionals. Moreover, these officers could used this data for making false messages for humiliating them. Furthermore, these data can also be used by terrorist, if governments can\'t protect it well. \r\nIn conclusion, personal data must be respected, however when it comes to the security of a country, then there is no data is private. All data can be accessible only by the higherups. For ensuring the safety of data, government could make a password for the private data for example call history, messages and social media and it should only be given to the users and the higherups only.', NULL, '2025-08-14 06:55:36', '2025-08-14 06:55:36'),
(68, 'Admin2', NULL, 'Darryl Stephens', 'tuzytut@mailinator.com', NULL, NULL, 'Fugit nemo nemo des', NULL, 'Illo quo excepteur v', NULL, '2025-08-14 08:59:04', '2025-08-14 08:59:04'),
(71, NULL, NULL, NULL, 'RUBELALAM192105@GMAIL.COM', 'Complete', NULL, NULL, NULL, NULL, NULL, '2025-08-14 11:50:51', '2025-08-14 11:50:51'),
(72, 'Admin1', NULL, 'MD AL HASIB RABBI', 'alhasibrabbi894@gmail.com', NULL, NULL, NULL, '6.0', NULL, '6.0', '2025-08-14 13:38:16', '2025-08-23 09:42:48'),
(73, 'Admin1', NULL, 'Arman Sharif', 'arman.bae.innovation@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-14 17:11:11', '2025-08-14 17:11:11'),
(74, 'Admin1', NULL, 'Stuart Rivas', 'mozyve@mailinator.com', NULL, NULL, 'Maiores accusantium', NULL, 'Omnis duis nostrud p', NULL, '2025-08-16 06:16:46', '2025-08-16 06:16:46'),
(75, 'Admin1', NULL, 'Jordan Knowles', 'fykuc@mailinator.com', NULL, NULL, 'Anim labore atque qu', NULL, 'Totam ipsum aut et e', NULL, '2025-08-16 06:42:43', '2025-08-16 06:42:43'),
(76, 'Admin2', NULL, 'Elvis Hobbs', 'wovejejesa@mailinator.com', NULL, NULL, 'Minima est consequun', NULL, 'Quo in aliquam labor', NULL, '2025-08-16 06:52:15', '2025-08-16 06:52:15'),
(78, NULL, NULL, NULL, 'sourav102753@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, '2025-08-21 06:49:28', '2025-08-21 06:49:28'),
(79, NULL, NULL, NULL, 'xogypuwos@mailinator.com', 'Complete', NULL, NULL, NULL, NULL, NULL, '2025-08-21 11:36:50', '2025-08-21 11:36:50'),
(80, 'Admin1', NULL, 'Shoma Ghosh', 'shomacivil@gmail.com', NULL, NULL, 'This diagram depicts a systematic way with step by step of the production of ethanol fuel by corn. In this essay, this diagrams all way will explain with a broad way.\r\nIn the first step, all corn is storing and in next, this storing corn is spent for milling. After this stage the milling corn is prepared for cooking process, and the duration of this cooking is exactly 4 hours. In this cooking step, water is mixed by this milling corn, and it will so be impactful for cooking process. Then finished the cooking process, the fermenting step will start which will continue for 48 hours. After the fermenting step the separating step will start where liquid and solid will separated by the machine. This solid portion is considering as the waste of this phenomenon which is not so impactful for environment. The liquid portion is the product \"Ethanol\" which is purifying in this step. Further, this purifying product will be storing and then transporting for the utilization step.\r\nThis all of the step for the production of Ethanol which raw material was corn. This essay describes this all procession of this production with a depicted scenario.', NULL, 'A group of people think that the in the sport department the physical strength proffers an abundant material for success, where another group of people think the mental strength is more terrific thing for sport success. In this essay, these two viewpoints will explain before represents my own perspective.\r\n\r\nPhysical strength proffers the systematic way of the sports as well as all of the sport man should gain this particular dexterous due to a horrible consequence of this sport competition. For instance, Cricket, Football, Handball, Tennies etc some sport has a terrible connection with the achievement of physical strength. A weak sport man cannot complete this task without the achievement of the physical strength. In this sector the analytical thinking, innovation, creativity deft, time management, leadership, communication mastery etc types of skill is not more essential than physical strength. The physical strength can proffer the capacity of this sport from the start to end.\r\n\r\nOn the other hand, the mental strength is also a terrific material for sport, but it depends on the sport type. All of the sport has no require the mental strength most as well as all of the sport have no require in the physical strength. In particular, DABA is a game where need more menta, l strength, analytical thinking capacity, thinking ability, IQ deft, thinking potentiality is most effective for this sport together with according to this all mastery will reach this sport men for a best ramification. This kind of play is open for all kind of people in particular, physical disabled people also. This kind of game is played the creativity skill.\r\n\r\nIn my opinion all of the sport man has to achieve this all dexterous and these are both physical and mental strength. This all combination will gather a terrible phenomenon for a sport man. All kind of sport have individual technique, but all sport man has to gain this mastery which will create a horrible history in the sport department.', NULL, '2025-08-22 08:25:04', '2025-08-22 08:25:04'),
(81, 'Writing One', NULL, 'Eftekher Ahammed Efty', 'ahammedefty@gmail.com', NULL, NULL, 'The provided illustration delineates the trend of demography of India and China from the period of 2000 till current time, along with forecasts for growth to the time slice of 2050.  \r\nOverall, the population grew in size from the beginning and is expected to rise in the near future, where India will take the lead and continue to rise but there will be an inverse trend for China.\r\nTo start with, India had a total population of 1 billion in the year 2000, which is expected to sharply rise to 1.6 billion within 2050. The trend suggests that it had a uniform rate of growth over the period, in contrast to China and surpassed the population size of China in the year 2030 and continue to grow.\r\nChina, on the other hand, initially had a greater population pool than India in the year 2000 but the trend slowed down over time. After 2030, the pattern of growth seems to change its direction and go downwards. It will have less than 1.4 billion population by year 2050.', NULL, 'Humans have to meet their sustenance need for survival which requires a way to earn by providing value to others. Often, they tend to go for fields in which they don\'t have any passion for and sometimes, they don\'t even have the capacity to adapt to the changes required to survive. This can be attributed to societal norms about particular fields, expectations from parents and relatives, or the need for fulfilling the basic needs. As a result, they go through severe aftereffects of this decision, in both mental and physical realm.\r\nFrom the onset of society, there were definitive roles for people to perform to survive and thrive. Over the time, the sophistication grew but the core concept remained the same which is that people had significantly more respect for particular tasks than others. This perception led people to go after those jobs and the human nature for consistency and familiarity led them to push them to drive their children to the same activity they used to perform. Hence, even though they don\'t have the desire or capability to seek that activity, they are forced to do so. Moreover, to have materialistic independence, one need to have enough money to meet the need of oneself as well as the family. These are the drivers of the status quo.\r\nConsequently, there are negative externalities for these decisions. Without enjoying in a workplace, life gets hectic, rigid, and monotonous, leading to inefficiency and unproductivity which are the obstacles of growth. Moreover, this leads to anxiety, stress, and depression. Furthermore, people who don\'t have the skillset for adaptation suffer from peer pressure, leading to identity crisis which can severely degrade the mental well-being. Finally, people face physical difficulties due to these things i.e., severe illness, nerve damage, high pressure etc.\r\nTo conclude, people who don\'t have the knack for working in an environment that doesn\'t suit them tend to suffer in the long run. The choices they make are a result of variety of reasons which can severely degrade the quality of life of that person in the long run.', NULL, '2025-08-22 08:52:46', '2025-08-22 08:52:46'),
(82, 'Writing One', NULL, 'Asif Islam', 'asifalif946@gmail.com', NULL, NULL, 'The graph illustrates the information about population of 2 countries from the year 2000 to the present day with projection for growth to the year 2050. In the comparison, India will increase more the population than China in 2050, where the both countries will start their population from the same point in 2030.\r\n\r\nIndia was started their population with 1000 billions in 2000. After 10 year it reached in 1200 billions. After 2 decades from 2000, the population was still increasing, and the total population was more than 1300 billions. In 2030, it will come in same point with China. After 2030 it will increase severely and will reach to 1600 billions in2050.\r\nChina was started with a massive population in 2000 as 1200 billions.  Next two decades it was increasing continuously with more than 1400 billions. After coming with same population in 2030 with India, the number will start falling down. In 2040, The population will be same but in 2050, it will have a great fall. It will come under 1400 billions where India will be on the top of the graph with 1600 billions. It will be an unexpected  differences.', NULL, 'Nowadays people are forcefully going through a life where they have to work that they hate and do not have any talent about the topic. Because of increasing unemployment people are getting stresses and forcefully going for the job. In the end of the result, it will be ruined as consequences.\r\n\r\nBecause of poverty, people are getting stress and coming out for find a job. At that time people are fully ready to do any kind of job where that person is uncapable. For example, A well-educated person is not getting a perfect job, but poverty is knocking at the door. At this time that person decide to drive a car. But he does not have any licence for this, and he is not expert to do that. In this case any time any accident can be happen. So, this type of things could be harmful for our society. \r\n\r\nFor being employed that will be very dangerous to do a job where that person does not have any expertism. Severely having a proper talent is much important. Abating the risk, we need to provide perfect skill in the appropriate place. otherwise, the situation could be ruined. For example, Last year a nurse did a murder of a child by using wrong injection.  The nurse was not accustomed about this. But she was forced by the seniors. That is how one mistake causes for a loss of a life.\r\n\r\nIn the interpretation of the discussion, this is vividly evident that, expert person should be placed in a perfect job. Otherwise, any mistake could be happened anytime. If it is not going to happen then everybody will have to face the consequences.', NULL, '2025-08-23 06:20:59', '2025-08-23 06:20:59'),
(83, 'Writing One', NULL, 'Zim Moon', 'zimmoon6@gmail.com', NULL, NULL, 'The graph illustrates the growth of population in India and China from the year 2000 to 2050. Overall, India\'s population had a rise each year from 2000 to 2050, and China\'s population had a rise too, but it slightly decreased after 2030.\r\n\r\nIn 2000, the population of India was less than the population of China. It was just 1 billion whereas in China it was more than 1.2 billion. From the year 2000 to 2010 both countries had increasing population. The Change started to occur in the year 2030. As the chart shows that the population of India will be as same as the population of China after in 2030. Between 2030 to 2040 the population growth of China will fall and there will be a slight decrease. However, the population growth of India will rise from 1.4 billion to 1.5 billion.\r\nIndia\'s population will continue to increase till 2050 as represented by the data but after 2030 China will have a slight decrease of population till 2050. In summary India\'s population growth will increase more than China.', NULL, 'Many people have to do work they do not like or have no talent for through all their life. It happens due to many reasons which includes family pressure, peer pressure and some other facts which would be discussed. Due to this they might end up having their mental health hampered and the consequence of this situation might get them in trouble. The reason why this happens, and the consequences will be discussed further.\r\n\r\nPeople do these things because of their family pressure. Even though they hate their work, still they have to do it to provide their family as there is less option for jobs. However, people who are interested in something else like the ones who wants to focus on their passion, they had to choose between following their passion and providing their family. More often they end up doing a job they hate, or they have no talent for. It is because in our society everyone is expected to provide more. For instance, Mr. Khairul was once a well-known band\'s vocalist but due to a family crisis he had to leave everything behind and join a corporate job he did not liked.\r\n\r\nAdditionally, the consequences can be worst. They had to work all day, long through all their life something they did not really like. Many of them are disturbed and this is affecting their mental health. They often get scolded by their higher officials due to lack of ideas as they do not have interest in that particular area. Some might lose their job too. For example, one of my colleague Mrs. Roy, used to work at my workplace, she did not like this job but due to family pressure she had to do it as her husband was paralysed, but she was fired from her job as she could not provide the ideas perfectly for her lack of interest in this job. She ended up starting a small business and it is making her life a lot more easier than the job.\r\n\r\nIn summary, People get into problems like this because of many reasons they had to sacrifice everything just so that they can provide their family and sometimes the consequences end up in good way, but most of the time it\'s worst.', NULL, '2025-08-23 06:21:20', '2025-08-23 06:21:20'),
(84, 'Writing One', NULL, 'GOUROB DAS', 'dasgourob2002@gmail.com', NULL, NULL, 'The following graph illustrates the increase of population of India and China between the fifty years of time span for the beginning of 2000 to 2050 properly.\r\n\r\nOverall, the population of India will steadily rise up from the year of 2000 to 2050 whereas the population of China will fluctuate during this time period. Despite that, a common point can be seen in the year of 2030 where the population rate will be the same for the two countries which is approximately 1450 billons.\r\n\r\nIn India, the population was one million in the year of 2000 which continuosly  grown up for the following next two decades and stands between the 1400 billions to 1500 billions in 2030. Similarly, the following dramatic increase will continue for the following next twenty years and it will stand around 1600 billions at the end of the time period which is in the year of 2050,.\r\n\r\nFor China, in 2000, the primary population was around 1250 billions which was higher than India. The following increase continued for the next thirty years . In 2030, an increasing point for India and a decreasing point for China comes to an intersection where the population will be same for the two countries which will less than 1500 billions but higher than 1400 billions. Following the next two decades the population of China will fall down and it will stand bellow than 1400 billions at the end of the year of 2050 after a smooth decline.', NULL, 'In order to live in this competitive society, a huge number of people are doing their work regularly where they exactly don\'t know what are they doing which actually they don\'t like to do. They are just doing this because they need to live in this society and lead their daily life. In this essay, I will discuss about the upsides and the downsides of this relevant topic.\r\n\r\nFirstly, passion always drives a man or women to his goal want to help to be successful in his or her life. For example, the young students are considered as the positive improvement of a country or nation. We always need to give the respect of their opinion and choice that in where are their passion for.  Let consider, an individual has no interest for a particular subject but if we led to him or her into this than the positive growth of his talent would not be possible for anymore. Probably he or she will complete his study by memorising or following other short rules, this is not enough for grow up a perfect potential person.\r\n\r\nSecondly, this random problem is so much obvious in our society. Our guardians  are often follow the same rule of our society where they don\'t want to give respect their child\'s opinion. Additionally, a common myth is that, our guardians always think that if their child is a boy, they will definately led him to the engineering or doctor rather choose his opinion that exactly what that child want to do in his future, what he dream for. As a result, his positive improvement gets hamper.\r\n\r\nIN conclusion, overcome this problem, the maturity level needs to grow up into the guardians and try to capable to understand that to give the respect of others opinion.Thus, the society will able to get some productive persons and a positive development will be possible then.', NULL, '2025-08-23 06:28:09', '2025-08-23 06:28:09'),
(85, 'Writing One', NULL, 'Taniya Azad', 'rubytaniyaazad2204@gmail.com', NULL, NULL, 'The graph illustrates the changes in the population of India and China from the year 2000 to the present day with projections for growth to the year 2050.\r\noverall, it can be seen that, the two regions showed different trends. The population of India increased over the time period, while the proportion of China fell over the period.\r\nLooking at the data sets, it is evident that, the population of India stood at 1000 billions in 2000. Then, the proportion of population of India increased 1200 billions in 2010. Then, it was dramatically increased 1400 billions by 2030. The population of India will show a big climb up to 1500 billions in 2050.\r\nTurning to data sets in more details, the population of China began at approximately 1250 billions in 2000. Then, it increased 1300 billions to 1400 billions between 2010 and 2020. In 2040 China showed a decline 1450 billons to 1400 billions by 2050.', NULL, 'It is believed by that some had their entire life doing work without any talent and being hate. In my opinion, \r\ni think people can achieve anything in their life by doing hardworking also set own goals.\r\nOn the one hand, individuals who actually gained knowledge from genetically or by born have special at any skills. In addition, they are good at their academic score beside it they also gained various skills, like computer skills. Computer skill is very important for education also working place. it is easy for them carry out this talent. However, people without talent face hassle in working place. They cannot even fast with the technology. They cannot manage their documents properly. The labour need have the primary education. Without talent they cannot change their position in companies. Their salaries can be vulnerable also they cannot get promoted because of their lack of knowledge. Worker changed it easily if they get to experience hand to hand skills. sometimes having skill can improve also changing working place. Profession like doctor need to have talent with knowledge as primary than having working life.\r\nOn the other hand, there are many reasons about this situation, education is the primary and secondary for every human needs. Moreover, not everyone gets proper education the higher education cost effect on the weak budget families. Without proper academic background they stay same work in a long time. They cannot even show improvement in their workplace. \r\nTo sum up, people with hardworking and having hand to hand experience can easily get rid of this situation and government should help employer by build many institutions where they can gain knowledge with various skills .', NULL, '2025-08-23 06:29:25', '2025-08-23 06:29:25'),
(86, 'Writing One', NULL, 'Chandra Debnath', 'chandromollika111@gmail.com', NULL, NULL, 'The given graph illustrates the proportion of population of India and China from the year 2000 to the current year with predictions for increasing population to the year of 2050. Overall, the date shows that Indian population will be increased day by day and China can control their population rising over the years.\r\nIn 2000, India started their amount of population with 1000 billions where China started it with below the 1300 billions. Day by day, Indian population increased and in 2030 it will be 1450 billions and at the same time China can share the same value of population. Moreover, Indian population will constantly raise in the end of the years, and it will stand with 1600 billons.\r\nIn contrast, China will control their population, and they can decrease the amount in 2025. In 2040 it will be almost 1440 billions, and it will constantly decrease. In 2050 it will 1400 billions which is far from the Indian population.', NULL, 'There are lots of individual doing their jobs in different sectors which they do not like or not their relevant sectors. There are loads of reason for this phenomenon. Today I would like to discuss some of reasons of this situation.\r\nFirstly, in today\'s era, digitalization has been grown, and Artificial intelligence take many of places where people do their best. For example, about 5-6 years ago we have needed an expert for video edit or photo edit, but in recent time they lost their jobs for Artificial intelligence. Now it can be more convenient for Artificial intelligence and also time saver and low bugged. That\'s why lots of company enrol this system and the employs loss their job and furthermore the company do not appoint any candied for that post. For this type of situation, people are doing that work what they have not any much talent or they are not much like. \r\nSecondly, in our country and all most all over the world the proportion of population are day by day increased but the job facilities are not raised as much as needed. That\'s why individuals cannot find the jobs in their relevant sectors. For Instance, for one job vacancy at least 10 persons apply for that position, and 1 can get the job and others candid then search another vacancy for them whatever that are not in their choice. Besides, sometimes people they cannot switch their hometown or want not to leave their family that\'s an another reason to work at any type of company. \r\nIn conclusion, sometimes it depends on individuals to choose their workplace and their relevant job sector. But nowadays, digitalization and Artificial intelligence also crop some way for people.', NULL, '2025-08-23 06:34:12', '2025-08-23 06:34:12'),
(87, 'Writing One', NULL, 'Upoma Debnath', 'upomadn2003@gmail.com', NULL, NULL, 'The given line graph compares the population growth between two countries including India and China from the year 2000 to 2050.\r\n\r\nOverall, Both the countries predictions of population growth will increase till 2050. India will be facing more population than China. In India, the highest grossing year will be 2050, while in China it will be 2030.\r\n\r\nRegarding the year 2000, the population growth was clearly higher in China than India, with approximately 1250 compared to 1000. In 2010, India accounted for 1100, whereas China grossed just above 1300. In 2020, India\'s population increased dramatically, besides China\'s population increased slightly stood at around above the 1300 and 1400, respectively.\r\n\r\nApart from the future predictions, in the year of 2030, India and China both will be in exact position, approximately 1450. After 2030, India will be increase constantly till 2050, and it will stand for 1600. And in China, there will be slight decrease compared to 2030, and in 2040 and 2050, China will go through just above 1400 and 1400.', NULL, 'In today\'s world, most people are facing such problems in their life that they have to go through by doing things which they don\'t like or feel less creative. This has become a widely debated issue in recent times, with many people concern for its impact on society. There has a lot of reasons regarding this issue, in this essay, I will present the reasons and consequences related to the topic.\r\n\r\nTo begin with, there has a several reasons related to this topic. Firstly, the family members are one of the most common reasons in this issue, they often want to put pressure on that their child must be secure a career, which is relevant to a society not for individuals. For example, in Bangladesh, around 66% of students, who belong to lower socio-economic class, they choose career according to their parents and it results sometimes they can\'t bear this pressure and attempt suicide. Moreover, financial conditions of a individuals are another reason that student choose their career with no interest, such as public university has limited seats and the private universities are quite expensive.\r\n\r\nAdditionally, many consequences lead in this issue in society. One of them is, after a certain time many students go to abroad to complete their higher study on possible subject. But then some university reject the offer letter because they don\'t have any experience related to the subject, this can be lead a negative impact on student\'s education. For instance, In Denmark, according to the year 2023 survey, graduate student will not get any offer letter if they don\'t have any experience related to their subjects. Secondly, there has less job security in some specific country like Bangladesh, they mostly prefer government job rather than any other sustainable job.\r\n\r\nIn conclusion, while this issue can be manageable by adopting balance approach by governments and societies also. Everyone has that right to secure their job or career according to their own choices.', NULL, '2025-08-23 08:53:35', '2025-08-23 08:53:35'),
(88, 'Writing One', NULL, 'Uzzal Sarkar', 'nuptuzzal@yahoo.com', NULL, NULL, 'The graph illustrates the population of India and China over 50 years from 2000 to the present day with estimation for the years of 2050. \r\n\r\nOverall, India dispute upward trends and China move forwarded for a certain period of time then decline for the upcoming times.  \r\n\r\nIn 2000, India\'s population was around 1000 billions which was 1.5 times lower than Chinese population. Indians population was rose sharply in 2020 which was over 1300 billions, However, Chinese population increased till 2020 then the trend will be levelled off for the next twenty years. In this min time, Indias population will be crossed in 2030 with over 1400 billion peoples. From 2030 to following 2050 Indians population growth will be improved dramatically to over 1600 billion of peoples. Meanwhile, Chinese population growth will be dip to under 1400 billions which was equal in 2015. \r\n\r\nIn conclusion, present day Indian and Chinese population is more likely similar, Nonetheless, India will be taken over top place from China in future.', NULL, 'Doing job for earning money is very common for all over the world while people sometimes have to work with no interest even if without any talent as well. There have many pops and corns which explain in the following paragraph. \r\n\r\nFirst and foremost, people choose job for high amount of salary apart from the job responsibilities. Sales and marketing job for engineering background people for example. Engineering peoples are good at machine learning, computer networking, programming etc. however, they are looking for high commission on sales. Moreover, some individuals get limited job offer from employer, Bangladeshi government job market for instance, applicant must have to choose the position based on their written exam score likewise job sackers do not have any other chose after job entry age limit. Furthermore, job security discoursed job holder to swich another one significantly. Primary school job for example, primary teachers get minimal wages along with job security, although some teachers have zero interest on youngster teaching. Finally, work life balance, some people work doing the same job throughout the life because of job location. Security job such as, some security officer works a few hours in a day and spend rest of the time with family. \r\n\r\nNevertheless, some people are very often to change the job they like. Computer engineer for instance, they turnover the job occasionally and catch the better one meanwhile nursing professional are changing one hospital to another with a short notice.  However, talented persons are not satisfied all the time for their job, in addition, they faced other obstacles e.g. job environment, internal politics, location etc. \r\n\r\nIn conclusion, many people working under the same boss for all their life even if they do not like them consequencely along with zero talents.', NULL, '2025-08-23 09:06:51', '2025-08-23 09:06:51'),
(89, 'Writing One', NULL, 'Sabbir Hasan Munna', 'sabbirhasan2999@gmail.com', NULL, NULL, 'The plot visualizes the population of India and China from the year 2000 to the present day with the prediction for growth to the year 2050. Each line shows upward trend for population growth throughout the years. \r\n\r\nOn the x-axis it has years with the interval of ten, on the other hand, y-axis representing total population in billion with the interval of 100 million.  The diamond shape represents data points for India and circle represent the data point for China. In 2000, for both countries the population was low compared to other years but, Chaina\'s population was higher compared to India. Considering 2000-2030 year frame, it can be seen that the growth rate is relatively high for India and China\'s growth rate is kind of making a plateu at end of the time frame which is 2030. At the year of 2030, the total population will be the same as predicted. \r\n\r\nIt has been visible that the China\'s population growth is declining from 2030 and afterwards while India\'s population tends to grow exponentially.', NULL, 'Many people go through life doing work that they hate or have no talent for because they do not have any other choices. And the main reason for that is because they have responsibility and they do not have enough time to figure out what they are really suitable for.\r\n\r\nLet us think about any society or a country, all the people are different, they have different personalities or talents. But the works or the positions are limited. A person can be good at anything such as a person can be good at astrophysics, but that does not mean he will have a job in his society or maybe in his country. The society offers what? a position of a banker or a teacher or maybe government employee. Consequently, that person had to choose one of those jobs even though he does not like or sometimes they have no ideas about the role. For example, In Bangladesh there is a lot of engineers or physicists, those people are talented, passionate and they are good at what they have learned for so many years of their life. So, what will they do? they need to support their family. Therefore, they get a job in other fields even though they hate it. \r\n\r\nThe consequences are huge and unimaginable, but the effects are not acute. It is like a slow poisoning for the society. Considering the mental health of that person, there is no way they can keep up with that. This can affect their family really bad as well as, the workplace. In a workplace if a person hates his job the productivity will decrease. \r\n\r\nOverall, the total satisfaction of doing a job mostly depends on if the person like the job or not and either they have the talent for the job or not. If these criteria match, then it is a grantee that everything from the quality of the job place or the persons productivity or mental health everything will increase.', NULL, '2025-08-23 09:14:52', '2025-08-23 09:14:52'),
(90, 'Admin2', NULL, 'Khandakar Rashedul Islam', 'khandakarrashedulislam@gmail.com', NULL, NULL, 'Khandakar Rashedul Islam\r\n\r\nThe given bar chart compares the number of females enrolled in school against 100 males among the primary, secondary and tertiary education levels in both developing countries as well as developed countries between 1990 and 1998. Overall, it is clear from the graph that females were dominating in tertiary education level in developed countries.\r\nIn the year of 1990, the girls enrolled in primary education accounted for 83 and 95 in developing and developed countries, respectively. In terms of secondary education, 72 girls per 100 boys were enrolled in developing countries, while 98 in developed countries which almost reached in targeted students. The number of girls reached a peak in tertiary education in developed countries at 105, while other was only 66.\r\nAnd the year of 1998, in both primary and secondary education females accounted for 96 and 99 in developed countries. In tertiary education females stood at 112, which was the highest in developed countries and 105 in developing countries that were reached over the target.', NULL, 'Khandakar Rashedul Islam\r\n\r\nIt is often argued that punishment like fine should not be given to the criminals. But other citizens believe that capital punishment should be permitted for the numerous serious crimes. In the following essay, I will discuss both-perception of this term. From my point of view, I agree that capital punishment is needed besides physical for most of the crimes that are increasing nowadays.\r\nCapital punishment is not the only way to reduce crime. It should not be allowed in all type of crimes. The reasons can be-it is difficult for poor people, who are involving crime like pickpocket, to give fine to authorities because of their financial crisis leads to this crime. Another possible reason can be it is easier to pay money for rich people against for their crimes. That\'s why by punishing like this, crime cannot be reduced from the societies. For instance, a crime that is conducted by a politician was overlooked by giving money to the authorities.\r\nOther view is that capital punishment should be permitted in most serious case. There are many reasons for this perception. One possible reason can be that victim, or his family can get help from the criminal for charging huge amount of money by the administrative to the criminals. For example, a victim person who is unable to do any job or work can get a chance to start business. Another reason is feared to loss huge amount of money can be helped not to occur a crime. \r\nTo conclude, two different perceptions are logical, but capital punishment should be allowed to help the victims and I agree that should be permitted.', NULL, '2025-08-23 09:18:47', '2025-08-23 09:18:47'),
(92, 'Admin2', NULL, 'Khandakar Rashedul Islam', 'khandakarrashedulislam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-23 09:30:47', '2025-08-23 09:30:47'),
(93, 'Writing One', NULL, 'Shaikh Farhana Faisal Pinki', 'farhanapinki.ku@gmail.com', NULL, NULL, 'The provided line graph elucidates the changes in population growth in two Asian regions between 2000 and the present day with projections for the year 2050. Overall, the chart delineates that both regions witnessed a rise in population while India\'s population increased rapidly and will continue to lead between 2030 to 2050.\r\n\r\nIn 2000, India had only 1000 billion people of total population. From 2000 to 2020, the number soared and reach at 1,300 billion with no downfall. Conversely, China had the highest population than India, however, the rise in population could not match with flow of India. In 2000, China had 1,200 billion people and reached at 1,400 by 2020, this indicates, a slight rise in total population growth.\r\n\r\nThe chart also estimates a projection where it is mentioned that from 2030n ton 2050 India \r\nwill absorb the highest position with 1,600 billion people, while China will experience a drop in population.', NULL, 'It is true that nowadays individuals are working in such sectors which are not preferable to them and have no knowledge on those sectors, this is because of earning money for livelihood and crisis in job markets.  \r\n\r\nThere are numerous reasons of doing job which is not favourite to the employers. The primary motivator is to earn money. In terms of leaving a standard and modern life, individuals need to work though in recent years it becomes very challenging for them to find a suitable job related to their educational background and qualities they have obtained in their past life. For example, country like Bangladesh, the major path of earning money is to do a job. In addition, highly valued professionals like doctors, engineers are also working in such sectors which are different from their academic background and the reason is to earn money, support their families and live a better life. \r\n\r\nThe second reason is insufficient vacancies in job market. Since population is increasing rapidly, it has placed an inefficient impact on the job market because factories and garments are not building following the demand of population. As a result, individuals become compelled to do job which they never have imagined. \r\n\r\nThe consequences of these grave issues are very detrimental. As the employers have no talent on their job field, they are unable to contribute to the company\'s production. As a result, promotions are kept limited for them and salary as well. Therefore, they become frustrated and lose the confidence of sharing ideas and use creativity, which lead them to suffer from anxiety and health problems like headache, heart attack and so on.\r\n\r\n In conclusion, in spite of facing these difficulties, people are leading their life by choosing the sectors which do not match with their qualifications, and they have to suffer in the long run though the blame is not theirs.', NULL, '2025-08-23 09:34:22', '2025-08-23 09:34:22'),
(94, 'Writing One', NULL, 'Enamul Haque Heera', 'heera.mkt@gmail.com', NULL, NULL, 'The figure here demonstrates the time series analysis of the number of people residing into two highly populated country - China and India over time. In the graph, the lines from the year 2000 to the present time are based on the real data and the continuity up-to the year of 2050 is a projected future estimation on the basis of the previous data and trend analysis.\r\n\r\nStarting from the initial point of the chart, it is observed that, at the start of this millennium China had a significantly larger, to be specific, 25% more population than that of India.\r\nThroughout the whole journey, from the beginning, till date, and even in future, the data of India reflects a steady rise in population. In contrast, the data from China in the chart displays a tendency of diminishing rate of population growth. According to the projection, the population remains steady during 2020 to 2045. Most interestingly, in the year of 2030, the population of India meets the exact number with that of China. After 2030, China encounters a negative rate of population growth which leads to the assumption that, in future China will have less population that it has in the past unlike India.', NULL, 'As professions, a lot of people are engaged in numerous activities to earn their livelihoods. Sometimes the talent and interest connect to the required skillsets with the professions. But unfortunately, there are a number of situations where it doesn\'t. \r\n\r\nFirstly, if the reason behind the situation can be analysed, it may find the employment crisis. Human beings are the only species who need to earn a livelihood for their living. Therefore, people need to start working to earn regardless of whether they like it or not. However, it is not always possible to get suitable work or job where a person is interested or skilled. Employment opportunities are not always being opened at which a person is skilled with. As a result, someone is pushed to start a job where s/he is not skilled. \r\n\r\nSecondly, looking forward to the consequences of people working at positions they hate, or they are not skilled for leads towards various kinds of outcomes. Considering the perspective of all stake holders of the work, the parties whose interest is somewhat involved with it can be affected for this situation.\r\n\r\nSpecifically, if considering a job of a teacher, the teacher himself or herself as a n employee, the institution s/he works, and the students of that institution can be the stake holders. Somebody might be a good graduate but not having enough interest in teaching. Similarly, may not possess those skills and talents which is required for teaching. This situation can lead to a strong state of negative job satisfaction for the teacher. That person can suffer from boredom and frustration. On the other hand, the students can have an experience to lack proper learning and inspiration. And finally, as a whole, the institution might grow a poor impression and image to the society.', NULL, '2025-08-23 12:01:17', '2025-08-23 12:01:17');
INSERT INTO `test_writings` (`id`, `exam`, `user_id`, `name`, `email`, `status`, `test_id`, `answer1`, `mark1`, `answer2`, `mark2`, `created_at`, `updated_at`) VALUES
(95, 'Writing One', NULL, 'Sharah Mehzabin', 'mehzabin.sharah@gmail.com', NULL, NULL, 'The graph illustrates the changes in the population of India and China, in billions, from the year, 2000 to 2025, along with the estimated changes till 2025. \r\nOverall, both the countries show a gradual increase in population till 2030. If we look closely, the growth of India\'s population is steeper, in comparison to China. While China already had more than 1200 billion people in the 2000\'s, India only had 1000 billion people.\r\nLooking closely, the people in China did not grow as drastically as India. Though both the countries did face an increase in the population in the last 2 decades, India\'s population jumped from 1000 to 1400 (in billions). On the other hand, the population of China showed a gradual increase from below 1300 to above 1400 in the same amount of time. \r\nIn the future, both the countries are estimated to have the same population in 2030, a little less than 1500 (in billions). However, in the next two decades, India and China do not show similar projections. It is predicted that China will face gradual decrease and drop to a little lower than 1400 billion. \r\nOn the contrary, India\'s projections show the similar trend to the previous years and increase gradually. In 2025, India is expected to have its population go up to 1600 and China is estimated to have its population drop down to around 1400 or less.\r\nFinally, China and India show a similar trend of increasing population; however, not at the same rate. India shows a continuous jump in the growth and is expected to follow the same trend in the future as well. But China in expected to face a decline in the growth in the future, even though showing growth in the early years.', NULL, 'I believe that working without passion or talent for something throughout life is a hard thing to do. Nonetheless, people still pursue working in the unwanted fields or places to put food on the table or to keep up with world. Though the consequences of this might be positive in the beginning, many people come to regret this at the end.\r\nPeople work to fulfil the basic needs, to look after themselves and their families. Sometimes, they need to adapt to the changing environment in the workplace or even start a job that they have no passion or interest for. For instance, Artificial intelligence is replacing many workers in the field, and to not get fired or to keep the particular job, the workers are forced to learn or adapt the mechanisms to operate AI. Or again, people pursue boring and uninteresting jobs because they need the income to feed their family and themselves. In cases like these, that particular job or work is not a choice. It is a reality of this competitive world.\r\nEven though people don\'t always have the freedom to choose their work or job, at some point of life, they become more irritated and start to despise their decision. Humans are emotional beings and as life continues to carry on, the hatred or disappointment keeps growing as well. It affects the mind and eventually has an impact on the body as well. They start to wither away and the people around them also start to get affected. \r\nIn my opinion, this is an issue that haunts most of the people. At least, the people I have observed growing up, have faced this kind of situations. Some of them, actually were able to get out of this loop by taking a risk. They left their million-dollar job and started their own business. Even if the income is lower, I have seen them live in tranquillity and contentment. \r\nThere are both upsides and downsides of living a life where we have to work on something against our will. However, it is a matter of choice and the support from the dear ones that can make the difficult path easier. If a person can show the strength and believe in themselves, then they can break aways from the loops of living and working in hatred and life a life of fulfilment.', NULL, '2025-08-23 12:02:17', '2025-08-23 12:02:17'),
(96, 'Writing One', NULL, 'Md Istiak', 'istiak.tex.niter06@gmail.com', NULL, NULL, 'The line chart reveals the growth projections from year 2000 to the year 2050 for the whole population of India and Chaina. Overall, we can see that india\'s population growth is following the upward trend continuous where else chaina\'s population growth stared to increase in the beginning and later on it shows a down tread.\r\n\r\nFirst and for most, In 2000 Chaina has 225 billons more population than India however at the end we illustrate India has 200 billion more population. In 2000 to 2050 India\'s population sky rocked from 1000 billions to 1600 billons and Chain started approximately 1250 billions shows some high growing rate till 2020 and then population growth steadily falls to till 2050. In 2030, the line pointed same position giving us a view of the population will be the same that a bit lower that 1450 billions. After 2030, India considerably going high in the population and China declining his growth till 2050.', NULL, 'In working life span, thousands of people working for their live hood by doing what they have no expertise and interest. People always doing that type of work because they have to carry their family, have responsibilities, and social good life exceptions. Most of the family have a single earning person, so fulfilling their desire one has to work for earning money not for satisfying themselves what he loves to do.\r\n\r\nHuman being a social creature, so people\'s nature is to be staying in a society. Every people born with some special talent on something and he always expect to do the work and try to acquire proper payments for his family. however, many times people cannot effort to do his family needs by working what he like. As an example, Rock dongus a British people, lived in Liverpool. He has a special talent in rock music, but as he borned in a poor family and father died in early he had to start working in cafe at the age of twelve, he had a dream to be a musician, but working form early age he had never opportunities to play rock music. He married at 20 and had 5 children, so he always used to work at cafe till dawn to dusk. he knew this life history after his death in 2020, and this news published in an article.\r\n\r\nWorking the job people may not pleasantly have a very scientific health impact. The research shows us 28% people seems depressed in whole life, it malfunctions body and they always caught by different diseases like heart failure, stroke, diabetes and so on. The most shocking news is that 88% heart attack patient cannot survive the heart failure.\r\n\r\nlots of people always doing the job he feels embarrassed and no idea for that job. The reason behind it their along consequences to carry their family needs and the future of their children.', NULL, '2025-08-23 12:02:52', '2025-08-23 12:02:52'),
(97, 'Writing One', NULL, 'Sayma Mehezabin bably', 'bablymehezabin@gmail.com', NULL, NULL, 'The chart illustrates the citizens of India and China from the year 2000 to current time with predictions of rise to the year 2050. \r\nOverall, the population of India shows incremental growth over the years, whereas the number of individuals in China has asserted growth at first then it is expected to go downward in the coming years. Furthermore, the quantity of population in China and India is assumed to be exactly same in 2030. \r\nStarting from 2000, the population of India, which was 1000 billion, became 1400 billion in 2025. It is expected to show steady growth and reach to 1600 billion in 2050. However, the people in China were increasing until 2025. It is expected to grow till 2030 and will start dropping after this year. The population is likely to go below 14000 billion in 2050. This shows that the citizens in India will keep rising in the future, but the residents of China are considered to fall within 2050.', NULL, 'A lot of individuals have professions in life that they do not like and do not possess suitable skills for it. This usually happens due to not choosing the right profession, and the lack of enough job sector that they are interested in compared to the huge amount of unemployment. This ultimately make them less qualified in their job and put them under pressure.\r\nEvery individual has their own area of interest. They are specialized in certain area which makes them the expert of that area.  People with particular ambitions feel more comfortable in working for their passion. Any kind of task feels less burden for them as it makes them motivated and happy to do those works. For instance, if someone is interested to play cricket but if they are burdened with the pressure to study and became a doctor, they will not be able to do it properly. In the long run, they will become depressed and fail at their professional endeavours. \r\nOn the other hand, if there is no adequate number of positions available for people to do their intended job, it will eventually force them to do something they were not looking for, so that they can earn enough money to survive. Such as, a person wants to work in the marketing department of MNCs as he has interest in building brands and developing customer relationships. But due to limited number of vacancies, he is allocated in the finance sector, which is beyond his capabilities, then he will not be able to show his best performance. At the end, he will be discouraged and will not get his due reward that he deserves. \r\nSo, the main reason of engaging in the wrong work is not being able to find the right job.  All individuals need to get the chance to choose the right occupation that match their qualifications and desires or else they will end up being dissatisfied in both their professional and personal life.', NULL, '2025-08-23 12:03:52', '2025-08-23 12:03:52'),
(98, 'Admin1', NULL, 'Rashad Khan', 'tushar.fastdigital@gmail.com', NULL, NULL, 'The diagrams show, the process of producing of ethanol oil from corn.\r\n\r\nOverall,\'\' there are 10 steps for making fuel, ten main is corn after that it pass step by step, after storing it send for washing than it cooked 4 hours, after that it took 48 hours for fermenting, then it become as liquid.  than it does purifying, storing.\r\n\r\nIn addition,\'\' for producing fuel corn is the main raw goods, first it collected than it has been stored a fixed place, than it sand a mile where it has washed. Beside it pure on the bull and cooking minimum 4hours , then it send another sector where it fermenting at 2dyas.\r\nMoreover,\'\'  now main process which is separating solid by liquid, and now makes Ethanol after 5 hours litter, which produced by corn , than it become storing at place where it ready for transporting and distribute all over the place where it need.', NULL, 'Many people believe that physical strength is crucial for win in sport. while others people argue that mental strength is more important rather than physical. In my opinion, planning is more significant than body strength, this essay will discus both sides. \r\nThe primary reason for important to mental strength is every cotch do a map before the match who where strong and based on it they make a plan for win. An example, a football match cotch is very valuable person because he/she has previous exp and he know the plan where a player good and bad they make their team as a plan like pap gardiola a famous cotch in football history for his mental strength. Moreover, if a player individuals strong by their own decision it bring win for a team. Hench, in 2020 FIFA world cup final every one remembered  this moment when Mbape was throw the ball towards the goal and this time only martinez there and he comes forward and save the goal it his own decision and he safe the team and win a world cup. \r\n\r\nOn the other hand, there are some reason without physical strength no one can be a good player. To begin with, When selector see a player without physical the can not select for the team. An example, Naymer is on of the unlucky player in the history he faced numerous time injury that is why he is not physically fit that is why he is out of the team. Furthermore, every athelatic need long time breath hold strength because when a player run for attack on opposite team he may faced back attack, after that, for tight ball crickiter  need singel  run that is why physical strength also crucial for every sector for player.                        \r\nIn conclusion, mental strength help us for track other team how to lose them and find their wick point and attack there, while physical health also significant for be a player and have to enough capacity to stay on match.', NULL, '2025-08-27 10:03:37', '2025-08-27 10:03:37'),
(99, 'Writing One', NULL, 'Shahnewaz Alam', 'shahnewazkpc@gmail.com', NULL, NULL, 'The pie chat illustrates what is the population of India and China from the year 2000 to the present day with a prediction for growth to the year 2050. Looking from an overall perspective, it is readily apparent that the population of India will grow over the year.  In the meanwhile, China\'s population will also grow but it will decline after a certain period of time. Both countries population will be same in a certain year. \r\n\r\nOn the one hand, the population of China was more than India in 2000. Their population will be remained same in 2025 and 2035. It was increasing steadily but the rate of growth was less than India and gradually it will experience a decline in the population number.  \r\n\r\nOn the other hand, in 2000, India\'s population was 1 billion in 2000 which was less than chain\'s population. India will overtake China after, 2030 and the population rate will be keep increasing till 2050. While China\'s population will be experiencing a decline.', NULL, 'People are involved in certain profession that they do not feel passionate about. Some of them does not require the common talent that are necessary for the job. They also hate their job. This is a common phenomenon because there are not enough job opportunities in the market. We will not get productive outputs from this kind of employees. \r\n\r\nThere is a lack of job opportunities in the job market. Many young individuals are unemployed even they have a bachelor\'s degree. Computer Science and engineering was a popular course and placement rate was also high. As a result, significant number of students started to take this course and now there is not enough job to give them. A large number of students does not have a career plan in their mind so the take unnecessary course in which they do not have any talent.  For example, many follow their friend or take advice from inexperienced personals. So, they get involve in a field where they do not have any interest or talent.\r\n\r\nWe will create a less productive work force which is one of the possible outcomes. They will be failed to finish their job in time. However, we cannot expect any good outcomes from them. It will waste money and time. It has a negative effect on the economy. Many employees will suffer from mental health problem, and they might feel they are not doing anything with their life. \r\n\r\nIn conclusion, Lack of proper guidance and unclear career plan are responsible for this kind of problem. As a consequence, the talented people will not get the jobs in which they have talent. The company will waste their money on unproductive employees. If this problem continues the overall economic growth will be hampered. The development might fall into a stalemate.', NULL, '2025-08-28 06:29:40', '2025-08-28 06:29:40'),
(100, 'Writing Two', NULL, 'Farhana shila', 'shilafarhana51@gmail.com', NULL, NULL, 'The given graph illustrates information about adult male smoker over certain period of time in different categories. Overall, Armenia and Bangladesh are the most noticeable feature in this graph in 2000 to 2015.\r\nWhile least significant figure is Australia percentage. \r\nAdult male smoker increased significantly between Armenia and Bangladesh which was almost 68% from 2000 to 2015. between Egypt was decreased in 2000n but after the period it increased again nearly 50 % in 2015. While Cuba increased rapidly just over 50% from 2000 t0 2015.In 2000, the proportion of world, Mexico, Australia increased gradually and 2015 their percentage was decreased which was 15% to Approximately 33%.\r\n\r\nHowever, the figure for Lebanon which was fall throughout the period just about 33% in 2000. Whereas in 2015 this percentage was 42% in 2015. While Armenia percentage was from 60% to 65% in 2000 this figure experience was higher than all features.', NULL, 'When it comes to this issue of call records, a significant number of inhabitants stands with different kind of views. While a great number of individuals take to the government should have access to people\'s mobile phone call records. Other seem to this information is personal and it should not be available without permission. This essay will discuss both sides and giving prior to reasoned conclusion.\r\n\r\nOn the one hand, call record not good for all time but there are some positive sides. A great number of merits come to this affair in many ways. The first and foremost point is that crime. Nowadays many people going to be involve some illegal work which is not good for our country. To cite an example, mobile phone is the best option for traking this person because police get all information from those call record. Another mentioning point is that political issue. Whenever government face any political problem then call records are playing a comprehensive role for solving this issue. To given an example, most of the time government need secrete information for their political system which all information government can be arrange in this system.\r\n\r\nOn the other hand, this essay\'s Anther view is some people think that it is private not be available without permission. For this statement my most efficient point is that family\'s information. this is extremely significant because any family do not want to share their personal conversations because that is private. For example, in today\'s world many people live in abroad for various purpose so they can talk to their friends or family and share many important information therefor call record is not appropriate for everything. Another worth mentioning point is that, working information like business related information which is very personal for all business people there are lots of private economic problem and so on. call record is not be better for it.\r\n\r\nTo sum up, having illustrated both sides of this view and i strongly agree with second statement because this statement is very helpful for local people.', NULL, '2025-08-28 06:41:53', '2025-08-28 06:41:53'),
(101, 'Writing Two', NULL, 'Shaikh Farhana Faisal Pinki', 'farhanapinki.ku@gmail.com', NULL, NULL, 'The provided bar graph elucidates the percentage of male smokers in America, Egypt, Lebanon, Bangladesh, Cuba, Mexico and Australia and also the average percentage of the world between 2000 and 2015. Overall, this chart delineates that percentage of adult male smokers of America, Bangladesh and Cuba had been increased along with the world while the percentage of smokers had been decreased in Egypt and Lebanon.\r\n\r\nIn 2015, America had 52% young male smokers, however the number had been climbed at 67% by 2000. Similarly, the percentage in Bangladesh and Cuba were 38% and 50% respectively by 2015 and these countries witnessed a rise in 2000 accounted for 60% and 52% respectively. Likewise, Mexico and Australia had also saw the growth of adult male smoker by 2000 which was 12% more than 2015. \r\n\r\nConversely, the number of male smokers had been declined in Egypt and Lebanon accounted for 33% and 30% respectively, which were about 50% and 43% in 2015. By contrast, the average percentage of world had been increased from 2015 to 2000 and reach at 42%.', NULL, 'There are differing opinion about whether records of cell phone or massages should be accessed by government or not. A number of people think that this data should be kept in private and not be allowed without permission, while others opinion is that for the benefits of the country, governments should have the access to this information. In this essay I will discuss both perspectives and state my opinion.\r\n\r\nOn the one hand, there are some particular reasons behind governments\' access of people\'s information. One of the major factors is safety of the common people. Numerous crimes, like smuggling, drugs businesses are done by corrupt people of the region, and they plan these over phone call or messages. Additionally, terrorists, and other kinds of harmful individuals stay in the country without any concern of the government, and they become successful of completing their tasks. If government have the right to get the records of phone calls and access to message, what is happening through the city and the people can easily be tracked by the government, by which many ordinary people\'s live can be saved. Moreover, the accused may be caught. Although having these effective causes, I believe that people\'s information of phone and messages should be kept private.\r\n\r\nOn the other hand, a number of people argue that records of phone calls and messages are private issues, and it should not be public as there are varieties of personal and professional data are shared. For instance, individuals share different problems like family issues, health problems and also professional challenges which they do not want to disclose. Additionally, every individual has secrets which they only share with his/her closest one. If the government can get the access, people become aware of exchanging problems and can not able to share with anyone. As a result, they will stop sharing problems which lead them to suffer from frustration and anxiety.  \r\n\r\nIn conclusion, despite having safety issues of the region as well as the ordinary people, personal calls and messages should be kept in private as there are more other crucial issues which have more significance than it.', NULL, '2025-08-28 07:19:26', '2025-08-28 07:19:26'),
(102, 'Admin2', NULL, 'Shoma Ghosh', 'shomacivil@gmail.com', NULL, NULL, 'This graph depicts three education sectors with the combination of the girl\'s education rates the number of girls per 100 boys) in the year of 1990 and 1998 together with the three educations are primary education, secondary education and tertiary education.\r\nIn the first stage of the primary education, in 1990 the developing countries girl education rate is 83 and in next in 1998 it was slightly change which was 87 per 100 boys. This matter is regard as trifling change. In the second stage this rate is critically change in 95 and 96 according to the year 1990 and 1998. In secondary education this rate is 72 and 82 in the initial stage but in next it changes at a random rate which is 98 and 99 in the year of 1990 and 1998 which is a horrible change. This second stage of the secondary education can complete its target approximately 100. In the last stage create a terrible ramification where this rate is outweighed from its approximate rate. In the tertiary education its rate was 66 and 75 in the year of 1990 and 1998 which is eased down from the previous rate. But in next it rise on 105 and 112 for 1990 and 1998 which get its pivotal point on its pick.\r\nIn the tertiary stage it completes its target and not only complete but also get its zenith point from its target value according to this expound of this graph. In the previous stage the girl\'s enrolled rate is so low from its target rate.', NULL, 'Forgiveness is regarded as an indispensable thing for any criminal, yet it turns into the capital punishment for this crime together with this punishment detrimental implication can inject this crime to engage with this crime again. The capital punishment is insisted harshly for better upcoming periods of this crime, but it will be unfinish without the forgiveness. In this essay, the two-perspective view will elucidate by analysing before illuminates my own viewpoints.\r\nA group of people expounds their deep ramification for criminal by the capital punishment. For instance, when a crime tries to murder a people, it is considered as a terrific crime for the victim as well as this country because this criminal will try to repeat this phenomenon again. Such matter profound thought\'s behind has a specific reason. This kind of serious crime has so terrible implication for this country. In this situation this countries government has to take critical step against this criminal. Furthermore, this government have to create an undeniable infrastructure for these issues where no one cannot get this opportunistic consequence in future. \r\nOn the other hand, an individual group of people support about the against of the capital punishment. In particular, student, people strife is a regular phenomenon in this daily basis. Some police are not able to control these issues. In this time the government have to take effective steps for this rudimentary stage. In this sector, capital punishment is not creating an interconnectedness with this conclusion. Traffic problem, financial issues, economic issues, student movement etc kind of deal is connected with the word forgiveness. Additionally, the government have to talk with these people and their issues which will be crucial for future.\r\nIn my perspective view, \"capital punishment\" is a word which can change the meaning startlingly within a few seconds according to this phenomenon.  Capital punishment is also essential, but it depend on place to place. This word is not completely turn into the solution of a crime always. The forgiveness and capital punishment\'s mixed combination will solve all of the issues which can critical or normal.', NULL, '2025-08-28 08:50:53', '2025-08-28 08:50:53'),
(103, 'Admin1', NULL, 'Asadullah Munna', 'amunna0007@gmail.com', NULL, NULL, 'The process diagram illustrates the production of ethanol from corn.\r\nOverall, it is clearly visible that there are 9 distinct stages in the ethanol fuel making procedure, commencing with the raw corns, and ending with the transporting to different locations.\r\nThe process begins with the raw corn, which is collected from a corn field. The corn is then stored in milling for the further process. Next, it is cooked for 4 hours at standard temperature and sufficient water is added during this stage to make the progress for fermentation. During fermenting, cooked corn fermented for 48 hours.\r\nIn the subsequent stage, after separating the liquid waste from the solid waste, the liquid then goes to the purifying of ethanol stage for 5 hours. After this, the purified ethanol is stored in a liquid holding jar. The final stage is when the ethanol is transported to different locations for selling it.', NULL, 'It is noticeable that the people who are more successful in sports career are those who not only maintain their physical strength but also maintain their mental strength as well. There are some people who argue that physical stamina is crucial for achievement in sport, while others believe that mental stamina is more valuable. I truly believe that both are equally important for success in sport. \r\nThe proponents who believe that physical strength is more important because a person can not perform better if he is unfit. Sports like football and rugby needs more muscle strength than mental ability. For example, Asian football players are ranked in the last, in terms of world ranking, because they are often losing the game to the players from Europe, who have a great strength. As a result, players focus more on getting physical stamina by eating healthy food and doing exercises to compete them. \r\nNevertheless, the advocates who support mental energy is more vital because it helps the sporty people to think wisely in very serious moment of a game. A good illustration of this idea is that games such as cricket needs a strategic planning to win, especially in the final match. For instance, in the last cricket world cup final, the Australia vs India match was unpredictable, cause Australia needed only 2 runs by 3 balls, but Indian captain MS Dhoni changed his plans as reorganized the players, consequently, it helped Indian team to win that match.\r\nTo sum up, all things considered, I firmly think that if people balance their physical strength along with mental stamina, they can achieve success in the long run.', NULL, '2025-08-28 09:36:19', '2025-08-28 09:36:19'),
(104, 'Admin1', NULL, 'Nahida Rahman', 'diba.est.just@gmail.com', NULL, NULL, 'Nahida Rahman\r\n\r\nThe process diagram depicts the industrial manufacturing of ethanol production, where corn is converted into final product for the delivery to the customers.\r\n\r\nOverall, the process consists of nine major steps, starting with collecting the corns and ending with transporting the ethanol to the market and to the customers.\r\n\r\nInitially, corns are collected from the corn fields and then are stored by sorting them. Next, the perfect corns undergo milling stage, where they are chopped into pieces to facilitate cooking. In the subsequent stage, water is added and they are cooked for at least 4 hours. Then, they are kept in a system called fermentation, where they get 48 hours to fully ferment to enhance the flavour fully.\r\n\r\nAfter that, liquid part is separated from the solid by product and purified for 5 hours to eliminate any contamination and ensure the quality. Finally, purified ethanol is stored in a required system and then transported for the delivery to the customers.', NULL, 'Some people believe that physical ability is more crucial to get success in games, whereas others opinion is for mental ability. Both have their own merits: however, I think a combination of two qualities can help an individual in achieving sports.\r\n\r\nPhysical strength is essential in terms of sports because it keeps the body active when performing. By achieving a strong physique one can do the practices more than being physically week and can do better in the final competition. For instance, the players who go to the gym, do weight training and yoga are generally stronger than the others who do not. Thus, they are recognised as good players and maintain their sports career for long time. Another advantage of being physically strong is consistency. When the sportsmen are involved in physical activities and train their bodies for the sports on a regular basis, they can perform well in every competition as well as get achievements. For example, the players who do not build their strength physically can not perform well on continuous basis.\r\n\r\nBesides physical strength, mental strength is also important for success in sports. Building mental ability can help gamers to be determined and focused by planning the schedule, training the brain to stay calm while the main sports is played. Moreover, mental ability helps to keep the body aligned and synchronises with one another to obtain the best output. For example, Sakib-Al-Hasan who is a famous Bangladeshi cricket player works on both qualities while playing and as a result, he is called one of the all rounder cricketer in the world.\r\n\r\nWhile some people support physical quality for success in sports, others give more emphasis on mental ability. From my point of view, both are equally significant because combination of both ensures a calm positive mentality with consistent and prominent results.', NULL, '2025-08-28 09:38:11', '2025-08-28 09:38:11'),
(105, NULL, NULL, NULL, 'rumiislam2535@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, '2025-09-02 06:07:26', '2025-09-02 06:07:26'),
(106, NULL, NULL, NULL, 'rumiislam2535@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, '2025-09-02 06:07:28', '2025-09-02 06:07:28'),
(107, NULL, NULL, NULL, 'rumiislam2535@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, '2025-09-02 06:07:29', '2025-09-02 06:07:29'),
(108, NULL, NULL, NULL, 'rumiislam2535@gmail.com', 'Complete', NULL, NULL, NULL, NULL, NULL, '2025-09-02 06:07:40', '2025-09-02 06:07:40'),
(109, 'Admin1', NULL, 'alh', 'alhasibrabbi894@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-04 03:43:48', '2025-09-04 03:43:48'),
(110, 'Writing Two', NULL, 'Dipankar Dutta', 'dipankar.6026@gmail.com', NULL, NULL, 'The bar chart compares about the percentage of adult male smokers in seven different countries including Armenia, Egypt, Lebanon, Bangladesh, Cuba, Mexico and Australia with the world average in the year 2000 and 2015.\r\nOverall, world average smokers number decreased from 2000 to 2015. But, except Egypt and Lebanon, all the remaining countries, the number of smokers decreased.\r\nIn 2000, world average of smokers was around 42% and in 2015, it was around 35% which decreased almost 7%. The highest number of smokers in 2000 were in Armenia which is almost 65% but in 2015 the number decreased to around 52%. The second highest smokers 2000 were in Bangladesh about 62% and in 20015, the number reduced to below 40%. In Cuba, Mexico and Australia, the average number of smokers in 2000 were about 52%, 35% and 16% whereas in 2015 the percentages became to nearly 51%, 20% and 16%. \r\n\r\nOn the other hand, from 2000 to 2015, the number of average adult male smokers in Egypt increased from nearly 34% to 48% and in Lebanon, it increased from about 33% to 44%.', NULL, 'Mobile phone is used by almost every person for personal, official and business purpose. Some people think that the government should have access to personal calls and messages of people. Other group of people think that government should require permission of the individual for getting access to the phone calls records and messages. Although it is mandatory for safety purpose, I believe that government should take permission for access to personal phone calls and message. \r\n\r\nGovernment duty is to ensure safety and security of all the citizens of a country. So, government needs to take some action against terrorists of the country. Terrorists have a strong network and sometimes it becomes extremely difficult to catch the terrorists. For doing this, government sometimes need to access to phone calls and messages of that particular group of people. Besides, some people often involved conspiracy against country to oust the government. These types of people are common, but it requires detective branch to investigate about people. So, tracking phone calls and messages may be the best way to capture these kinds of people. For instance, after the terrorist attack, police became successful to capture the masterminds of the attack by tracking phone calls. \r\n\r\nOn the other hand, access to phone call records and messages by government are loss of personal privacy. This type of phone call records and message can hamper the safety and security of the citizens. Besides, hacking a large amount of personal information is often become a news headline in many countries. Additionally, some corrupted government officers can abuse the opportunity and violate privacy of people. \r\n\r\nIn conclusion, terrorist activity and people working against country can be punished by phone calls and message but it should require the permission of the individual.', NULL, '2025-09-04 05:19:52', '2025-09-04 05:19:52'),
(111, 'Writing One', NULL, 'Md. Tanvir Ahmed', 'tanvir190440@gmail.com', NULL, NULL, 'The line charts illustrates the data about changes in the population of India and China, over the period of 50- year, starting from 2000 and forecasted by 2050. \r\nOverall, from the graph can be seen that, the population of India increased, while population growth of China decreased overtime. \r\n In 2000, the total population of India was 1000 billions, which shown a steady growth over time. The population reached it\'s peck stage, which was projected at 2050 and it was 1600 billions.\r\nIn contrast, the total population of China, projected a steadily growth until 2030 and it began to decrease by 2050. The total population of China stood at approximately 1250 billions in 2000 and experienced a smooth increase until 2030. In 2030, the population of China projected at over 1400 billions of people, while it witnessed a sight decreased and accounted for less than 1400 billions, which was projected at 2050.', NULL, 'In modern society having no talent in their jobs, as well as disliking own profession is the most pressing issue. The reason for these issues is varied and have different impacts on the society. In this essay I will outline the reasons why an individual hates their jobs and having no talent, though why they enter their job field, as well as I will discuss the impact of it on the society.\r\nFundamentally, there are two reasons, despite disliking their job, why a person enters their job field. Firstly, the most obvious reason is family pressure. Although some people like to do some unusual staff, like they want to do research, or they wanted to be an entrepreneur. While having family pressure, they can\'t go out with their plan. Secondly, those people didn\'t have any family support. Doing research is not an easy and short thing. Being successful in research and entrepreneur ship is a time-consuming process. So, family support is a must. For example, if a person wanted to be a businessman, first of all he had to invest in his business, and it\'s had to be a long-term process, otherwise, he couldn\'t be a successful businessman. On the other hand, some people doing a job, in which they didn\'t have any talent. The primary reason for this issue, is they didn\'t find any job, in which they are good at. Despite having family support, this type of people can\'t shine in life. For instance, one of my friend named Tanha, who worked as gardener, but she even couldn\'t tell me name of some flowers.\r\nHowever, there are a number of consequences of these issues. Perhaps the most serious consequences is, society lose the potential researchers in this process. By didn\'t having any family support, and feeling pressurized from the family, if a person worked what they didn\'t like, then the society might lose an innate talented person. For example, if a person loves to do research, but he started doing some other jobs, then the society  might lose a good researcher, who can develop a product and even run an industry. Furthermore, if a person can\'t find out his talent, then he can\'t be benefitted for the society.\r\nIn conclusion, having no talent and disliking one\'s job is an issue, which will continue to demand our attention for the foreseeable future. Society must support the talented individuals, and teacher should try to find out the talent which was hidden within oneself. If the authorities should not take any responsibilities, our society will face a crisis of talented individuals in near future.', NULL, '2025-09-04 06:38:42', '2025-09-04 06:38:42'),
(112, 'Admin1', NULL, 'Nafisha', 'nafisahussain2512@gmail.com', NULL, NULL, 'Nafisha\r\n04.09.2025\r\n\r\nThe diagram illustrates how a range of process involved to produce ethanol fuel from corn.There is various step from raw materials of ethanol fuel is corn to  all the categories( included:storing,milling,adding water ,cooking,fermenting,separating,purifying , re storing and prepare for marketing).\r\n\r\nAt the first stage , collect corn and stored it and then milling . Before rest in cook added water and cooked it for four hours.Compare to cooking it took more time in fermenting was about 48 hours. Subsequently,from fermenting material it apart liquid to solid product.After that process  ethanol purify for 5 hours.That stage produce ecxact product ethanol.\r\n\r\nSecondly, when all the procedure are done ethanol are produced and by storing it is cleard that all the process are successfully did. Finally, after store the ethanol it is now ready for transporting.All the proccess making ethanol are described above.', NULL, 'Nafisha \r\n04.09.2025\r\n\r\nNowadays it has become a controversial issue that individual thinks physical strength is crucial for success in sport while others argue that mental strength is more significant. This eassy will discuss both view and give opinion from my own perspective.\r\n\r\nIn  one sense, if we want to participate  any kind of sport activities there is a key thing that we have to be fit physically. Sports require physical fitness and flexibility before everything. In many case, we notice that before joining any type of sport we had to give some training  based on physical stability. If we are not able to physically strong we can not win any match.For instence, In sport ground if we can be physically strengthen we can easily fight against our opponent. Physical strength is more effective on spotrs.\r\n\r\n\r\nWhereas, mental strength play a vital role in sport .If we can mentally strengthen we will automatically physically fit. Mental strength is more signifacnt before everything. Sometimes we seems disapointed or depressed on sport because of lack of mental stability. Moreover,We feel encourage and cherish if we are mentally flexible which has enormous positivity on sports or other thing.Every successfull person had a story about mental fitness behind. Furthermore,people from all ages should stay motivated and delightfull to overcome challenges. In recent era depression is a common thing on young peoples.\r\n\r\nTo sum up, the physical and mental streangth both are preferable to sport .for example ,if we find one thing lack on sport either physical  strength or mental we could not able to success. In my own perspective, I  firmly believe that a balance approach should be taken. physical and mental strength both are requirable to sport widely.', NULL, '2025-09-04 06:42:54', '2025-09-04 06:42:54'),
(113, 'Writing Two', NULL, 'Md Mehedi Hasan Akash', 'md.mehedihasanakash01@gmail.com', NULL, NULL, 'The given chart depicts the percentage of adult male smokers in seven countries along with the world average in 2000 and 2015. At the beginning of 2000, Bangladesh and Armenia had the most smokers while Mexico and Australia have the lowest smoker among adult males and   the number has dramatically diminished in 2015.\r\n\r\nIn 2000, around 42% of adult male used to smoke while in 2015 the tendency has not decreased too much. Armenia and Bangladesh had the most adult smoker in 2000 while in 2015 it has remarkably decreased but Bangladesh had the lower percentage of smoker. Lebanon and Egypt had almost the same percentages of smoker in 2000. By contrast, in 2015 unlike the other countries, the smoking tendency had upsurged almost 10% while Egypt nearly touched 50%. The difference between 2000 and 2015 in Cuba is inconspicuous. It was almost same among the years. Mexico and Australia are on the same boat. In 2000, Mexico and Australia have the lower smoker than the other countries, but Australia had the lower smokers than Mexico. In contrast, in 2015, The adult male smoker\'s percentage in Australia and Mexico almost same while Mexico had little bit more.', NULL, 'It is widely contended that governments should have access to individual\'s mobile phone call records and messages for safety reasons, while others believe that this information is private and should not be available without permission. Though tacking call records and messages could give safety, but it is privacy that should not be shared with others even government.\r\n\r\nOn the one hand, Government ought to look at security checkup among the people and what they are doing is going against the government or not. This sort of activity can create threat for administration. For instance, an intelligence spy from other country can steal sensitive data from a secure place taking help from his origin but if administration authority keeps tracking this, they figure out malicious activity and can forcefully stop him to do this sort of activity. Secondly, in cases of kidnapping, missing persons, or natural disasters, tracking phones can help locate individuals quickly. It could be very helpful for the citizen and locals if the government helps them when they fall in danger. For instance, earthquake doesn\'t have any advance prediction so by keep tracking of messages and call record government can easily understand the situation and take action. \r\n\r\nOn the other hand, tracking people’s messages and calls invade personal privacy and weakens democratic values. People be afraid to share their own thought with others even in call or text messages.  To illustrate a political leader wants to share a thought with other but administration is keeping track of his messages here right of speaking has lost. What is more, data can be hacked anytime by black hat hackers. If government keep track of individuals call record and messages and those data would hack it can create national threat which leads to a cyber war. In a nutshell, it impairs individual\'s privacy severally.\r\n\r\nTo sum up, though taking track of call records and messages of individual can help the administration to identify the threats but due to privacy and personal thought sharing right , keeping track should not be done.', NULL, '2025-09-04 08:04:22', '2025-09-04 08:04:22'),
(114, 'Writing One', NULL, 'Md Hujjatul Islam', 'hujjatrahman75@gmail.com', NULL, NULL, 'The chart illustrates the citizen between India and China from the 2000 to till 2050 about projections and growth. Overall, both countries tried to reach its peak, but India Occupied the highest position than China,\r\nChina\'s highest Position of population was around 1450 and then it starts decreasing.\r\nHowever, starting from 2000 India has the lowest Population in that time but increasingly that continuously start following uptrend reaching Approximately 1450 and took a slight curve in 2030, In the Other hand China Starting with 1250 citizen approximately in 2000, Although China\'s population did not increase as fast as India, but it maintained the stability. Nevertheless, China and India had crossed each other in the population of 1400 above population in 2030. Secondly China had declined from that position to 2050 around 1395 population, but India still failed to control their population that increasingly blasting and going out of control in 2050 and has reached 1600 Approximately.', NULL, 'Nowadays we are living in a modern country where everyone has the access to explore about every passion, but it is not very rare to see a person working in a good position at a company, but he is not passionate about his work. \r\nGoing into the detail in our country there\'s a lot of employees who are working a long time doing the same task over and over, but interestingly that they were not supposed to do that, At first, they thought it would be more fun to do but at the mean time they did not, there could be Several  reason, it might happen for doing the same task repeating. Finally, there could be some other issues such as, lack of job opportunities, for entrepreneur lack of resources and facilities where they can start his own startup. Not only that there could be more problem like bribing, in our country we are very similar with illegal activity like taking a lot of money rewarding a higher position whether its government or private company. and obviously taking that kind of position do not meet their exceptions which is biggest reason for working persistently at the same time get bored.\r\nSo, there are such a way to overcome these problems. first people who wants to succeed in life should explore himself that where he is passionate in a particular niche. After that he have to make a plan and follow that roadmap through the whole struggle period. Despite it is not easy to stick that plan, but it is ideal to be with one plan.', NULL, '2025-09-04 08:08:58', '2025-09-04 08:08:58');
INSERT INTO `test_writings` (`id`, `exam`, `user_id`, `name`, `email`, `status`, `test_id`, `answer1`, `mark1`, `answer2`, `mark2`, `created_at`, `updated_at`) VALUES
(116, 'Writing One', NULL, 'Nasira Ahmed', 'nasiraahmed47@gmail.com', NULL, NULL, 'In the diagram. the population growth of India and China from the year 2000 to 2050 is shown. This demonstrates the projections for increasement of the population.\r\n\r\nIn the beginning of 2000, India had 1,000 billions, whereas China had around 1,300 billions of people. Though there is seen a steady increase in China with a population of more than 1,400 billions in 2030, India reached at the same point of population with a rapid increase. When China faced a fall during this growth after that increasement, India had a drastic growth which reached its peak having 1,600 billions of people in 2050. That\'s a huge difference from China as China had around 2,000 billions of people less than India at that time. This shows the scenario of population increasing in India and the fluctuation happened in China over the time. When India had rapid growth of population, China Faced both ups and downs. Overall, this describes the history of population projections for growth in India and China from 2000 to 2050.', NULL, 'In our surroundings, a lot of people are out there who lead a life doing work they dislike or they have no potential for. It\'s a common issue nowadays.\r\n\r\nPeople who belong from families where there is a financial crisis or do not have enough earning member, face family pressure to start work at an early age. They do not get the time to finish study and prepare themselves for their career and end up working in such a field where they feel they do not belong from.  For some people, there\'s a different case. Some feel the sense of responsibility at a young age. They are likely to depend on themselves for their expenses. So, this makes them start working very early, which could be not related to their interests. Besides, a common reason why people work they hate is lack of education facilities. Many students lose the opportunity to study in their desired subjects. Luck doesn\'t favour them and due to lack of work fields or vacancy in reputed and large companies, many talented and dreamers get to work in something they do not wish for.\r\n\r\nWhen a person works in a field or post he do not prefer in. a common thing happens, He surely earns money but gets bored of his life. People having a profession they do not have interest in, feel a sense of discouragement as they cannot perform well in that area. If someone works for something he has no passion for, then he cannot flourish or bloom in life. Repeated failure may come in their way which will lead to unhappiness and later on depression might surround him.  It will be an injustice to that person. Whether it\'s a job somebody hates or has no talent in, if one continues working in that field, one day he will feel unworthy. Consequently, this might suppress his real passion and kill the creative individual.\r\n\r\nIn conclusion, people might have many reasons to start working and continue doing so where their heart do not wish to, but they should never give up on their dreams. There are indeed such problems which one cannot avoid and be compelled to fit into a job where he feels being in an inappropriate sector. Whereas these problems can be solved to give people justice and help  to flourish in life.', NULL, '2025-09-04 11:05:47', '2025-09-04 11:05:47'),
(117, 'Writing One', NULL, 'Nasira Ahmed', 'nasiraahmed47@gmail.com', NULL, NULL, 'In the diagram. the population growth of India and China from the year 2000 to 2050 is shown. This demonstrates the projections for increasement of the population.\r\n\r\nIn the beginning of 2000, India had 1,000 billions, whereas China had around 1,300 billions of people. Though there is seen a steady increase in China with a population of more than 1,400 billions in 2030, India reached at the same point of population with a rapid increase. When China faced a fall during this growth after that increasement, India had a drastic growth which reached its peak having 1,600 billions of people in 2050. That\'s a huge difference from China as China had around 2,000 billions of people less than India at that time. This shows the scenario of population increasing in India and the fluctuation happened in China over the time. When India had rapid growth of population, China Faced both ups and downs. Overall, this describes the history of population projections for growth in India and China from 2000 to 2050.', NULL, 'In our surroundings, a lot of people are out there who lead a life doing work they dislike or they have no potential for. It\'s a common issue nowadays.\r\n\r\nPeople who belong from families where there is a financial crisis or do not have enough earning member, face family pressure to start work at an early age. They do not get the time to finish study and prepare themselves for their career and end up working in such a field where they feel they do not belong from.  For some people, there\'s a different case. Some feel the sense of responsibility at a young age. They are likely to depend on themselves for their expenses. So, this makes them start working very early, which could be not related to their interests. Besides, a common reason why people work they hate is lack of education facilities. Many students lose the opportunity to study in their desired subjects. Luck doesn\'t favour them and due to lack of work fields or vacancy in reputed and large companies, many talented and dreamers get to work in something they do not wish for.\r\n\r\nWhen a person works in a field or post he do not prefer in. a common thing happens, He surely earns money but gets bored of his life. People having a profession they do not have interest in, feel a sense of discouragement as they cannot perform well in that area. If someone works for something he has no passion for, then he cannot flourish or bloom in life. Repeated failure may come in their way which will lead to unhappiness and later on depression might surround him.  It will be an injustice to that person. Whether it\'s a job somebody hates or has no talent in, if one continues working in that field, one day he will feel unworthy. Consequently, this might suppress his real passion and kill the creative individual.\r\n\r\nIn conclusion, people might have many reasons to start working and continue doing so where their heart do not wish to, but they should never give up on their dreams. There are indeed such problems which one cannot avoid and be compelled to fit into a job where he feels being in an inappropriate sector. Whereas these problems can be solved to give people justice and help  to flourish in life.', NULL, '2025-09-04 11:08:35', '2025-09-04 11:08:35'),
(118, 'Writing Two', NULL, 'Kayum Mohammad Arafat', 'keyarafat@gmail.com', NULL, NULL, 'The picture illustrates the percentages of adult male smokers among seven nationalities as well as overall the globe in the two different years such as 2000 and 2015. It describes the highest decrease of Bangladeshi male smokers and highest increase of Egyptian male smokers and overall, the decline of male smoking people around the world.\r\n\r\nIn 2000, the highest percentage was approximately 65% which consists of the Armenian male people, whereas the lowest percentage was near about 30% which was from Australia. On the other hand, in 2015, the bigger amount was from Armenia and Cuba both which are more than 50%. But the less percentage of lower than 20% was from Australian male smokers.  The increment over the time was highest in Egyptian people that is from 35% to near about 50%. However, the fall in the percentage over time were in Armenia (60% to a little more than 50%), Bangladesh (from more than 60% to a little less than 40%), Mexico (almost 35% to 20%) and Australia (from approximately 30% to less than 20%). Cuba percentage was steady approximately little more than 50% over time. And the overall world percentage decreased from more than 40% to approximately near about 35% over the time.', NULL, 'A portion of the people think that governments must have the permission to track citizen\'s cell phone conversations and texts for the security purpose. While other part does not agree with this statement, rather they believe personal conversations and messages are private and it should not be accessed by the governments. Phone call records and chats are personal data. If anyone get another person\'s personal information, it would be a threat for the person. In my view, mobile phone call records and messages should not be accessed by governments unless the person has any criminal offenses that need to be investigated by security personnel. \r\n\r\nMobile call records and messages contain a lot of personal data like chat with family and friends, financial information such as account balance messages from bank, conversation with better half. This type of information is so much personal that is not for sharing. If government get the access of the opposition party members mobile access, they can take the political revenge without any hesitation. For example, a recent study found that, if the ruling party of a country gets the access of opposition, there are more that 50% chance to misuse the information. Numerous news is found nowadays that; mobile conversation is leaked by others which is the consequences of the access taken by authority. \r\n\r\nOn the other hand, there are some necessities of taking over the personal mobile data access by government. To track the terrorist, cellular device personal data can be a great option. Suppose in terms of identifying a serial killer, the security person needs to track the mobile phone first. To whom he talked, what type of chat he done with his friends and family, it needs to be investigated to find out the motive of the serial killing. Reducing the scam and fraudulent activities sometimes the security forces need to get the personal mobile data access.\r\n\r\nIn a summary, personal cellular data access has both the pros and cons. The perspective is more important. Without any reason if government access personal data, it could be hazardous for the mass people whereas to identify illegal activities and any crime, personal mobile data access is needed to boast up the investigation.', NULL, '2025-09-04 12:19:19', '2025-09-04 12:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `image`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Azra Haque', 'image1742110658.png', 'Section Name', '2025-03-03 13:33:18', '2025-03-16 11:37:38'),
(2, 'Casey Tyler', 'image1742110644.png', 'Veritatis adipisicin', '2025-03-03 13:34:58', '2025-03-16 11:37:24'),
(3, 'Kiara Meadows', 'image1742110633.png', 'Consequat Quaerat n', '2025-03-03 13:35:24', '2025-03-16 11:37:13'),
(4, 'Hamish Wiley', 'image1742110624.png', 'Amet harum et volup', '2025-03-03 13:35:43', '2025-03-16 11:37:04'),
(6, 'dfg', 'image1742893753.png', NULL, '2025-03-25 13:09:13', '2025-03-25 13:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'User',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `education`, `institution`, `email`, `type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arman', NULL, NULL, NULL, 'arman.p2c@gmail.com', 'Admin', NULL, '$2y$12$mjrwKj/Dn9i6kkCD0GkQ7eubD7DAK7aMbImrVRLz/vsrzlaUH1.Vq', NULL, '2025-01-12 12:07:07', '2025-04-12 09:28:54'),
(2, 'Emon', '01632109022', 'BBA', 'BL College', 'emon@gmail.com', 'User', NULL, '$2y$12$Z0Oq5gHTqoRZCs8.95uWMORlnKXQ6gKv0EuHLAzG9qZQiYEmWk1yS', NULL, '2025-01-20 10:29:44', '2025-01-20 10:29:44'),
(3, 'Test', '01632109022', 'HSC', 'Khulna', 'test@gmail.com', 'User', NULL, '$2y$12$cpkWoD/NcFbh2vAxSuSR3e4nmcH4MCxNo9xGcuqAERA3vc4UV8edC', NULL, '2025-01-22 13:30:29', '2025-01-22 13:30:29'),
(4, 'Rakib', '01677035212', 'Masters', 'Khulna University', 'iamrakibulislam86@gmail.com', 'Admin', NULL, '$2y$12$e1JCDWyCTGFuYvpVJDQXDet1EtiY.4.BAygKV8T1I60KsLtYsPALa', NULL, '2025-01-23 11:48:27', '2025-01-23 11:48:27'),
(6, 'Expert', '01703584483', 'IELTS', 'NSU', 'bdexperthustler@gmail.com', 'User', NULL, '$2y$12$CDPEcuU7Fbr9QwEde3ZaE.RykDsitwXWONgz19Pi2hT6Rh95rm036', NULL, '2025-02-28 11:01:30', '2025-02-28 11:01:30'),
(7, 'Arman', NULL, NULL, NULL, 'a@gmail.com', 'Content Manager', NULL, '$2y$12$HSxkJ7q5C14HXprFBMc2qufVdGo6SMGt9vIZhrh5j3eafN90C2si6', NULL, '2025-03-24 11:05:24', '2025-03-25 12:04:25'),
(8, 'Arman', NULL, NULL, NULL, 'b@gmail.com', 'Front Desk', NULL, '$2y$12$RPqeW/K34vYLgkgoiCir..M02ACYqrVV8w41phRJl9YHroD6VuirO', NULL, '2025-04-05 12:13:35', '2025-04-05 12:14:07'),
(9, 'Arman', NULL, NULL, NULL, 'arman.bae.innovation@gmail.com', 'Admin', NULL, '$2y$12$P1G0NX1nKGCboGQlz65vCurtEu8ExsNyVyTjMFmi9YF1iKGEVAQvq', '0YAt6UCqeYMY5f7uzoihtHtarmJcBjVISa0CStRCqNKuMxgbZ1X8H3BktuHd', '2025-04-20 17:46:48', '2025-08-14 04:19:46'),
(10, 'Rakib', NULL, NULL, NULL, 'islamrakib635@gmail.com', 'Admin', NULL, '$2y$12$7D62BsJfT9oCI5SdU96tc.jpDAOWTTHOITf8Trrx62edKBed2zKS6', NULL, '2025-04-26 08:44:39', '2025-04-26 08:45:32'),
(11, 'Shakib hossain Shovon', NULL, NULL, NULL, 'skbshvn@gmail.com', 'Admin', NULL, '$2y$12$KIQ2patIfQETZXHHrkRRCuXMoM9V8.YmRGQCcRAcPGaCLFjzASP8G', NULL, '2025-07-19 05:31:00', '2025-07-19 05:31:11'),
(12, 'Lexicon Admin', NULL, NULL, NULL, 'lexiconeltc@gmail.com', 'Admin', NULL, '$2y$12$YlL2ia2n.K.DIViM555YPuY8NkObkDEX34455N8UPKO2lxGsSfxWm', NULL, '2025-07-19 06:35:29', '2025-07-19 06:35:58'),
(13, 'Labib', NULL, NULL, NULL, 'nandoniklabib@gmail.com', 'Admin', NULL, '$2y$12$CGFyDpRFOLnpspmc/wtBaOL66y/Bbg1nNjbRHA6Tet9p22y4TA77S', NULL, '2025-09-09 00:26:59', '2025-09-09 00:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_user_id` bigint(20) UNSIGNED NOT NULL,
  `mock_test_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_no` int(11) DEFAULT NULL,
  `answer_text` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `test_user_id`, `mock_test_id`, `section_id`, `question_id`, `option_id`, `question_no`, `answer_text`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 1, 3, NULL, 1, 'Dolore fuga Aliquam', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(2, 10, 1, 1, 11, NULL, 2, 'Doloribus omnis aliq', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(3, 10, 1, 1, 15, NULL, 3, 'Veniam do fugiat e', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(4, 10, 1, 1, 17, NULL, 4, 'Illum reprehenderit', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(5, 10, 1, 1, 19, NULL, 5, 'Aut cupiditate eos', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(6, 10, 1, 1, 21, 3, 6, NULL, '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(7, 10, 1, 1, 21, 4, 6, NULL, '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(8, 10, 1, 1, 23, NULL, 8, 'In et dolorem conseq', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(9, 10, 1, 1, 24, NULL, 9, 'Sunt impedit conse', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(10, 10, 1, 1, 25, NULL, 10, 'Aut voluptatem volup', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(11, 10, 1, 1, 27, NULL, 11, 'Corrupti minim tota', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(12, 10, 1, 1, 28, NULL, 12, 'Aspernatur nesciunt', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(13, 10, 1, 1, 29, NULL, 13, 'Autem rem id dolores', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(14, 10, 1, 1, 30, NULL, 14, 'Ut nemo itaque molli', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(15, 10, 1, 1, 32, NULL, 15, 'Ipsa mollit est ali', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(16, 10, 1, 1, 33, NULL, 16, 'Vitae sint recusanda', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(17, 10, 1, 1, 34, NULL, 17, 'Consequatur ipsa f', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(18, 10, 1, 1, 36, NULL, 18, 'Ut voluptas libero a', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(19, 10, 1, 1, 37, NULL, 19, 'Sapiente quis labori', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(20, 10, 1, 1, 39, NULL, 20, 'Consequatur Incidun', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(21, 10, 1, 1, 41, NULL, 21, 'Quasi ipsum accusan', '2025-09-11 02:06:48', '2025-09-11 02:06:48'),
(22, 10, 1, 1, 42, NULL, 22, 'Laborum Neque qui n', '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(23, 10, 1, 1, 43, NULL, 23, 'Fuga Aut excepteur', '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(24, 10, 1, 1, 44, NULL, 24, 'Magnam deserunt dolo', '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(25, 10, 1, 1, 54, NULL, 25, 'Ut doloremque volupt', '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(26, 10, 1, 1, 56, NULL, 26, 'Est commodo id cons', '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(27, 10, 1, 1, 58, NULL, 27, 'Qui sunt veritatis d', '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(28, 10, 1, 1, 60, 6, 28, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(29, 10, 1, 1, 60, 7, 28, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(30, 10, 1, 1, 60, 10, 28, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(31, 10, 1, 1, 62, 12, 31, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(32, 10, 1, 1, 63, 15, 32, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(33, 10, 1, 1, 64, 19, 33, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(34, 10, 1, 1, 65, 24, 34, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(35, 10, 1, 1, 66, 30, 35, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(36, 10, 1, 1, 67, 33, 36, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(37, 10, 1, 1, 68, 36, 37, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(38, 10, 1, 1, 69, 40, 38, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(39, 10, 1, 1, 70, 43, 39, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(40, 10, 1, 1, 71, 48, 40, NULL, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(41, 10, 1, 2, 73, NULL, 1, 'A', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(42, 10, 1, 2, 74, NULL, 2, 'C', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(43, 10, 1, 2, 75, NULL, 3, 'C', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(44, 10, 1, 2, 76, NULL, 4, 'E', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(45, 10, 1, 2, 78, NULL, 5, 'Voluptatibus adipisi', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(46, 10, 1, 2, 79, NULL, 6, 'Dolore id quae mini', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(47, 10, 1, 2, 80, NULL, 7, 'Minus nobis fugit f', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(48, 10, 1, 2, 81, NULL, 8, 'Nulla rem et harum q', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(49, 10, 1, 2, 83, NULL, 9, 'FALSE', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(50, 10, 1, 2, 84, NULL, 10, 'NOT GIVEN', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(51, 10, 1, 2, 85, NULL, 11, 'FALSE', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(52, 10, 1, 2, 86, NULL, 12, 'TRUE', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(53, 10, 1, 2, 87, NULL, 13, 'NOT GIVEN', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(54, 10, 1, 2, 89, NULL, 14, 'E', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(55, 10, 1, 2, 90, NULL, 15, 'C', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(56, 10, 1, 2, 91, NULL, 16, 'E', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(57, 10, 1, 2, 92, NULL, 17, 'E', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(58, 10, 1, 2, 94, 53, 18, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(59, 10, 1, 2, 94, 54, 18, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(60, 10, 1, 2, 94, 55, 18, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(61, 10, 1, 2, 96, 61, 23, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(62, 10, 1, 2, 97, 67, 24, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(63, 10, 1, 2, 98, 70, 25, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(64, 10, 1, 2, 99, 75, 26, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(65, 10, 1, 2, 101, 79, 27, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(66, 10, 1, 2, 102, 80, 28, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(67, 10, 1, 2, 103, 84, 29, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(68, 10, 1, 2, 104, 87, 30, NULL, '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(69, 10, 1, 2, 106, NULL, 31, 'Incidunt laborum N', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(70, 10, 1, 2, 107, NULL, 32, 'Enim omnis ad possim', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(71, 10, 1, 2, 108, NULL, 33, 'Molestiae tempor omn', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(72, 10, 1, 2, 109, NULL, 34, 'Voluptas sed ab dolo', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(73, 10, 1, 2, 110, NULL, 35, 'Est dolor cum excep', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(74, 10, 1, 2, 112, NULL, 36, 'TRUE', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(75, 10, 1, 2, 113, NULL, 37, 'TRUE', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(76, 10, 1, 2, 114, NULL, 38, 'NOT GIVEN', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(77, 10, 1, 2, 115, NULL, 39, 'FALSE', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(78, 10, 1, 2, 116, NULL, 40, 'TRUE', '2025-09-11 04:00:28', '2025-09-11 04:00:28'),
(79, 14, 1, 1, 3, NULL, 1, 'Sapiente esse aliqu', '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(80, 14, 1, 1, 11, NULL, 2, 'Consequuntur minima', '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(81, 14, 1, 1, 15, NULL, 3, 'Est ad commodo ut Na', '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(82, 14, 1, 1, 17, NULL, 4, 'Culpa dicta voluptas', '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(83, 14, 1, 1, 19, NULL, 5, 'Vel est labore eius', '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(84, 14, 1, 1, 21, 1, 6, NULL, '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(85, 14, 1, 1, 21, 2, 6, NULL, '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(86, 14, 1, 1, 21, 4, 6, NULL, '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(87, 14, 1, 1, 23, NULL, 8, 'Quas deserunt earum', '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(88, 14, 1, 1, 24, NULL, 9, 'Iusto saepe eu non e', '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(89, 14, 1, 1, 25, NULL, 10, 'Quae facere quis vol', '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(90, 14, 1, 2, 73, NULL, 1, 'D', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(91, 14, 1, 2, 74, NULL, 2, 'A', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(92, 14, 1, 2, 75, NULL, 3, 'E', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(93, 14, 1, 2, 76, NULL, 4, 'A', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(94, 14, 1, 2, 78, NULL, 5, 'Sunt qui quibusdam i', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(95, 14, 1, 2, 79, NULL, 6, 'Veritatis in qui rep', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(96, 14, 1, 2, 80, NULL, 7, 'Eligendi sit quod e', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(97, 14, 1, 2, 81, NULL, 8, 'Minima perspiciatis', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(98, 14, 1, 2, 83, NULL, 9, 'TRUE', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(99, 14, 1, 2, 84, NULL, 10, 'NOT GIVEN', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(100, 14, 1, 2, 85, NULL, 11, 'FALSE', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(101, 14, 1, 2, 86, NULL, 12, 'TRUE', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(102, 14, 1, 2, 87, NULL, 13, 'TRUE', '2025-09-12 09:59:23', '2025-09-12 09:59:23'),
(103, 16, 1, 1, 3, NULL, 1, 'Proident explicabo', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(104, 16, 1, 1, 11, NULL, 2, 'Deserunt natus possi', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(105, 16, 1, 1, 15, NULL, 3, 'Sit amet eveniet', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(106, 16, 1, 1, 17, NULL, 4, 'Et earum vel quisqua', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(107, 16, 1, 1, 19, NULL, 5, 'Facere quo perspicia', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(108, 16, 1, 1, 21, 3, 6, NULL, '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(109, 16, 1, 1, 23, NULL, 8, 'Inventore aperiam as', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(110, 16, 1, 1, 24, NULL, 9, 'Suscipit aliquip est', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(111, 16, 1, 1, 25, NULL, 10, 'Nulla nobis voluptas', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(112, 16, 1, 1, 27, NULL, 11, 'Reprehenderit reicie', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(113, 16, 1, 1, 28, NULL, 12, 'Cupiditate quo sed a', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(114, 16, 1, 1, 29, NULL, 13, 'Nam quos qui corrupt', '2025-09-15 00:34:51', '2025-09-15 00:34:51'),
(115, 16, 1, 1, 30, NULL, 14, 'Aliquam sunt tenetu', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(116, 16, 1, 1, 32, NULL, 15, 'Ut optio nihil volu', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(117, 16, 1, 1, 33, NULL, 16, 'Odit iusto incidunt', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(118, 16, 1, 1, 34, NULL, 17, 'Enim culpa vitae a i', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(119, 16, 1, 1, 36, NULL, 18, 'Tempore eum qui fug', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(120, 16, 1, 1, 37, NULL, 19, 'Sit vel assumenda q', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(121, 16, 1, 1, 39, NULL, 20, 'Dolor obcaecati ad m', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(122, 16, 1, 1, 41, NULL, 21, 'Eu rerum impedit la', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(123, 16, 1, 1, 42, NULL, 22, 'Aliquid id sunt iu', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(124, 16, 1, 1, 43, NULL, 23, 'Aut ducimus minim m', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(125, 16, 1, 1, 44, NULL, 24, 'Iure et exercitation', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(126, 16, 1, 1, 54, NULL, 25, 'Corporis quia laudan', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(127, 16, 1, 1, 56, NULL, 26, 'Labore veniam labor', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(128, 16, 1, 1, 58, NULL, 27, 'Ut quia ea hic quia', '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(129, 16, 1, 1, 60, 6, 28, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(130, 16, 1, 1, 60, 10, 28, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(131, 16, 1, 1, 62, 12, 31, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(132, 16, 1, 1, 63, 15, 32, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(133, 16, 1, 1, 64, 20, 33, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(134, 16, 1, 1, 65, 26, 34, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(135, 16, 1, 1, 66, 27, 35, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(136, 16, 1, 1, 67, 33, 36, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(137, 16, 1, 1, 68, 37, 37, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(138, 16, 1, 1, 69, 42, 38, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(139, 16, 1, 1, 70, 45, 39, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(140, 16, 1, 1, 71, 50, 40, NULL, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(141, 16, 1, 2, 73, NULL, 1, 'C', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(142, 16, 1, 2, 74, NULL, 2, 'A', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(143, 16, 1, 2, 75, NULL, 3, 'B', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(144, 16, 1, 2, 76, NULL, 4, 'B', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(145, 16, 1, 2, 78, NULL, 5, 'Sed quae rerum culpa', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(146, 16, 1, 2, 79, NULL, 6, 'Labore nulla irure e', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(147, 16, 1, 2, 80, NULL, 7, 'Minus in et saepe qu', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(148, 16, 1, 2, 81, NULL, 8, 'Autem laudantium pa', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(149, 16, 1, 2, 83, NULL, 9, 'FALSE', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(150, 16, 1, 2, 84, NULL, 10, 'FALSE', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(151, 16, 1, 2, 85, NULL, 11, 'FALSE', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(152, 16, 1, 2, 86, NULL, 12, 'TRUE', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(153, 16, 1, 2, 87, NULL, 13, 'FALSE', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(154, 16, 1, 2, 89, NULL, 14, 'C', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(155, 16, 1, 2, 90, NULL, 15, 'E', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(156, 16, 1, 2, 91, NULL, 16, 'A', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(157, 16, 1, 2, 92, NULL, 17, 'E', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(158, 16, 1, 2, 94, 53, 18, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(159, 16, 1, 2, 94, 56, 18, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(160, 16, 1, 2, 96, 62, 23, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(161, 16, 1, 2, 97, 66, 24, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(162, 16, 1, 2, 98, 69, 25, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(163, 16, 1, 2, 99, 74, 26, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(164, 16, 1, 2, 101, 77, 27, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(165, 16, 1, 2, 102, 81, 28, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(166, 16, 1, 2, 103, 85, 29, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(167, 16, 1, 2, 104, 88, 30, NULL, '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(168, 16, 1, 2, 106, NULL, 31, 'Et ut amet sunt la', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(169, 16, 1, 2, 107, NULL, 32, 'Sed libero minim qua', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(170, 16, 1, 2, 108, NULL, 33, 'Eaque ab in qui iste', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(171, 16, 1, 2, 109, NULL, 34, 'Minim id quos tenetu', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(172, 16, 1, 2, 110, NULL, 35, 'Rerum consequuntur s', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(173, 16, 1, 2, 112, NULL, 36, 'NOT GIVEN', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(174, 16, 1, 2, 113, NULL, 37, 'FALSE', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(175, 16, 1, 2, 114, NULL, 38, 'NOT GIVEN', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(176, 16, 1, 2, 115, NULL, 39, 'FALSE', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(177, 16, 1, 2, 116, NULL, 40, 'FALSE', '2025-09-15 00:55:20', '2025-09-15 00:55:20'),
(178, 17, 1, 1, 3, NULL, 1, 'Explicabo Non quos', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(179, 17, 1, 1, 11, NULL, 2, 'Quis cupidatat disti', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(180, 17, 1, 1, 15, NULL, 3, 'Dolore quasi minus m', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(181, 17, 1, 1, 17, NULL, 4, 'Ut aut aut autem non', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(182, 17, 1, 1, 19, NULL, 5, 'Sunt aliquid consequ', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(183, 17, 1, 1, 21, 3, 6, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(184, 17, 1, 1, 21, 4, 6, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(185, 17, 1, 1, 23, NULL, 8, 'Amet qui quam est', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(186, 17, 1, 1, 24, NULL, 9, 'Consectetur omnis v', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(187, 17, 1, 1, 25, NULL, 10, 'Consequatur corrupt', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(188, 17, 1, 1, 27, NULL, 11, 'Dolorum velit iusto', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(189, 17, 1, 1, 28, NULL, 12, 'Est qui fugiat dele', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(190, 17, 1, 1, 29, NULL, 13, 'In omnis commodi lab', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(191, 17, 1, 1, 30, NULL, 14, 'Eligendi ratione dol', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(192, 17, 1, 1, 32, NULL, 15, 'Ea excepteur in comm', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(193, 17, 1, 1, 33, NULL, 16, 'Cupidatat qui repudi', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(194, 17, 1, 1, 34, NULL, 17, 'Ad consectetur in cu', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(195, 17, 1, 1, 36, NULL, 18, 'Est omnis perferendi', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(196, 17, 1, 1, 37, NULL, 19, 'Fugiat id ex harum', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(197, 17, 1, 1, 39, NULL, 20, 'Neque recusandae Ap', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(198, 17, 1, 1, 41, NULL, 21, 'Et ut eum sunt dolor', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(199, 17, 1, 1, 42, NULL, 22, 'Pariatur Excepteur', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(200, 17, 1, 1, 43, NULL, 23, 'Perspiciatis vitae', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(201, 17, 1, 1, 44, NULL, 24, 'Dolorem earum quos c', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(202, 17, 1, 1, 54, NULL, 25, 'Consequatur ut amet', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(203, 17, 1, 1, 56, NULL, 26, 'Ut possimus dolorem', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(204, 17, 1, 1, 58, NULL, 27, 'Earum Nam blanditiis', '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(205, 17, 1, 1, 60, 6, 28, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(206, 17, 1, 1, 60, 7, 28, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(207, 17, 1, 1, 62, 14, 31, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(208, 17, 1, 1, 63, 16, 32, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(209, 17, 1, 1, 64, 22, 33, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(210, 17, 1, 1, 65, 23, 34, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(211, 17, 1, 1, 66, 30, 35, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(212, 17, 1, 1, 67, 32, 36, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(213, 17, 1, 1, 68, 35, 37, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(214, 17, 1, 1, 69, 41, 38, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(215, 17, 1, 1, 70, 46, 39, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(216, 17, 1, 1, 71, 48, 40, NULL, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(217, 17, 1, 2, 73, NULL, 1, 'E', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(218, 17, 1, 2, 74, NULL, 2, 'A', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(219, 17, 1, 2, 75, NULL, 3, 'E', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(220, 17, 1, 2, 76, NULL, 4, 'E', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(221, 17, 1, 2, 78, NULL, 5, 'Aliquid doloribus si', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(222, 17, 1, 2, 79, NULL, 6, 'Amet pariatur Quo', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(223, 17, 1, 2, 80, NULL, 7, 'Sint vel esse id q', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(224, 17, 1, 2, 81, NULL, 8, 'Qui dolor adipisicin', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(225, 17, 1, 2, 83, NULL, 9, 'FALSE', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(226, 17, 1, 2, 84, NULL, 10, 'TRUE', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(227, 17, 1, 2, 85, NULL, 11, 'NOT GIVEN', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(228, 17, 1, 2, 86, NULL, 12, 'FALSE', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(229, 17, 1, 2, 87, NULL, 13, 'FALSE', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(230, 17, 1, 2, 89, NULL, 14, 'G', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(231, 17, 1, 2, 90, NULL, 15, 'E', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(232, 17, 1, 2, 91, NULL, 16, 'C', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(233, 17, 1, 2, 92, NULL, 17, 'B', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(234, 17, 1, 2, 94, 52, 18, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(235, 17, 1, 2, 94, 53, 18, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(236, 17, 1, 2, 94, 56, 18, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(237, 17, 1, 2, 94, 57, 18, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(238, 17, 1, 2, 94, 58, 18, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(239, 17, 1, 2, 96, 63, 23, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(240, 17, 1, 2, 97, 68, 24, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(241, 17, 1, 2, 98, 73, 25, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(242, 17, 1, 2, 99, 76, 26, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(243, 17, 1, 2, 101, 78, 27, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(244, 17, 1, 2, 102, 80, 28, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(245, 17, 1, 2, 103, 83, 29, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(246, 17, 1, 2, 104, 87, 30, NULL, '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(247, 17, 1, 2, 106, NULL, 31, 'Lorem aliquam beatae', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(248, 17, 1, 2, 107, NULL, 32, 'Natus deserunt deser', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(249, 17, 1, 2, 108, NULL, 33, 'Qui velit exercitat', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(250, 17, 1, 2, 109, NULL, 34, 'Omnis ea dolor facer', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(251, 17, 1, 2, 110, NULL, 35, 'Sint tempore impedi', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(252, 17, 1, 2, 112, NULL, 36, 'NOT GIVEN', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(253, 17, 1, 2, 113, NULL, 37, 'NOT GIVEN', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(254, 17, 1, 2, 114, NULL, 38, 'TRUE', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(255, 17, 1, 2, 115, NULL, 39, 'FALSE', '2025-09-15 04:18:39', '2025-09-15 04:18:39'),
(256, 17, 1, 2, 116, NULL, 40, 'NOT GIVEN', '2025-09-15 04:18:39', '2025-09-15 04:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_scores`
--

CREATE TABLE `user_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_user_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `result` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_scores`
--

INSERT INTO `user_scores` (`id`, `test_user_id`, `section_id`, `result`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 7, '2025-09-11 02:06:49', '2025-09-11 02:06:49'),
(2, 10, 2, 8, '2025-09-11 04:00:39', '2025-09-11 04:00:39'),
(3, 11, 1, 0, '2025-09-11 04:32:54', '2025-09-11 04:32:54'),
(4, 11, 2, 0, '2025-09-11 04:32:58', '2025-09-11 04:32:58'),
(5, 14, 1, 2, '2025-09-12 09:59:12', '2025-09-12 09:59:12'),
(6, 14, 2, 4, '2025-09-12 09:59:50', '2025-09-12 09:59:50'),
(7, 16, 1, 3, '2025-09-15 00:34:52', '2025-09-15 00:34:52'),
(8, 16, 2, 8, '2025-09-15 00:55:28', '2025-09-15 00:55:28'),
(9, 17, 1, 3, '2025-09-15 04:18:27', '2025-09-15 04:18:27'),
(10, 17, 2, 11, '2025-09-15 04:19:48', '2025-09-15 04:19:48'),
(11, 18, 7, 0, '2025-09-16 01:24:20', '2025-09-16 01:24:20'),
(12, 18, 1, 0, '2025-09-16 01:24:36', '2025-09-16 01:24:36'),
(13, 18, 2, 0, '2025-09-16 01:24:43', '2025-09-16 01:24:43'),
(14, 18, 4, 0, '2025-09-16 02:03:40', '2025-09-16 02:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_writing_answers`
--

CREATE TABLE `user_writing_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_user_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `question_group_id` bigint(20) UNSIGNED NOT NULL,
  `answer_text` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_writing_answers`
--

INSERT INTO `user_writing_answers` (`id`, `test_user_id`, `section_id`, `question_group_id`, `answer_text`, `created_at`, `updated_at`) VALUES
(1, 10, 3, 8, 'Free online IELTS practice tests for 2025. Prepare for real IELTS practice tests by taking mock IELTS tests based on actual IELTS tests.\r\nIELTS Exam Library\r\nAll Tests Academic Test General Training Test All Skills Listening Reading Writing …\r\nIELTS Prep\r\nPremium ServicesThis video series includes all the videos from our IELTS e…\r\nIELTS Courses\r\nBoost your IELTS score withIELTS MasterClass Our IELTS course has succ…\r\nIELTS Tips\r\nIn the journey towards achieving success in The IELTS examination, a solid grasp …\r\nLive Lessons\r\nReading - True, False, Not Given Questions Ayten O. InterGreat Educatio…\r\nInterGreat Study Abroad\r\nInterGreat has developed an ecosystem centred around transnational education…\r\nShould I take IELTS?\r\nToday, I can safely say that I made the right decision, and it is always better to look for future opportunities than to focus on the present scenario. IELTS is required to be taken by international students and workers who wish to study or work in a country where English is the primary language of communication. Know the complete details.\r\n\r\n\r\nupgradabroad.com\r\nIntroducing IELTS Online for test takers\r\n01:34\r\nIntroducing IELTS Online for test takers\r\nYouTubeIELTS Official11.2K viewsAug 13, 2022\r\nIELTS Online - Take your test remotely\r\nGet all the information you need to know about taking IELTS Online including requirements …\r\n\r\nTake your IELTS Academic test online: …\r\nExperience the ease and flexibility of taking your IELTS Academic test from home with IELTS …\r\n\r\n \r\nIncluding results for ielts online.\r\nDo you want results only for ilets online?\r\nGlobal web icon\r\nIELTS\r\nhttps://ielts.org › ... › ielts-academic-test › ielts-online\r\n\r\nIELTS Online\r\nIELTS Online is a flexible and secure option to take the IELTS Academic test from anywhere with a stable internet connection. It has the same format, content and features as IELTS on paper and on computer, but with the Speaking test via …', '2025-09-11 01:07:18', '2025-09-11 01:07:18'),
(2, 12, 3, 8, 'Nasira Ahmed 11 September, 25 In the bar graph, it is illustrated that how much the adult male smokers are there from seven different countries along with the world averages in 2000 and 2025. In 2000, Armenia had the highest rate of male smokers which is almost 70%. Though Bangladesh had not much less than that in the same year. Comparatively, \nNasira Ahmed 11 September, 25 In the bar graph, it is illustrated that how much the adult male smokers are there from seven different countries along with the world averages in 2000 and 2025. In 2000, Armenia had the highest rate of male smokers which is almost 70%. Though Bangladesh had not much less than that in the same year. Comparatively, \nNasira Ahmed 11 September, 25 In the bar graph, it is illustrated that how much the adult male smokers are there from seven different countries along with the world averages in 2000 and 2025. In 2000, Armenia had the highest rate of male smokers which is almost 70%. Though Bangladesh had not much less than that in the same year. Comparatively, \nNasira Ahmed 11 September, 25 In the bar graph, it is illustrated that how much the adult male smokers are there from seven different countries along with the world averages in 2000 and 2025. In 2000, Armenia had the highest rate of male smokers which is almost 70%. Though Bangladesh had not much less than that in the same year. Comparatively, \nNasira Ahmed 11 September, 25 In the bar graph, it is illustrated that how much the adult male smokers are there from seven different countries along with the world averages in 2000 and 2025. In 2000, Armenia had the highest rate of male smokers which is almost 70%. Though Bangladesh had not much less than that in the same year. Comparatively, \nNasira Ahmed 11 September, 25 In the bar graph, it is illustrated that how much the adult male smokers are there from seven different countries along with the world averages in 2000 and 2025. In 2000, Armenia had the highest rate of male smokers which is almost 70%. Though Bangladesh had not much less than that in the same year. Comparatively,', '2025-09-11 06:06:30', '2025-09-11 06:06:30'),
(3, 16, 3, 8, 'Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1\r\nWriting Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1\r\nWriting Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1\r\n\r\n\r\n\r\nWriting Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1Writing Task 1', '2025-09-14 23:51:47', '2025-09-14 23:51:47'),
(4, 16, 3, 9, 'Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2\r\nWriting Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2\r\nWriting Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2\r\nWriting Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2Writing Task 2', '2025-09-14 23:51:47', '2025-09-14 23:51:47'),
(5, 17, 3, 8, 'You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...\r\nYou should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...You should spend about 20 minutes on this task.\r\nThe diagram below shows how ethanol fuel is produced from corn.\r\nSummarise the information by selecting and reporting the main features and make comparisons where relevant.\r\nYou should write at least 150 words...', '2025-09-15 04:19:21', '2025-09-15 04:19:21'),
(6, 17, 3, 9, 'You should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.You should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.You should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.You should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.You should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.You should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.You should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.You should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.\r\nYou should spend about 40 minutes on this task.\r\nSome people think that physical strength is important for success in sport, while other people think that mental strength is more important.\r\nDiscuss both views and give your own opinion.\r\nYou should write at least 250 words.', '2025-09-15 04:19:21', '2025-09-15 04:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `moile1` varchar(255) DEFAULT NULL,
  `mobile2` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `who_we_are_image` varchar(255) DEFAULT NULL,
  `who_we_are_description` text DEFAULT NULL,
  `vision_image` varchar(255) DEFAULT NULL,
  `vision_description` text DEFAULT NULL,
  `mission_image` varchar(255) DEFAULT NULL,
  `mission_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `title`, `description`, `logo`, `favicon`, `email`, `website`, `moile1`, `mobile2`, `address`, `who_we_are_image`, `who_we_are_description`, `vision_image`, `vision_description`, `mission_image`, `mission_description`, `created_at`, `updated_at`) VALUES
(1, 'Lexicon2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `writes`
--

CREATE TABLE `writes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writes`
--

INSERT INTO `writes` (`id`, `course_id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(10, '15', NULL, NULL, '2025-03-02 14:36:18', '2025-03-02 14:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `writing_passages`
--

CREATE TABLE `writing_passages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_group_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writing_passages`
--

INSERT INTO `writing_passages` (`id`, `question_group_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 'You should spend about 20 minutes on this task.<br>The diagram below shows how ethanol fuel is produced from corn.<br>Summarise the information by selecting and reporting the main features and make comparisons where relevant.<br>You should write at least 150 words...', '2025-09-15 07:48:19', '2025-09-15 07:48:19'),
(2, 8, NULL, '<img src=\"/images/mockTestImage/writing1-1.jpg\" alt=\"Reading Passage\">', '2025-09-15 07:48:19', '2025-09-15 07:48:19'),
(3, 9, NULL, 'You should spend about 40 minutes on this task.<br>Some people think that physical strength is important for success in sport, while other people think that mental strength is more important.<br> Discuss both views and give your own opinion.<br>You should write at least 250 words.', '2025-09-15 07:48:19', '2025-09-15 07:48:19'),
(4, 17, NULL, 'You should spend about 20 minutes on this task.<br>The bar chart shows the percentage of the total world population in 4 countries in 1950 and 2002, and projections for 2050.<br>Summarise the information by selecting and reporting the main features and make comparisons where relevant.<br>You should write at least 150 words...', '2025-09-15 08:24:32', '2025-09-15 08:24:32'),
(5, 17, NULL, '<img src=\"/images/mockTestImage/writing2-1.jpg\" alt=\"Writing Passage\">', '2025-09-15 08:24:32', '2025-09-15 08:24:32'),
(6, 18, NULL, 'You should spend about 40 minutes on this task.<br>The use of social media is replacing face-to-face interaction among many people in society. Do you think the advantages outweigh the disadvantages?<br> Discuss both views and give your own opinion.<br>You should write at least 250 words.', '2025-09-15 08:24:32', '2025-09-15 08:24:32'),
(7, 26, NULL, 'You should spend about 20 minutes on this task.<br>The maps below show a bookstore in 2000 and now. Summaries the information by selecting and reporting the main features, and make comparisons where relevant.<br>You should write at least 150 words...', '2025-09-15 08:30:19', '2025-09-15 08:30:19'),
(8, 26, NULL, '<img src=\"/images/mockTestImage/writing3-1.png\" alt=\"Writing Passage\">', '2025-09-15 08:30:19', '2025-09-15 08:30:19'),
(9, 27, NULL, 'You should spend about 40 minutes on this task.<br>Some people think that job satisfaction is more important than job security, while some people think that they cannot always expect job satisfaction, a permanent job is more important. Discuss both views and give your own opinion.<br>You should write at least 250 words.', '2025-09-15 08:30:19', '2025-09-15 08:30:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_trainers`
--
ALTER TABLE `course_trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_dates`
--
ALTER TABLE `exam_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_date_tests`
--
ALTER TABLE `exam_date_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_date_times`
--
ALTER TABLE `exam_date_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ielts_registrations`
--
ALTER TABLE `ielts_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lexiflies`
--
ALTER TABLE `lexiflies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lexifly_countries`
--
ALTER TABLE `lexifly_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lexifly_country_universities`
--
ALTER TABLE `lexifly_country_universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listens`
--
ALTER TABLE `listens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcqs`
--
ALTER TABLE `mcqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_students`
--
ALTER TABLE `mcq_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mocktest_students`
--
ALTER TABLE `mocktest_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mock_tests`
--
ALTER TABLE `mock_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `placements`
--
ALTER TABLE `placements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_question_group_id_foreign` (`question_group_id`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answers_option_id_foreign` (`option_id`),
  ADD KEY `question_answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_groups_section_id_foreign` (`section_id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_options_question_id_foreign` (`question_id`);

--
-- Indexes for table `reading_passages`
--
ALTER TABLE `reading_passages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reading_passages_question_group_id_foreign` (`question_group_id`);

--
-- Indexes for table `scorers`
--
ALTER TABLE `scorers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_mock_test_id_foreign` (`mock_test_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_listenings`
--
ALTER TABLE `test_listenings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_readings`
--
ALTER TABLE `test_readings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_users`
--
ALTER TABLE `test_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_users_mock_test_id_foreign` (`mock_test_id`);

--
-- Indexes for table `test_writings`
--
ALTER TABLE `test_writings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_answers_test_user_id_foreign` (`test_user_id`),
  ADD KEY `user_answers_mock_test_id_foreign` (`mock_test_id`),
  ADD KEY `user_answers_section_id_foreign` (`section_id`),
  ADD KEY `user_answers_question_id_foreign` (`question_id`),
  ADD KEY `user_answers_option_id_foreign` (`option_id`);

--
-- Indexes for table `user_scores`
--
ALTER TABLE `user_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_writing_answers`
--
ALTER TABLE `user_writing_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_writing_answers_test_user_id_foreign` (`test_user_id`),
  ADD KEY `user_writing_answers_section_id_foreign` (`section_id`),
  ADD KEY `user_writing_answers_question_group_id_foreign` (`question_group_id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writes`
--
ALTER TABLE `writes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writing_passages`
--
ALTER TABLE `writing_passages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writing_passages_question_group_id_foreign` (`question_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `course_trainers`
--
ALTER TABLE `course_trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_dates`
--
ALTER TABLE `exam_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `exam_date_tests`
--
ALTER TABLE `exam_date_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exam_date_times`
--
ALTER TABLE `exam_date_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `ielts_registrations`
--
ALTER TABLE `ielts_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lexiflies`
--
ALTER TABLE `lexiflies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `lexifly_countries`
--
ALTER TABLE `lexifly_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lexifly_country_universities`
--
ALTER TABLE `lexifly_country_universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `listens`
--
ALTER TABLE `listens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mcqs`
--
ALTER TABLE `mcqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mcq_students`
--
ALTER TABLE `mcq_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `mocktest_students`
--
ALTER TABLE `mocktest_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `mock_tests`
--
ALTER TABLE `mock_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placements`
--
ALTER TABLE `placements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `question_groups`
--
ALTER TABLE `question_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `reading_passages`
--
ALTER TABLE `reading_passages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `scorers`
--
ALTER TABLE `scorers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `test_listenings`
--
ALTER TABLE `test_listenings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `test_readings`
--
ALTER TABLE `test_readings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `test_users`
--
ALTER TABLE `test_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `test_writings`
--
ALTER TABLE `test_writings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `user_scores`
--
ALTER TABLE `user_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_writing_answers`
--
ALTER TABLE `user_writing_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `writes`
--
ALTER TABLE `writes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `writing_passages`
--
ALTER TABLE `writing_passages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_question_group_id_foreign` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD CONSTRAINT `question_answers_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `question_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD CONSTRAINT `question_groups_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reading_passages`
--
ALTER TABLE `reading_passages`
  ADD CONSTRAINT `reading_passages_question_group_id_foreign` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_mock_test_id_foreign` FOREIGN KEY (`mock_test_id`) REFERENCES `mock_tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `test_users`
--
ALTER TABLE `test_users`
  ADD CONSTRAINT `test_users_mock_test_id_foreign` FOREIGN KEY (`mock_test_id`) REFERENCES `mock_tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_mock_test_id_foreign` FOREIGN KEY (`mock_test_id`) REFERENCES `mock_tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_answers_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `question_options` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_answers_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_answers_test_user_id_foreign` FOREIGN KEY (`test_user_id`) REFERENCES `test_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_writing_answers`
--
ALTER TABLE `user_writing_answers`
  ADD CONSTRAINT `user_writing_answers_question_group_id_foreign` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_writing_answers_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_writing_answers_test_user_id_foreign` FOREIGN KEY (`test_user_id`) REFERENCES `test_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `writing_passages`
--
ALTER TABLE `writing_passages`
  ADD CONSTRAINT `writing_passages_question_group_id_foreign` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
