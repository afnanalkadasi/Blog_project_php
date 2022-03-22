-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 05:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = Inactive, 1 = Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `status`) VALUES
(2, 'drink', 'drink Category', 1),
(3, 'food', 'food cat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `post` longtext NOT NULL,
  `category_id` int(30) NOT NULL,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= for review, 1= published',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_published` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post`, `category_id`, `img_path`, `status`, `date_updated`, `date_published`) VALUES
(4, 'Batch Squid Jean Shorts', '&lt;span style=&quot;color: rgb(0, 0, 0); background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size:18px;color: rgb(0, 0, 0); background: transparent; position: relative;&quot;&gt;&nbsp;&lt;/span&gt;This food is very much a blend of the flavors of peach, orange and lemon-lime. It is definitely a little bit on the sweeter side, with the fruity orange flavor from the blue curacao.&lt;/span&gt;', 3, '1647960720_cook_01.jpg', 1, '2022-03-22 17:53:35', '2022-03-22 15:53:00'),
(5, 'Kale Chips Art Party', '&lt;h3 style=&quot;color: rgb(0, 0, 0); background: transparent; position: relative;&quot;&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); background: transparent; position: relative;&quot;&gt;This food is very much a blend of the flavors of peach, orange and lemon-lime. It is definitely a little bit on the sweeter side, with the fruity orange flavor from the blue curacao.&lt;/span&gt;&lt;/p&gt;&lt;h5 style=&quot;color: rgb(0, 0, 0); background: transparent; position: relative;&quot;&gt;&lt;br style=&quot;color: rgb(0, 0, 0); background: transparent; position: relative;&quot;&gt;&lt;/h5&gt;&lt;/h3&gt;', 3, '1647940680_breakfast_item.jpg', 1, '2022-03-22 17:45:35', '2022-03-22 15:45:00'),
(6, 'Driveway drink recipe', '&lt;span style=&quot;color: rgb(0, 0, 0); font-size: 18px; background: transparent; position: relative;&quot;&gt;&nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-size: 20px;&quot;&gt;This drink is very much a blend of the flavors of peach, orange and lemon-lime. It is definitely a little bit on the sweeter side, with the fruity orange flavor from the blue curacao.&lt;/span&gt;&lt;br&gt;', 2, '1647960780_sex-in-the-driveway-drink-3.jpg', 1, '2022-03-22 17:56:22', '2022-03-22 15:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_img`
--

CREATE TABLE `post_img` (
  `id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `fname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `about` longtext NOT NULL,
  `blog_name` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `contact`, `email`, `address`, `about`, `blog_name`, `date_updated`) VALUES
(1, '7779966625', 'afnanalkadasi22@gmail.com', '', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 24px;&quot;&gt;About us&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(154, 154, 154); font-family: Roboto, arial, sans-serif; font-size: 13px; text-align: start; background-color: rgb(242, 246, 255);&quot;&gt;Vivamus venenatis mi enim, ut gravida sem viverra sit amet. Nam ullamcorper dui nec risus malesuada fringilla. Aliquam erat volutpat. Aliquam a varius odio. Quisque iaculis massa vel nunc porta vehicula. Nulla consectetur iaculis elit. Vivamus euismod lorem rutrum iaculis commodo. Cras congue nisi non varius tincidunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'ASIAN RESTAURANT Blog Site', '2022-03-22 13:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'afnan', '123456789', 1, '2022-03-22 18:01:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_img`
--
ALTER TABLE `post_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_img`
--
ALTER TABLE `post_img`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
