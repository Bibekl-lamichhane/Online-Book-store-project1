-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2024 at 01:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eBookStore`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_order_id` bigint(20) UNSIGNED NOT NULL,
  `phone` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 10,
  `rating` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `author`, `price`, `image`, `quantity`, `rating`, `created_at`, `updated_at`) VALUES
(9, 'Atomic Habits', 'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones.', 'James Clear', 1599.00, '/eBookStore/img/1709358582.jpg', 10, '4', '2024-03-02 00:04:42', '2024-03-02 00:04:42'),
(10, 'The Psychology of Money', 'The Psychology of Money: Timeless lessons on wealth, greed, and happiness.', 'Morgan Housel', 999.00, '/eBookStore/img/1709383896.jpg', 9, '3', '2024-03-02 07:06:37', '2024-03-17 22:39:25'),
(11, 'Harry Potter', 'Harry Potter: Magical adventures unfold as a young wizard battles dark forces and discovers his destiny.', 'J.K. Rowling', 1099.00, '/eBookStore/img/1709384333.jpg', 6, '4', '2024-03-02 07:13:53', '2024-03-12 10:37:51'),
(13, 'The Indoctrinated Brain', 'The Indoctrinated Brain: How to Successfully Fend Off the Global Attack on Your Mental Freedom.', 'Michael Nehls and Naomi Wolf', 1299.00, '/eBookStore/img/1709384717.jpg', 9, '3', '2024-03-02 07:20:17', '2024-03-07 22:00:36'),
(14, 'Meditations', 'Timeless Stoic wisdom from a Roman emperor, inspiring self-improvement and resilience in countless seekers like Ryan Holiday.', 'Marcus Aurelius', 560.00, '/eBookStore/img/1709385164.jpg', 8, '3', '2024-03-02 07:27:45', '2024-03-12 10:00:26'),
(15, 'Man\'S Search For Meaning', 'Viktor Frankl\'s memoir illuminates life in Nazi death camps, offering lessons in spiritual survival. Through logotherapy, he asserts our capacity to find meaning amidst suffering, inspiring us to pursue significance in life.', 'Viktor E. Frankl', 560.00, '/eBookStore/img/1709385331.jpg', 9, '3', '2024-03-02 07:30:32', '2024-03-15 03:25:33'),
(16, 'Modern Nepal', 'Combines two classic histories, originally published 1990. Thorough discussion of the royal families, revolutions, politics. By a scholar and activist. A basic history of modern Nepal.', 'Rishikesh Shaha', 2065.00, '/eBookStore/img/1709392168.jpg', 10, '5', '2024-03-02 09:24:29', '2024-03-02 09:24:29'),
(17, 'Middlesex', 'A mesmerizing saga spanning three generations of a Greek-American family, Jeffrey Eugenides\' Middlesex unveils the extraordinary journey of Calliope Stephanides, who grapples with a transformative gene, leading to an audacious and wondrous narrative.', 'Jeffrey Eugenides', 1999.00, '/eBookStore/img/1709392446.jpg', 10, '2', '2024-03-02 09:29:07', '2024-03-02 09:29:07'),
(18, 'The Art Of Being Alone', 'Taylor Swift said once, “The scary news is, you are on your own now. But the cool news is, you are on your own now”', 'Renuka Gavrani', 480.00, '/eBookStore/img/1709392884.jpg', 10, '2', '2024-03-02 09:36:25', '2024-03-02 09:36:25'),
(19, 'Five Broken Blades', 'The five deadliest swords in the land band together to kill the merciless god king but only one can take the crown.', 'Mai Corland', 0.00, '/eBookStore/img/1709393920.jpg', 10, '5', '2024-03-02 09:53:41', '2024-03-02 09:53:41'),
(20, 'Table for Two', 'Six short stories about the delicate nature of modern marriage and a novella about Evelyn Ross from Rules of Civility rebuilding a life in the Golden Age of Hollywood', 'Amor Towles', 0.00, '/eBookStore/img/1709394042.jpg', 10, '5', '2024-03-02 09:55:43', '2024-03-02 09:55:43'),
(21, 'Annie Bot', 'A robot created to be the perfect girlfriend tries to become more human and begins to wonder what she owes herself.', 'Sierra Greer', 0.00, '/eBookStore/img/1709394139.jpg', 10, '5', '2024-03-02 09:57:19', '2024-03-02 09:57:19'),
(22, 'Murder Road', 'After picking up an injured hitchhiker who dies, a newlywed couple investigates a series of murders along a deserted stretch of road.', 'Simone St. James', 0.00, '/eBookStore/img/1709394260.jpg', 10, '5', '2024-03-02 09:59:21', '2024-03-02 09:59:21'),
(23, 'Daughter of Mine', 'The daughter of a local detective returns to her hometown to find that the drought has revealed clues to her mother’s disappearance hidden in the lake bed.', 'Megan Miranda', 0.00, '/eBookStore/img/1709394394.jpg', 10, '5', '2024-03-02 10:01:34', '2024-03-02 10:01:34'),
(24, 'Return of Ellie Black', 'When a missing teenager reappears after two years, a detective must figure out what she’s hiding and who is is protecting.', 'Emiko Jean', 0.00, '/eBookStore/img/1709394597.jpg', 10, '5', '2024-03-02 10:04:58', '2024-03-02 10:04:58'),
(25, 'Darling Girls', 'When a body is discovered on the farm where they grew up, three foster sisters find themselves the prime witnesses, and possibly suspects.', 'Sally Hepworth', 0.00, '/eBookStore/img/1709394676.jpg', 10, '5', '2024-03-02 10:06:16', '2024-03-02 10:06:16'),
(26, 'A Calamity of Souls', 'In Southern Virginia in 1968, a white male lawyer and a Black female lawyer work together save an innocent man from the electric chair.', 'David Baldacci', 0.00, '/eBookStore/img/1709394776.jpg', 10, '5', '2024-03-02 10:07:57', '2024-03-02 10:07:57'),
(27, 'A Game of Lies', 'In the Welsh mountains, DC Ffion Morgan investigates a group of reality stars, each with an alibi and a reason to kill.', 'Clare Mackintosh', 0.00, '/eBookStore/img/1709395004.jpg', 10, '5', '2024-03-02 10:11:45', '2024-03-02 10:11:45'),
(28, 'The Demon of Unrest', 'The tumultuous five months between Abraham Lincoln’s election and the firing on Fort Sumter.', 'Erik Larson', 0.00, '/eBookStore/img/1709395161.jpg', 10, '5', '2024-03-02 10:14:22', '2024-03-02 10:14:22'),
(29, 'The Paris Widow', 'When a bomb goes off in Paris, a woman must figure out if her nice normal husband was a random victim or the intended target.', 'Kimberly Belle', 0.00, '/eBookStore/img/1709395327.jpg', 10, '5', '2024-03-02 10:17:08', '2024-03-02 10:17:08'),
(30, 'End of Story', 'Nicky Hunter assists reclusive writer Sebastian Trapp in penning his life story, unraveling the mystery of his first wife and son\'s disappearance twenty years prior.', 'A. J. FINN', 766.00, '/eBookStore/img/1709402201.jpg', 10, '3', '2024-03-02 12:11:41', '2024-03-02 12:11:41'),
(31, 'The Fury', 'Former movie star Lana Farrar hosts her closest friends on her private Greek Island to confront her husband\'s affair, but bitter resentments lead to murder. Narrated by Elliot Chase, \'The Fury\' keeps readers guessing about the island\'s dark secrets.', 'ALEX MICHAELIDES', 999.00, '/eBookStore/img/1709402385.jpg', 5, '4', '2024-03-02 12:14:46', '2024-03-12 11:50:50'),
(32, 'Midnight', 'Actuary Olivia\'s dream of visiting Antarctica comes true when her art dealer boyfriend plans an art auction on a luxury cruise, but she soon suspects foul play as deaths occur onboard, fearing she\'s trapped with a vengeful killer.', 'AMY MCCULLOCH', 750.00, '/eBookStore/img/1709402503.jpg', 8, '3', '2024-03-02 12:16:43', '2024-03-07 10:21:45'),
(33, 'Gone Girl', 'In \'Gone Girl,\' Amy Dunne vanishes on her fifth anniversary, implicating her seemingly perfect husband Nick as the prime suspect, leading to a twisted tale of deception and suspense that cements its place among the best thriller books.', 'GILLIAN GLYNN', 550.00, '/eBookStore/img/1709402745.jpg', 10, '4', '2024-03-02 12:20:46', '2024-03-02 12:20:46'),
(34, 'The Martian', 'Mark Watney fights for survival on Mars after being abandoned by his crew, showcasing real science in a thrilling sci-fi tale hailed as one of the best in recent years.', 'ANDY WEIR', 880.00, '/eBookStore/img/1709402942.jpg', 8, '4', '2024-03-02 12:24:03', '2024-03-07 10:21:45'),
(35, 'Recursion', 'In \'Recursion,\' False Memory Syndrome plagues America, sparking a gripping tale where reality bends, unraveling as NYPD cop Barry Sutton and neuroscientist Helena Smith race to stop the epidemic.', 'BLAKE CROUCH', 800.00, '/eBookStore/img/1709403059.jpg', 6, '4', '2024-03-02 12:25:59', '2024-03-12 11:45:15'),
(36, 'Sri Sankaracharya', 'Explore Sri Sankaracharya\'s timeless wisdom in Advaita Vedanta.\r\nA concise collection offering profound insights into spiritual liberation.', 'S Venkataramanan', 240.00, '/eBookStore/img/1709403564.jpeg', 8, '2', '2024-03-02 12:34:25', '2024-03-07 10:21:45'),
(37, 'Mind Full to Mindful', 'Discover inner peace through Zen\'s teachings, embracing everyday moments as meditation.\r\nOm Swami\'s insightful book offers a transformative perspective on happiness, blending humor, stories, and wisdom.', 'Om Swami', 480.00, '/eBookStore/img/1709403764.jpg', 9, '3', '2024-03-02 12:37:45', '2024-03-07 22:00:36'),
(38, 'The Hobbit', 'A glorious account of a magnificent adventure, filled with suspense and seasoned with a quiet humor that is irresistible... All those, young or old, who love a fine adventurous tale, beautifully told, will take The Hobbit to their hearts.', 'J. R. R. Tolkien', 666.00, '/eBookStore/img/1709404052.jpeg', 10, '4', '2024-03-02 12:42:32', '2024-03-02 12:42:32'),
(39, 'If Only I Had Told Her', 'A deeply emotional companion to Laura Nowlin\'s bestselling novel, exploring the transformative power of love. Ideal for fans of Colleen Hoover and Jenny Han.', 'Laura Nowlin', 250.00, '/eBookStore/img/1709404283.jpg', 10, '2', '2024-03-02 12:46:23', '2024-03-02 12:46:23'),
(40, 'Select Works of Sri Sankaracharya', 'Explore the timeless wisdom of Hindu philosopher Sri Sankaracharya, skillfully compiled for accessible contemplation and profound insights into the nature of reality and spiritual liberation.', 'S Venkataramanan', 240.00, '/eBookStore/img/1709435229.jpeg', 10, '2', '2024-03-02 21:22:09', '2024-03-02 21:22:09'),
(41, 'The Second Great Dune Trilogy', 'Experience the epic conclusion of the Dune Chronicles in Herbert\'s Second Great Trilogy. Witness Leto Atreides\' divine struggle for the future in this influential SF saga.', 'Frank Herbert', 2022.00, '/eBookStore/img/1709435406.jpg', 9, '3', '2024-03-02 21:25:07', '2024-03-07 22:00:36'),
(42, 'The Hobbit', 'In a hole in the ground, there lived a hobbit.\" So begins one of the most beloved and delightful tales in the English language.', 'J.R.R. Tolkien', 400.00, '/eBookStore/img/1709436539.jpeg', 9, '3', '2024-03-02 21:43:59', '2024-03-12 11:31:06'),
(43, 'Pele', 'Pele: Embark on Pele\'s remarkable journey from poverty to football legend in his captivating autobiography, brimming with humor, insight, and inspiration.', 'Pele', 960.00, '/eBookStore/img/1709445515.jpg', 9, '4', '2024-03-03 00:13:36', '2024-03-12 10:00:26'),
(44, 'A Hundred Thousand White Stones', 'Kunsang Dolma\'s \"A Hundred Thousand White Stones\" is a candid memoir tracing her journey from Tibet to America, reflecting on hardship, resilience, and the complexities of pursuing a new life.', 'Kunsang Dolma', 1905.00, '/eBookStore/img/1709445688.jpg', 9, '3', '2024-03-03 00:16:28', '2024-03-07 22:00:36'),
(45, 'Butterfly', 'Experience the remarkable journey of Syrian refugee turned Olympic swimmer, Yusra Mardini, in \"The Swimmers\" on Netflix. A tale of bravery and resilience that captures the essence of human endurance and hope.', 'Yusra Mardini', 1040.00, '/eBookStore/img/1709445852.jpg', 10, '3', '2024-03-03 00:19:12', '2024-03-03 00:19:12'),
(46, 'God, Human, Animal, Machine', 'O’Gieblyn\'s exploration of technology and existentialism offers a fresh perspective on the nature of life in the digital age, challenging conventional paradigms with wit and depth.', 'Meghan O’Gieblyn', 960.00, '/eBookStore/img/1709446167.jpg', 9, '3', '2024-03-03 00:24:27', '2024-03-14 07:20:36'),
(47, 'Rape of Nanking', 'The Nanjing Massacre of December 13, 1937, epitomizes one of history\'s darkest atrocities, as Chinese civilians fell victim to brutal slaughter by the Imperial Japanese Army following the Battle of Nanking.', 'Iris Chang', 1299.00, '/eBookStore/img/1709446709.jpg', 9, '3', '2024-03-03 00:33:29', '2024-03-07 22:00:36'),
(48, 'Indo-Nepal Trade Relations', '\"Indo-Nepal Trade Relations\" unveils Nepal\'s resistance against British imperialism, highlighting economic resilience and favorable trade balance. Dr. Upadhyaya\'s analysis offers crucial insights for scholars and policymakers.', 'Shreeram Prasad Upadhyaya', 960.00, '/eBookStore/img/1709816423.jpeg', 9, '4', '2024-03-07 07:15:24', '2024-03-12 11:37:13'),
(49, 'Unraveling The Crown', 'Anne T. Mocko\'s study explores Nepal\'s shift from monarchy to democracy, highlighting the decline of the last king\'s authority amid secular politics. Recommended by anthropologist Mary Cameron for scholars and students of South Asian politics.', 'Anne Taylor Mocko', 1440.00, '/eBookStore/img/1709817057.jpeg', 9, '3', '2024-03-07 07:25:58', '2024-03-12 11:45:15'),
(50, 'The Power of Karma Yoga', 'In \'The Power of Karma Yoga,\' Gopinath Chandra Das explores the wisdom of the Bhagavad Gita\'s Karma Yoga chapters, offering guidance on purposeful living and transformation.', 'Gopinath Chandra Das', 640.00, '/eBookStore/img/1709819009.jpg', 11, '3', '2024-03-07 07:58:30', '2024-03-12 11:09:38'),
(51, 'Divine Rivals', 'Amid divine wars, rival journalists Iris and Roman discover love through mysterious letters. As they confront warring gods, their bond becomes their strength in \"Divine Rivals,\" a tale of love and sacrifice defying fate.', 'Rebecca Ross', 2999.00, '/eBookStore/img/1710297979.jpg', 15, '4', '2024-03-12 21:01:19', '2024-03-12 21:01:19'),
(52, 'If He Had Been with Me', 'In Laura Nowlin\'s \'If He Had Been with Me,\' childhood friends Autumn and Finny navigate high school\'s challenges, exploring love, loss, and friendship. Their journey unveils the enduring power of connections in this poignant coming-of-age tale.', 'Laura Nowlin', 958.00, '/eBookStore/img/1710298256.jpg', 15, '3', '2024-03-12 21:05:56', '2024-03-12 21:05:56'),
(53, 'The Unfair Advantage', 'This ground-breaking book exposes the myths behind startup success, illuminates the real forces at work and shows how they can be harnessed in your favour.', 'Ash Ali  Hasan Kubba', 800.00, '/eBookStore/img/1710298557.jpg', 14, '3', '2024-03-12 21:10:58', '2024-03-12 21:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `books_order`
--

CREATE TABLE `books_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books_order`
--

INSERT INTO `books_order` (`id`, `order_id`, `book_id`, `created_at`, `updated_at`) VALUES
(3, 22, 11, '2024-03-12 10:34:12', '2024-03-12 10:34:12'),
(4, 22, 12, '2024-03-12 10:34:12', '2024-03-12 10:34:12'),
(5, 23, 11, '2024-03-12 10:37:51', '2024-03-12 10:37:51'),
(6, 24, 50, '2024-03-12 11:09:38', '2024-03-12 11:09:38'),
(7, 25, 31, '2024-03-12 11:31:06', '2024-03-12 11:31:06'),
(8, 25, 42, '2024-03-12 11:31:06', '2024-03-12 11:31:06'),
(9, 26, 35, '2024-03-12 11:37:13', '2024-03-12 11:37:13'),
(10, 26, 48, '2024-03-12 11:37:13', '2024-03-12 11:37:13'),
(11, 27, 35, '2024-03-12 11:45:15', '2024-03-12 11:45:15'),
(12, 27, 49, '2024-03-12 11:45:15', '2024-03-12 11:45:15'),
(13, 28, 31, '2024-03-12 11:50:50', '2024-03-12 11:50:50'),
(14, 29, 46, '2024-03-14 07:20:36', '2024-03-14 07:20:36'),
(15, 30, 12, '2024-03-14 07:55:52', '2024-03-14 07:55:52'),
(16, 31, 15, '2024-03-15 03:25:33', '2024-03-15 03:25:33'),
(17, 32, 10, '2024-03-17 22:39:25', '2024-03-17 22:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 9, 15, '2024-03-02 00:04:42', '2024-03-02 00:04:42'),
(2, 10, 15, '2024-03-02 07:06:38', '2024-03-02 07:06:38'),
(3, 11, 15, '2024-03-02 07:13:54', '2024-03-02 07:13:54'),
(5, 13, 15, '2024-03-02 07:20:18', '2024-03-02 07:20:18'),
(6, 14, 15, '2024-03-02 07:27:45', '2024-03-02 07:27:45'),
(7, 15, 15, '2024-03-02 07:30:33', '2024-03-02 07:30:33'),
(8, 16, 11, '2024-03-02 09:24:29', '2024-03-02 09:24:29'),
(9, 17, 13, '2024-03-02 09:29:07', '2024-03-02 09:29:07'),
(10, 18, 14, '2024-03-02 09:36:25', '2024-03-02 09:36:25'),
(11, 19, 16, '2024-03-02 09:53:41', '2024-03-02 09:53:41'),
(12, 20, 16, '2024-03-02 09:55:43', '2024-03-02 09:55:43'),
(13, 21, 16, '2024-03-02 09:57:19', '2024-03-02 09:57:19'),
(14, 22, 16, '2024-03-02 09:59:21', '2024-03-02 09:59:21'),
(15, 23, 16, '2024-03-02 10:01:34', '2024-03-02 10:01:34'),
(16, 24, 16, '2024-03-02 10:04:59', '2024-03-02 10:04:59'),
(17, 25, 16, '2024-03-02 10:06:16', '2024-03-02 10:06:16'),
(18, 26, 16, '2024-03-02 10:07:57', '2024-03-02 10:07:57'),
(19, 27, 16, '2024-03-02 10:11:45', '2024-03-02 10:11:45'),
(20, 28, 16, '2024-03-02 10:14:22', '2024-03-02 10:14:22'),
(21, 29, 16, '2024-03-02 10:17:08', '2024-03-02 10:17:08'),
(22, 30, 9, '2024-03-02 12:11:42', '2024-03-02 12:11:42'),
(23, 31, 9, '2024-03-02 12:14:46', '2024-03-02 12:14:46'),
(24, 32, 9, '2024-03-02 12:16:44', '2024-03-02 12:16:44'),
(25, 33, 9, '2024-03-02 12:20:46', '2024-03-02 12:20:46'),
(26, 34, 10, '2024-03-02 12:24:04', '2024-03-02 12:24:04'),
(27, 35, 10, '2024-03-02 12:26:00', '2024-03-02 12:26:00'),
(28, 36, 2, '2024-03-02 12:34:26', '2024-03-02 12:34:26'),
(29, 37, 1, '2024-03-02 12:37:45', '2024-03-02 12:37:45'),
(30, 38, 12, '2024-03-02 12:42:33', '2024-03-02 12:42:33'),
(31, 39, 12, '2024-03-02 12:46:24', '2024-03-02 12:46:24'),
(32, 40, 1, '2024-03-02 21:22:10', '2024-03-02 21:22:10'),
(33, 41, 10, '2024-03-02 21:25:08', '2024-03-02 21:25:08'),
(34, 42, 12, '2024-03-02 21:44:00', '2024-03-02 21:44:00'),
(35, 43, 11, '2024-03-03 00:13:37', '2024-03-03 00:13:37'),
(36, 44, 11, '2024-03-03 00:16:29', '2024-03-03 00:16:29'),
(37, 45, 11, '2024-03-03 00:19:13', '2024-03-03 00:19:13'),
(38, 46, 11, '2024-03-03 00:24:27', '2024-03-03 00:24:27'),
(39, 47, 11, '2024-03-03 00:33:30', '2024-03-03 00:33:30'),
(40, 48, 11, '2024-03-07 07:15:24', '2024-03-07 07:15:24'),
(41, 49, 11, '2024-03-07 07:25:58', '2024-03-07 07:25:58'),
(42, 50, 2, '2024-03-07 07:58:30', '2024-03-07 07:58:30'),
(43, 51, 14, '2024-03-12 21:01:20', '2024-03-12 21:01:20'),
(44, 52, 13, '2024-03-12 21:05:57', '2024-03-12 21:05:57'),
(45, 53, 7, '2024-03-12 21:10:58', '2024-03-12 21:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `book_order`
--

CREATE TABLE `book_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_order`
--

CREATE TABLE `cart_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_order`
--

INSERT INTO `cart_order` (`id`, `order_id`, `cart_id`, `created_at`, `updated_at`) VALUES
(2, 5, 39, '2024-03-06 08:34:50', '2024-03-06 08:34:50'),
(3, 5, 40, '2024-03-06 08:34:50', '2024-03-06 08:34:50'),
(4, 5, 45, '2024-03-06 08:34:50', '2024-03-06 08:34:50'),
(5, 5, 46, '2024-03-06 08:34:50', '2024-03-06 08:34:50'),
(6, 5, 70, '2024-03-06 08:34:50', '2024-03-06 08:34:50'),
(7, 5, 73, '2024-03-06 08:34:50', '2024-03-06 08:34:50'),
(8, 6, 39, '2024-03-06 08:50:31', '2024-03-06 08:50:31'),
(9, 6, 40, '2024-03-06 08:50:31', '2024-03-06 08:50:31'),
(10, 6, 45, '2024-03-06 08:50:31', '2024-03-06 08:50:31'),
(11, 6, 46, '2024-03-06 08:50:31', '2024-03-06 08:50:31'),
(12, 6, 70, '2024-03-06 08:50:31', '2024-03-06 08:50:31'),
(13, 6, 73, '2024-03-06 08:50:31', '2024-03-06 08:50:31'),
(14, 6, 74, '2024-03-06 08:50:31', '2024-03-06 08:50:31'),
(15, 7, 39, '2024-03-06 08:53:25', '2024-03-06 08:53:25'),
(16, 7, 40, '2024-03-06 08:53:25', '2024-03-06 08:53:25'),
(17, 7, 45, '2024-03-06 08:53:25', '2024-03-06 08:53:25'),
(18, 7, 46, '2024-03-06 08:53:25', '2024-03-06 08:53:25'),
(19, 7, 70, '2024-03-06 08:53:25', '2024-03-06 08:53:25'),
(20, 7, 73, '2024-03-06 08:53:25', '2024-03-06 08:53:25'),
(21, 7, 74, '2024-03-06 08:53:25', '2024-03-06 08:53:25'),
(22, 8, 39, '2024-03-06 09:28:33', '2024-03-06 09:28:33'),
(23, 8, 40, '2024-03-06 09:28:33', '2024-03-06 09:28:33'),
(24, 8, 45, '2024-03-06 09:28:33', '2024-03-06 09:28:33'),
(25, 8, 46, '2024-03-06 09:28:33', '2024-03-06 09:28:33'),
(26, 8, 70, '2024-03-06 09:28:33', '2024-03-06 09:28:33'),
(27, 8, 73, '2024-03-06 09:28:33', '2024-03-06 09:28:33'),
(28, 8, 74, '2024-03-06 09:28:33', '2024-03-06 09:28:33'),
(29, 9, 2, '2024-03-06 09:38:24', '2024-03-06 09:38:24'),
(30, 9, 3, '2024-03-06 09:38:24', '2024-03-06 09:38:24'),
(31, 9, 4, '2024-03-06 09:38:24', '2024-03-06 09:38:24'),
(32, 9, 7, '2024-03-06 09:38:24', '2024-03-06 09:38:24'),
(33, 9, 44, '2024-03-06 09:38:24', '2024-03-06 09:38:24'),
(34, 10, 2, '2024-03-06 09:44:32', '2024-03-06 09:44:32'),
(35, 10, 3, '2024-03-06 09:44:32', '2024-03-06 09:44:32'),
(36, 10, 4, '2024-03-06 09:44:32', '2024-03-06 09:44:32'),
(37, 10, 7, '2024-03-06 09:44:32', '2024-03-06 09:44:32'),
(38, 10, 44, '2024-03-06 09:44:32', '2024-03-06 09:44:32'),
(39, 11, 76, '2024-03-06 10:05:27', '2024-03-06 10:05:27'),
(40, 12, 2, '2024-03-07 09:22:26', '2024-03-07 09:22:26'),
(41, 12, 3, '2024-03-07 09:22:26', '2024-03-07 09:22:26'),
(42, 12, 4, '2024-03-07 09:22:27', '2024-03-07 09:22:27'),
(43, 12, 7, '2024-03-07 09:22:27', '2024-03-07 09:22:27'),
(44, 12, 44, '2024-03-07 09:22:27', '2024-03-07 09:22:27'),
(45, 12, 77, '2024-03-07 09:22:27', '2024-03-07 09:22:27'),
(47, 19, 2, '2024-03-07 10:21:45', '2024-03-07 10:21:45'),
(48, 19, 3, '2024-03-07 10:21:45', '2024-03-07 10:21:45'),
(49, 19, 4, '2024-03-07 10:21:45', '2024-03-07 10:21:45'),
(50, 19, 7, '2024-03-07 10:21:45', '2024-03-07 10:21:45'),
(51, 19, 44, '2024-03-07 10:21:45', '2024-03-07 10:21:45'),
(52, 19, 77, '2024-03-07 10:21:45', '2024-03-07 10:21:45'),
(53, 20, 39, '2024-03-07 22:00:36', '2024-03-07 22:00:36'),
(54, 20, 40, '2024-03-07 22:00:36', '2024-03-07 22:00:36'),
(55, 20, 45, '2024-03-07 22:00:36', '2024-03-07 22:00:36'),
(56, 20, 46, '2024-03-07 22:00:36', '2024-03-07 22:00:36'),
(57, 20, 70, '2024-03-07 22:00:36', '2024-03-07 22:00:36'),
(58, 20, 73, '2024-03-07 22:00:36', '2024-03-07 22:00:36'),
(59, 20, 74, '2024-03-07 22:00:36', '2024-03-07 22:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Buddhism', '2024-02-28 01:36:18', '2024-02-28 01:36:18'),
(2, 'Hinduism', '2024-02-28 01:53:42', '2024-02-28 01:53:42'),
(3, 'Islam', '2024-02-28 01:53:55', '2024-02-28 01:53:55'),
(4, 'Christianity', '2024-02-28 01:54:05', '2024-02-28 01:54:05'),
(5, 'Entrepreneurship & Startups', '2024-03-01 04:10:37', '2024-03-01 04:10:37'),
(6, 'Leadership & Management', '2024-03-01 04:10:51', '2024-03-01 04:10:51'),
(7, 'Finance & Investing', '2024-03-01 04:11:02', '2024-03-01 04:11:02'),
(8, 'Marketing & Sales', '2024-03-01 04:12:17', '2024-03-01 04:12:17'),
(9, 'Mystery & Thriller', '2024-03-01 05:41:13', '2024-03-01 05:41:13'),
(10, 'Science Fiction & Fantasy', '2024-03-01 05:42:13', '2024-03-01 05:42:13'),
(11, 'History & Biography', '2024-03-01 05:43:20', '2024-03-01 05:43:20'),
(12, 'Kid\'s & Teens', '2024-03-01 05:49:32', '2024-03-01 05:49:32'),
(13, 'Romance', '2024-03-01 05:49:50', '2024-03-01 05:49:50'),
(14, 'Motivate & Thrive', '2024-03-01 05:53:50', '2024-03-01 05:53:50'),
(15, 'Highly Recommended Books', '2024-03-01 05:55:57', '2024-03-01 05:55:57'),
(16, 'Top 10 Coming Soon Books', '2024-03-01 05:56:54', '2024-03-01 05:56:54');

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
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(36, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(37, '2024_02_25_064020_create_roles_table', 1),
(38, '2024_02_25_065530_create_users_table', 1),
(39, '2024_02_25_070711_create_books_table', 1),
(40, '2024_02_25_072151_create_categories_table', 1),
(41, '2024_02_25_072444_create_book_category_table', 1),
(42, '2024_02_25_073631_create_orders_table', 1),
(43, '2024_02_25_074609_create_book_order_table', 1),
(44, '2024_02_25_075544_create_billing_addresses_table', 1),
(45, '2024_03_04_102649_create_shopping_carts_table', 2),
(47, '2024_03_06_045753_add_name_email_phone_province_city_street_to_orders_table', 3),
(48, '2024_03_06_061022_remove_total_price_created_at_updated_at_from_orders_table', 4),
(50, '2024_03_06_061705_add_order_status_payment_method_to_orders_table', 5),
(51, '2024_03_06_112431_create_cart_order_table', 6),
(52, '2024_03_07_132719_add_quantity_to_books_table', 7),
(53, '2024_03_08_025842_add_total_amount_to_orders_table', 8),
(54, '2024_03_12_143303_create_books_order_table', 9),
(55, '2024_03_12_160305_update_cart_order_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'CashOnDelivery',
  `order_status` enum('pending','processing','completed','cancelled') NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `province`, `city`, `street`, `total_amount`, `payment_method`, `order_status`, `order_date`) VALUES
(22, 3, 'john doe', 'john@gmail.com', '9876564022', 'Madesh', 'Kalaiya', 'Ratenagar', 0.00, 'CashOnDelivery', 'pending', '2024-03-12 16:19:12'),
(23, 3, 'john doe', 'john@gmail.com', '34323', 'Gandaki', 'PKHR', 'ammarsingh', 0.00, 'CashOnDelivery', 'pending', '2024-03-12 16:22:50'),
(24, 3, 'john doe', 'arohi@gmail.com', '0432423', 'Gandaki', 'xyz', 'xyz', 0.00, 'CashOnDelivery', 'pending', '2024-03-12 16:54:38'),
(25, 3, 'john doe', 'arohi@gmail.com', '0453243', 'Bagmati', 'ktm', 'putalisadak', 1509.00, 'CashOnDelivery', 'pending', '2024-03-12 17:16:06'),
(26, 6, 'Hari bahadur', 'hari@gmail.com', '078345', 'Gandaki', 'pkhr', 'lakeside', 1870.00, 'CashOnDelivery', 'pending', '2024-03-12 17:22:13'),
(27, 5, 'Ram Bahadur Magar', 'magar@gmail.com', '9800435623', 'Lumbini', 'Butwal', 'Dharmachowk', 2350.00, 'CashOnDelivery', 'pending', '2024-03-12 17:30:15'),
(28, 1, 'adminadmin', 'admincheck@gmail.com', '9898989', 'Koshi', 'adminCheck', 'adminadmin', 1109.00, 'CashOnDelivery', 'pending', '2024-03-12 17:35:50'),
(29, 4, 'Priyanka Serpuja', 'priyanka@gmail.com', '9812340668', 'Gandaki', 'Pokhara', 'ammarsingh chowk', 1070.00, 'CashOnDelivery', 'pending', '2024-03-14 13:05:36'),
(30, 4, 'Priyanka Serpuja', 'Serpuja@gmail.com', '076656', 'Gandaki', 'xyz', 'xyz', 909.00, 'CashOnDelivery', 'pending', '2024-03-14 13:40:52'),
(31, 4, 'Priyanka Serpuja', 'Priyanka@gmail.com', '0764533', 'Lumbini', 'zzz', 'zzz', 670.00, 'CashOnDelivery', 'pending', '2024-03-15 09:10:33'),
(32, 1, 'adminadmin', 'admin@gmail.com', '0781234', 'Madesh', 'xyz', 'xyz', 1109.00, 'CashOnDelivery', 'pending', '2024-03-18 04:24:24');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2024-02-28 01:19:12', '2024-02-28 01:19:12'),
(2, 'User', '2024-02-28 01:19:24', '2024-02-28 01:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(120, 6, 11, '2024-03-16 11:30:56', '2024-03-16 11:30:56'),
(121, 6, 50, '2024-03-16 11:31:04', '2024-03-16 11:31:04'),
(122, 6, 10, '2024-03-16 11:31:46', '2024-03-16 11:31:46'),
(123, 6, 11, '2024-03-16 11:33:20', '2024-03-16 11:33:20'),
(124, 6, 10, '2024-03-16 11:34:57', '2024-03-16 11:34:57'),
(125, 6, 10, '2024-03-16 11:37:14', '2024-03-16 11:37:14'),
(126, 6, 11, '2024-03-16 11:37:57', '2024-03-16 11:37:57'),
(127, 6, 11, '2024-03-16 11:38:25', '2024-03-16 11:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'adminadmin', 'admin@gmail.com', '$2y$10$Z1x8TIkq6LjyUy8JAcAZOOlcQnWGDm4X/dNqLjaEoTzFKRDTORTm6', '2024-02-28 01:23:43', '2024-02-28 01:23:43'),
(2, 2, 'alex alex', 'alex@gmail.com', '$2y$10$FKC/MQoZuuAeCQ9mpB0bjerhAcoz511dPYDAYzI.CAHRGKwtiZXWm', '2024-02-28 01:31:41', '2024-02-28 01:31:41'),
(3, 2, 'john doe', 'john@gmail.com', '$2y$10$faRg.uTOEVSAs6mNLGK/muSBu4gjDa60o2dNJfTga64FK0Di3W2x6', '2024-02-28 01:33:20', '2024-02-28 01:33:20'),
(4, 2, 'Priyanka Serpuja', 'priyanka@gmail.com', '$2y$10$Rh0QWCPd6IdLXWXnMmIUEe5LBNto4MPu8Jt29S8IkqiEzIv0ZeJ3u', '2024-02-28 22:28:59', '2024-02-28 22:28:59'),
(5, 2, 'Ram Bahadur Magar', 'ram@gmail.com', '$2y$10$Ekh.Sdaocsw0bbV6XHgUcumP6PikaSsP9yulv2xaZPqEpmTCLLFrm', '2024-03-06 10:04:22', '2024-03-06 10:04:22'),
(6, 2, 'Hari bahadur', 'hari@gmail.com', '$2y$10$V.C5RNvgS9Bi5vN2kWMJCuY/FvDruWl2ZMTFhU2.eaFQaNFxracWO', '2024-03-10 01:07:52', '2024-03-10 01:07:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_addresses_user_id_foreign` (`user_id`),
  ADD KEY `billing_addresses_book_order_id_foreign` (`book_order_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_order`
--
ALTER TABLE `books_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_order_order_id_foreign` (`order_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_order_order_id_foreign` (`order_id`);

--
-- Indexes for table `cart_order`
--
ALTER TABLE `cart_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_order_order_id_foreign` (`order_id`),
  ADD KEY `cart_order_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `books_order`
--
ALTER TABLE `books_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_order`
--
ALTER TABLE `cart_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD CONSTRAINT `billing_addresses_book_order_id_foreign` FOREIGN KEY (`book_order_id`) REFERENCES `book_order` (`id`),
  ADD CONSTRAINT `billing_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `books_order`
--
ALTER TABLE `books_order`
  ADD CONSTRAINT `books_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_order`
--
ALTER TABLE `book_order`
  ADD CONSTRAINT `book_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
