-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2014 at 02:38 PM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_from_user_id` int(11) NOT NULL,
  `fk_to_user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `message_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `fk_from_user_id`, `fk_to_user_id`, `message`, `message_on`, `time`) VALUES
(1, 1, 2, 'Hello', '2014-07-19 09:28:56', 0),
(2, 2, 1, 'Hi ', '2014-07-19 09:28:56', 0),
(3, 1, 2, 'How are you doing ?', '2014-07-19 09:29:32', 0),
(4, 2, 1, 'I am doing good. Thanks What about you ?', '2014-07-19 09:29:32', 0),
(5, 2, 1, 'Whats going on ?', '2014-07-19 09:29:54', 0),
(6, 1, 2, 'Nothing special, as usual', '2014-07-21 09:21:02', 1405934462),
(7, 1, 2, 'Do you know me ?', '2014-07-21 09:21:58', 1405934518),
(8, 1, 2, '?????', '2014-07-21 09:24:16', 1405934656),
(9, 1, 2, 'Hi', '2014-07-21 10:27:30', 1405938450),
(10, 1, 2, '???', '2014-07-21 10:28:11', 1405938491),
(11, 3, 2, 'Hello', '2014-07-21 11:15:16', 1405941316),
(12, 2, 3, 'Hi', '2014-07-21 11:18:46', 1405941526),
(13, 3, 2, 'how are you ?', '2014-07-21 11:19:08', 1405941548),
(14, 2, 3, 'm good', '2014-07-21 11:19:13', 1405941553),
(15, 3, 2, 'Whats up', '2014-07-21 11:19:17', 1405941557),
(16, 3, 2, 'how is goin', '2014-07-21 11:19:21', 1405941561),
(17, 2, 3, 'wht about u', '2014-07-21 11:19:23', 1405941563),
(18, 3, 2, 'nitin', '2014-07-21 11:19:26', 1405941566),
(19, 3, 2, 'here', '2014-07-21 11:19:28', 1405941568),
(20, 3, 2, 'there ?', '2014-07-21 11:22:52', 1405941772),
(21, 3, 5, 'Hello', '2014-07-21 11:23:39', 1405941819),
(22, 4, 2, 'hi', '2014-07-21 11:23:55', 1405941835),
(23, 2, 5, 'hello', '2014-07-21 11:24:25', 1405941865),
(24, 2, 3, 'hi', '2014-07-21 11:26:21', 1405941981),
(25, 2, 4, 'Hiiiiiiiii uer3', '2014-07-21 11:26:31', 1405941991),
(26, 4, 3, 'hi user3 here', '2014-07-21 11:26:50', 1405942010),
(27, 4, 5, 'hi user3 here', '2014-07-21 11:27:24', 1405942044),
(28, 3, 2, 'how are you ?', '2014-07-21 11:28:44', 1405942124),
(29, 2, 3, 'm fine', '2014-07-21 11:29:05', 1405942145),
(30, 2, 3, 'n u', '2014-07-21 11:29:06', 1405942146),
(31, 2, 3, 'asdfdasfdas', '2014-07-21 11:29:11', 1405942151),
(32, 4, 2, 'hi', '2014-07-21 11:29:58', 1405942198),
(33, 3, 2, 'Hello', '2014-07-21 11:30:30', 1405942230),
(34, 3, 2, 'hwo ', '2014-07-21 11:30:34', 1405942234),
(35, 2, 3, 'Hi', '2014-07-21 11:30:34', 1405942234),
(36, 2, 3, 'asdf', '2014-07-21 11:30:38', 1405942238),
(37, 4, 2, 'hello', '2014-07-21 11:30:59', 1405942259),
(38, 5, 4, 'hi user 4 here ', '2014-07-21 11:31:05', 1405942265),
(39, 5, 4, 'how are you ?', '2014-07-21 11:31:08', 1405942268),
(40, 4, 5, 'm good', '2014-07-21 11:31:15', 1405942275),
(41, 5, 4, 'hhi', '2014-07-21 11:31:19', 1405942279),
(42, 5, 4, 'hhi', '2014-07-21 11:31:19', 1405942279),
(43, 5, 4, 'so ', '2014-07-21 11:31:21', 1405942281),
(44, 5, 4, 'Whats up', '2014-07-21 11:31:27', 1405942287),
(45, 4, 5, 'nothing', '2014-07-21 11:31:46', 1405942306),
(46, 5, 4, 'Hi', '2014-07-21 11:31:57', 1405942317),
(47, 4, 3, 'hello', '2014-07-21 11:32:47', 1405942367),
(48, 3, 4, 'user 2', '2014-07-21 11:32:48', 1405942368),
(49, 4, 3, 'user3', '2014-07-21 11:32:51', 1405942371),
(50, 2, 3, 'now fine', '2014-07-21 11:33:45', 1405942425),
(51, 2, 5, 'user4', '2014-07-21 11:34:17', 1405942457);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_users`
--

CREATE TABLE IF NOT EXISTS `login_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fk_user_id` (`fk_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `login_users`
--

INSERT INTO `login_users` (`id`, `fk_user_id`) VALUES
(4, 2),
(5, 3),
(8, 4),
(7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, '10bd3f40a4ebb18c8e7165019d352680f5f34bc7', 1268889823, 1405938164, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '127.0.0.1', 'user1', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'user1@admin.com', '', NULL, NULL, NULL, 1268889823, 1405938379, 1, 'User 1', 'Last', 'ADMIN', '0'),
(3, '127.0.0.1', 'user2', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'user2@admin.com', '', NULL, NULL, NULL, 1268889823, 1405939837, 1, 'User 2', 'last', 'ADMIN', '0'),
(4, '127.0.0.1', 'user3', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'user3@admin.com', '', NULL, NULL, NULL, 1268889823, 1405941819, 1, 'User 3', 'last', 'ADMIN', '0'),
(5, '127.0.0.1', 'user4', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'user4@admin.com', '', NULL, NULL, NULL, 1268889823, 1405941692, 1, 'User 4', 'last', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
