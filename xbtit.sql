-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 23, 2021 at 05:41 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xbtit`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

DROP TABLE IF EXISTS `login_tokens`;
CREATE TABLE IF NOT EXISTS `login_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `user_id`, `token`) VALUES
(1, 2, 'b166b091ead64bbbea4b9792cb9ecf01'),
(2, 2, '4159408b2a09fafe8766a0ea531a8569'),
(3, 2, 'a365dfa816206fbf6e01e0d79b59aa71'),
(4, 2, '02dde95400c5d0d00ff3e3e580d8e962'),
(5, 2, '9f250838f9564f447bc892615361e1b6'),
(6, 2, '5faea7c97f86ae693f9616b1fe739afa'),
(7, 2, '7701f63bc772f608689ed3ccde395823'),
(8, 2, 'ff396851a127dfee3e2233bbdf7fd69e'),
(9, 2, 'b8b3dd697da4fdf175a654f0115a468b'),
(10, 2, '741588f91b7590a82cf5066d5e647e7d'),
(11, 2, '927a0833e0d5c79a8f88130cfb156346'),
(12, 2, 'e5d69595903e48762a58699638960b65'),
(13, 2, '415ae18947aa9a32121d930381151b55'),
(14, 2, '63a107a644d68097da20b1656b83eed9'),
(15, 2, '5b3e08aa6b76b0966835158d6fb2235e'),
(16, 2, 'c72ccbd6b829977da4a857bf4f29c190'),
(17, 3, '5de510d8aa2decc14de78365e3e1e23d'),
(18, 2, 'e213e6073ff4067a72d54b20299fc7f5'),
(19, 3, 'a5ea1533d7fb5e06ab6e0766436b4c7f'),
(20, 3, 'ea5dcd9ffae4e59fd5854a8332112c34'),
(21, 2, '528df08d95f6c007eb05d151b2bb8410'),
(22, 4, '362c43ed8d56a3827fb48bd085311739'),
(23, 4, '2fbbcded1ffa8cd18202f2670dafbb91'),
(24, 4, '0c126fbb47f3f1ba48da779e2ccde2e5'),
(25, 4, '089907ab9bf00ae9d3d23cf5cacd10cc'),
(26, 4, '18c98955cd0f5b9abeb10e5f00727d82'),
(27, 4, '33b9367f96061928a2f7762b2d2a4382'),
(28, 4, '60c8a223c954c822b861c9a950909290'),
(29, 2, 'c2390bcc72a1bc1ce9e8ac3b93445bef'),
(30, 4, 'f432989ebf11374aaaaa4fea8270d753'),
(31, 2, '2dcff6c4e11464308065f3edb8ba2af0'),
(32, 4, '653c13683a2429d0dd9f3533efbfcf2f'),
(33, 4, 'a0f0ba93aabc464e5fb9254ea8b63331'),
(34, 4, '63c50b470592fdacc3c8b51dd4848ed1'),
(35, 4, '8aab59ebb212ae380719efb4f1ef949a'),
(36, 4, 'f0c7e99279c3bc779cc23c868b6bfb0d'),
(37, 4, 'bfb9e60d5eed8d8d0d105c922e4f9e24'),
(38, 2, 'a5c35f762781ff012f76d0ac123be2d2'),
(39, 4, '4e93e18063d489bfc89613181f3a192b'),
(40, 4, 'baf2df9ebaf13a0bab56a015f188442e'),
(41, 2, '7fb7c5deb80182aaba4a3ec5b4bebc86'),
(42, 4, '4057092093c4e7bef1ce1b4113ad142b'),
(43, 4, 'ee67c454cb6c82d0b5ca99aea417c1bf'),
(44, 2, 'f3da544c398c8295f0d02f2437fd22ea'),
(45, 2, '8746716b8afac356c28f85b4cbb57e8a');

-- --------------------------------------------------------

--
-- Table structure for table `profile_views`
--

DROP TABLE IF EXISTS `profile_views`;
CREATE TABLE IF NOT EXISTS `profile_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_visit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_bookmarks`
--

DROP TABLE IF EXISTS `users_bookmarks`;
CREATE TABLE IF NOT EXISTS `users_bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `info_hash` varchar(99) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_bookmarks`
--

INSERT INTO `users_bookmarks` (`id`, `user_id`, `info_hash`, `date`) VALUES
(35, 2, 'd0c84fe961fb1bd9f733dc8e786e77214584bad1', '2017-08-16 11:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_download_history`
--

DROP TABLE IF EXISTS `user_download_history`;
CREATE TABLE IF NOT EXISTS `user_download_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `info_hash` varchar(99) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xbit_files`
--

DROP TABLE IF EXISTS `xbit_files`;
CREATE TABLE IF NOT EXISTS `xbit_files` (
  `info_hash` varchar(40) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `screen1` varchar(255) NOT NULL DEFAULT '',
  `screen2` varchar(255) NOT NULL DEFAULT '',
  `screen3` varchar(255) NOT NULL DEFAULT '',
  `gold` enum('0','1','2') NOT NULL DEFAULT '0',
  `info` varchar(250) NOT NULL DEFAULT '',
  `data` datetime DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT '0',
  `comment` text,
  `category` int(10) UNSIGNED NOT NULL DEFAULT '6',
  `external` enum('yes','no') NOT NULL DEFAULT 'no',
  `announce_url` varchar(100) NOT NULL DEFAULT '',
  `uploader` int(10) NOT NULL DEFAULT '1',
  `lastupdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `anonymous` enum('true','false') NOT NULL DEFAULT 'false',
  `lastsuccess` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dlbytes` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `seeds` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `leechers` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `finished` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastcycle` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastSpeedCycle` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `speed` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `bin_hash` blob NOT NULL,
  PRIMARY KEY (`info_hash`),
  KEY `filename` (`filename`),
  KEY `category` (`category`),
  KEY `uploader` (`uploader`),
  KEY `bin_hash` (`bin_hash`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_bannedip`
--

DROP TABLE IF EXISTS `xbtit_bannedip`;
CREATE TABLE IF NOT EXISTS `xbtit_bannedip` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `added` int(11) NOT NULL DEFAULT '0',
  `addedby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `first` bigint(11) UNSIGNED DEFAULT NULL,
  `last` bigint(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `first_last` (`first`,`last`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_blocks`
--

DROP TABLE IF EXISTS `xbtit_blocks`;
CREATE TABLE IF NOT EXISTS `xbtit_blocks` (
  `blockid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(600) NOT NULL DEFAULT '',
  `position` char(1) NOT NULL DEFAULT '',
  `sortid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `cache` enum('yes','no') NOT NULL,
  `minclassview` int(11) NOT NULL DEFAULT '0',
  `maxclassview` int(11) NOT NULL DEFAULT '8',
  PRIMARY KEY (`blockid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_blocks`
--

INSERT INTO `xbtit_blocks` (`blockid`, `content`, `position`, `sortid`, `status`, `title`, `cache`, `minclassview`, `maxclassview`) VALUES
(1, 'menu', 'r', 5, 0, 'BLOCK_MENU', 'no', 3, 8),
(2, 'clock', 'r', 2, 0, 'BLOCK_CLOCK', 'no', 3, 8),
(3, 'forum', 'r', 3, 1, 'BLOCK_FORUM', 'no', 3, 8),
(4, 'lastmember', 'l', 1, 1, 'BLOCK_LASTMEMBER', 'no', 3, 8),
(6, 'trackerinfo', 'l', 3, 0, 'BLOCK_INFO', 'no', 3, 8),
(7, 'user', 'r', 4, 0, 'BLOCK_USER', 'no', 3, 8),
(8, 'online', 'b', 1, 0, 'BLOCK_ONLINE', 'no', 3, 8),
(10, 'toptorrents', 'c', 6, 1, 'BLOCK_TOPTORRENTS', 'no', 3, 8),
(11, 'lasttorrents', 'c', 5, 1, 'BLOCK_LASTTORRENTS', 'no', 3, 8),
(12, 'news', 'c', 2, 0, 'BLOCK_NEWS', 'no', 3, 8),
(13, 'mainmenu', 'e', 1, 0, 'BLOCK_MENU', 'no', 1, 8),
(14, 'maintrackertoolbar', 't', 2, 1, 'BLOCK_MAINTRACKERTOOLBAR', 'no', 3, 8),
(15, 'mainusertoolbar', 't', 2, 1, 'BLOCK_MAINUSERTOOLBAR', 'no', 3, 8),
(16, 'serverload', 'c', 7, 0, 'BLOCK_SERVERLOAD', 'no', 8, 8),
(17, 'poller', 'l', 2, 1, 'BLOCK_POLL', 'no', 3, 8),
(18, 'seedwanted', 'c', 4, 1, 'BLOCK_SEEDWANTED', 'no', 3, 8),
(19, 'paypal', 'r', 1, 1, 'BLOCK_PAYPAL', 'no', 3, 8),
(20, 'ajax_shoutbox', 'c', 3, 1, 'BLOCK_SHOUTBOX', 'no', 3, 8),
(21, 'dropdownmenu', 'd', 1, 0, 'BLOCK_DDMENU', 'no', 1, 8),
(22, 'header', 't', 1, 1, 'BLOCK_HEADER', 'no', 1, 8),
(24, 'login', 'c', 1, 1, 'BLOCK_LOGIN', 'no', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_bonus`
--

DROP TABLE IF EXISTS `xbtit_bonus`;
CREATE TABLE IF NOT EXISTS `xbtit_bonus` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `points` decimal(4,1) NOT NULL DEFAULT '0.0',
  `traffic` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gb` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_bonus`
--

INSERT INTO `xbtit_bonus` (`id`, `name`, `points`, `traffic`, `gb`) VALUES
(1, '1', '30.0', 1073741824, 1),
(2, '2', '50.0', 2147483648, 2),
(3, '3', '100.0', 5368709120, 5);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_categories`
--

DROP TABLE IF EXISTS `xbtit_categories`;
CREATE TABLE IF NOT EXISTS `xbtit_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `sub` int(10) NOT NULL DEFAULT '0',
  `sort_index` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_categories`
--

INSERT INTO `xbtit_categories` (`id`, `name`, `sub`, `sort_index`, `image`) VALUES
(7, 'תוכנות', 0, 1010, 'windows.png'),
(6, 'ספרים', 0, 110, 'books.png'),
(5, 'אנימה', 0, 90, 'anime_new.png'),
(4, 'אחר', 0, 1000, 'utilities2.png'),
(3, 'משחקים', 0, 40, 'games.png'),
(2, 'מוזיקה', 0, 20, 'music.png'),
(1, 'סרטים', 0, 10, 'mov1es.png'),
(14, 'כתוביות', 1, 1, 'movies-imdb.png'),
(12, 'מבוגרים', 0, 6969, 'adult.png'),
(13, 'ללא קטגוריה', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_chat`
--

DROP TABLE IF EXISTS `xbtit_chat`;
CREATE TABLE IF NOT EXISTS `xbtit_chat` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(9) NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  `name` tinytext NOT NULL,
  `text` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_chat`
--

INSERT INTO `xbtit_chat` (`id`, `uid`, `time`, `name`, `text`) VALUES
(1, 2, 1502377398, 'yakovd33', 'Hello'),
(2, 2, 1502377404, 'yakovd33', 'sup?'),
(3, 2, 1502891909, 'yakovd33', '?'),
(4, 2, 1502891937, 'yakovd33', ' -_- ');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_comments`
--

DROP TABLE IF EXISTS `xbtit_comments`;
CREATE TABLE IF NOT EXISTS `xbtit_comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text NOT NULL,
  `ori_text` text NOT NULL,
  `user` varchar(20) NOT NULL DEFAULT '',
  `info_hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `info_hash` (`info_hash`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_comments`
--

INSERT INTO `xbtit_comments` (`id`, `added`, `text`, `ori_text`, `user`, `info_hash`) VALUES
(1, '2017-08-10 18:36:53', 'Thank me!:-/', 'Thank me!:-/', 'yakovd33', 'a54964e2cb66b1260eb1923acee8aabf7fe7f2f7');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_countries`
--

DROP TABLE IF EXISTS `xbtit_countries`;
CREATE TABLE IF NOT EXISTS `xbtit_countries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `flagpic` varchar(50) DEFAULT NULL,
  `domain` char(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_countries`
--

INSERT INTO `xbtit_countries` (`id`, `name`, `flagpic`, `domain`) VALUES
(1, 'Sweden', 'se.png', 'SE'),
(2, 'United States of America', 'us.png', 'US'),
(3, 'American Samoa', 'as.png', 'AS'),
(4, 'Finland', 'fi.png', 'FI'),
(5, 'Canada', 'ca.png', 'CA'),
(6, 'France', 'fr.png', 'FR'),
(7, 'Germany', 'de.png', 'DE'),
(8, 'China', 'cn.png', 'CN'),
(9, 'Italy', 'it.png', 'IT'),
(10, 'Denmark', 'dk.png', 'DK'),
(11, 'Norway', 'no.png', 'NO'),
(12, 'United Kingdom', 'gb.png', 'GB'),
(13, 'Ireland', 'ie.png', 'IE'),
(14, 'Poland', 'pl.png', 'PL'),
(15, 'Netherlands', 'nl.png', 'NL'),
(16, 'Belgium', 'be.png', 'BE'),
(17, 'Japan', 'jp.png', 'JP'),
(18, 'Brazil', 'br.png', 'BR'),
(19, 'Argentina', 'ar.png', 'AR'),
(20, 'Australia', 'au.png', 'AU'),
(21, 'New Zealand', 'nz.png', 'NZ'),
(22, 'United Arab Emirates', 'ae.png', 'AE'),
(23, 'Spain', 'es.png', 'ES'),
(24, 'Portugal', 'pt.png', 'PT'),
(25, 'Mexico', 'mx.png', 'MX'),
(26, 'Singapore', 'sg.png', 'SG'),
(27, 'Anguilla', 'ai.png', 'AI'),
(28, 'Armenia', 'am.png', 'AM'),
(29, 'South Africa', 'za.png', 'ZA'),
(30, 'South Korea', 'kr.png', 'KR'),
(31, 'Jamaica', 'jm.png', 'JM'),
(32, 'Luxembourg', 'lu.png', 'LU'),
(33, 'Hong Kong', 'hk.png', 'HK'),
(34, 'Belize', 'bz.png', 'BZ'),
(35, 'Algeria', 'dz.png', 'DZ'),
(36, 'Angola', 'ao.png', 'AO'),
(37, 'Austria', 'at.png', 'AT'),
(38, 'Aruba', 'aw.png', 'AW'),
(39, 'Samoa', 'ws.png', 'WS'),
(40, 'Malaysia', 'my.png', 'MY'),
(41, 'Dominican Republic', 'do.png', 'DO'),
(42, 'Greece', 'gr.png', 'GR'),
(43, 'Guatemala', 'gt.png', 'GT'),
(44, 'Israel', 'il.png', 'IL'),
(45, 'Pakistan', 'pk.png', 'PK'),
(46, 'Czech Republic', 'cz.png', 'CZ'),
(47, 'Serbia and Montenegro', 'cs.png', 'CS'),
(48, 'Seychelles', 'sc.png', 'SC'),
(49, 'Taiwan', 'tw.png', 'TW'),
(50, 'Puerto Rico', 'pr.png', 'PR'),
(51, 'Chile', 'cl.png', 'CL'),
(52, 'Cuba', 'cu.png', 'CU'),
(53, 'Congo', 'cg.png', 'CG'),
(54, 'Afghanistan', 'af.png', 'AF'),
(55, 'Turkey', 'tr.png', 'TR'),
(56, 'Uzbekistan', 'uz.png', 'UZ'),
(57, 'Switzerland', 'ch.png', 'CH'),
(58, 'Kiribati', 'ki.gif', 'KI'),
(59, 'Philippines', 'ph.png', 'PH'),
(60, 'Burkina Faso', 'bf.png', 'BF'),
(61, 'Nigeria', 'ng.png', 'NG'),
(62, 'Iceland', 'is.png', 'IS'),
(63, 'Nauru', 'nr.png', 'NR'),
(64, 'Slovenia', 'si.png', 'SI'),
(65, 'Albania', 'al.png', 'AL'),
(66, 'Turkmenistan', 'tm.png', 'TM'),
(67, 'Bosnia and Herzegovina', 'ba.png', 'BA'),
(68, 'Andorra', 'ad.png', 'AD'),
(69, 'Lithuania', 'lt.png', 'LT'),
(70, 'India', 'in.png', 'IN'),
(71, 'Netherlands Antilles', 'an.png', 'AN'),
(72, 'Ukraine', 'ua.png', 'UA'),
(73, 'Venezuela', 've.png', 'VE'),
(74, 'Hungary', 'hu.png', 'HU'),
(75, 'Romania', 'ro.png', 'RO'),
(76, 'Vanuatu', 'vu.png', 'VU'),
(77, 'Viet Nam', 'vn.png', 'VN'),
(78, 'Trinidad & Tobago', 'tt.png', 'TT'),
(79, 'Honduras', 'hn.png', 'HN'),
(80, 'Kyrgyzstan', 'kg.png', 'KG'),
(81, 'Ecuador', 'ec.png', 'EC'),
(82, 'Bahamas', 'bs.png', 'BS'),
(83, 'Peru', 'pe.png', 'PE'),
(84, 'Cambodia', 'kh.png', 'KH'),
(85, 'Barbados', 'bb.png', 'BB'),
(86, 'Bangladesh', 'bd.png', 'BD'),
(87, 'Laos', 'la.png', 'LA'),
(88, 'Uruguay', 'uy.png', 'UY'),
(89, 'Antigua Barbuda', 'ag.png', 'AG'),
(90, 'Paraguay', 'py.png', 'PY'),
(91, 'Antarctica', 'aq.png', 'AQ'),
(92, 'Russian Federation', 'ru.png', 'RU'),
(93, 'Thailand', 'th.png', 'TH'),
(94, 'Senegal', 'sn.png', 'SN'),
(95, 'Togo', 'tg.png', 'TG'),
(96, 'North Korea', 'kp.png', 'KP'),
(97, 'Croatia', 'hr.png', 'HR'),
(98, 'Estonia', 'ee.png', 'EE'),
(99, 'Colombia', 'co.png', 'CO'),
(100, 'unknown', 'unknown.gif', 'AA'),
(101, 'Organization', 'org.png', 'ORG'),
(102, 'Aland Islands', 'ax.png', 'AX'),
(103, 'Azerbaijan', 'az.png', 'AZ'),
(104, 'Bulgaria', 'bg.png', 'BG'),
(105, 'Bahrain', 'bh.png', 'BH'),
(106, 'Burundi', 'bi.png', 'BI'),
(107, 'Benin', 'bj.png', 'BJ'),
(108, 'Bermuda', 'bm.png', 'BM'),
(109, 'Brunei Darussalam', 'bn.png', 'BN'),
(110, 'Bolivia', 'bo.png', 'BO'),
(111, 'Bhutan', 'bt.png', 'BT'),
(112, 'Bouvet Island', 'bv.png', 'BV'),
(113, 'Botswana', 'bw.png', 'BW'),
(114, 'Belarus', 'by.png', 'BY'),
(115, 'Cocos (Keeling) Islands', 'cc.png', 'CC'),
(116, 'Congo, the Democratic Republic of the', 'cd.png', 'CD'),
(117, 'Central African Republic', 'cf.png', 'CF'),
(118, 'Ivory Coast', 'ci.png', 'CI'),
(119, 'Cook Islands', 'ck.png', 'CK'),
(120, 'Cameroon', 'cm.png', 'CM'),
(121, 'Costa Rica', 'cr.png', 'CR'),
(122, 'Cape Verde', 'cv.png', 'CV'),
(123, 'Christmas Island', 'cx.png', 'CX'),
(124, 'Cyprus', 'cy.png', 'CY'),
(125, 'Djibouti', 'dj.png', 'DJ'),
(126, 'Dominica', 'dm.png', 'DM'),
(127, 'Egypt', 'eg.png', 'EG'),
(128, 'Western Sahara', 'eh.png', 'EH'),
(129, 'Eritrea', 'er.png', 'ER'),
(130, 'Ethiopia', 'et.png', 'ET'),
(131, 'Fiji', 'fj.png', 'FJ'),
(132, 'Falkland Islands (Malvinas)', 'fk.png', 'FK'),
(133, 'Micronesia, Federated States of', 'fm.png', 'FM'),
(134, 'Faroe Islands', 'fo.png', 'FO'),
(135, 'Gabon', 'ga.png', 'GA'),
(136, 'Grenada', 'gd.png', 'GD'),
(137, 'Georgia', 'ge.png', 'GE'),
(138, 'French Guiana', 'gf.png', 'GF'),
(139, 'Guernsey', 'gg.png', 'GG'),
(140, 'Ghana', 'gh.png', 'GH'),
(141, 'Gibraltar', 'gi.png', 'GI'),
(142, 'Greenland', 'gl.png', 'GL'),
(143, 'Gambia', 'gm.png', 'GM'),
(144, 'Guinea', 'gn.png', 'GN'),
(145, 'Guadeloupe', 'gp.png', 'GP'),
(146, 'Equatorial Guinea', 'gq.png', 'GQ'),
(147, 'South Georgia and the South Sandwich Islands', 'gs.png', 'GS'),
(148, 'Guam', 'gu.png', 'GU'),
(149, 'Guinea-Bissau', 'gw.png', 'GW'),
(150, 'Guyana', 'gy.png', 'GY'),
(151, 'Heard Island and McDonald Islands', 'hm.png', 'HM'),
(152, 'Haiti', 'ht.png', 'HT'),
(153, 'Indonesia', 'id.png', 'ID'),
(154, 'Isle of Man', 'im.png', 'IM'),
(155, 'British Indian Ocean Territory', 'io.png', 'IO'),
(156, 'Jersey', 'je.png', 'JE'),
(157, 'Jordan', 'jo.png', 'JO'),
(158, 'Kenya', 'ke.png', 'KE'),
(159, 'Comoros', 'km.png', 'KM'),
(160, 'Saint Kitts and Nevis', 'kn.png', 'KN'),
(161, 'Kuwait', 'kw.png', 'KW'),
(162, 'Cayman Islands', 'ky.png', 'KY'),
(163, 'Kazahstan', 'kz.png', 'KZ'),
(164, 'Lebanon', 'lb.png', 'LB'),
(165, 'Saint Lucia', 'lc.png', 'LC'),
(166, 'Liechtenstein', 'li.png', 'LI'),
(167, 'Sri Lanka', 'lk.png', 'LK'),
(168, 'Liberia', 'lr.png', 'LR'),
(169, 'Lesotho', 'ls.png', 'LS'),
(170, 'Latvia', 'lv.png', 'LV'),
(171, 'Libyan Arab Jamahiriya', 'ly.png', 'LY'),
(172, 'Morocco', 'ma.png', 'MA'),
(173, 'Monaco', 'mc.png', 'MC'),
(174, 'Moldova, Republic of', 'md.png', 'MD'),
(175, 'Madagascar', 'mg.png', 'MG'),
(176, 'Marshall Islands', 'mh.png', 'MH'),
(177, 'Macedonia, the former Yugoslav Republic of', 'mk.png', 'MK'),
(178, 'Mali', 'ml.png', 'ML'),
(179, 'Myanmar', 'mm.png', 'MM'),
(180, 'Mongolia', 'mn.png', 'MN'),
(181, 'Macao', 'mo.png', 'MO'),
(182, 'Northern Mariana Islands', 'mp.png', 'MP'),
(183, 'Martinique', 'mq.png', 'MQ'),
(184, 'Mauritania', 'mr.png', 'MR'),
(185, 'Montserrat', 'ms.png', 'MS'),
(186, 'Malta', 'mt.png', 'MT'),
(187, 'Mauritius', 'mu.png', 'MU'),
(188, 'Maldives', 'mv.png', 'MV'),
(189, 'Malawi', 'mw.png', 'MW'),
(190, 'Mozambique', 'mz.png', 'MZ'),
(191, 'Namibia', 'na.png', 'NA'),
(192, 'New Caledonia', 'nc.png', 'NC'),
(193, 'Niger', 'ne.png', 'NE'),
(194, 'Norfolk Island', 'nf.png', 'NF'),
(195, 'Nicaragua', 'ni.png', 'NI'),
(196, 'Nepal', 'np.png', 'NP'),
(197, 'Niue', 'nu.png', 'NU'),
(198, 'Oman', 'om.png', 'OM'),
(199, 'Panama', 'pa.png', 'PA'),
(200, 'French Polynesia', 'pf.png', 'PF'),
(201, 'Papua New Guinea', 'pg.png', 'PG'),
(202, 'Saint Pierre and Miquelon', 'pm.png', 'PM'),
(203, 'Pitcairn', 'pn.png', 'PN'),
(204, 'Palestinian Territory, Occupied', 'ps.png', 'PS'),
(205, 'Palau', 'pw.png', 'PW'),
(206, 'Qatar', 'qa.png', 'QA'),
(207, 'Reunion', 're.png', 'RE'),
(208, 'Rwanda', 'rw.png', 'RW'),
(209, 'Saudi Arabia', 'sa.png', 'SA'),
(210, 'Solomon Islands', 'sb.png', 'SB'),
(211, 'Sudan', 'sd.png', 'SD'),
(212, 'Saint Helena', 'sh.png', 'SH'),
(213, 'Svalbard and Jan Mayen', 'sj.png', 'SJ'),
(214, 'Slovakia', 'sk.png', 'SK'),
(215, 'Sierra Leone', 'sl.png', 'SL'),
(216, 'San Marino', 'sm.png', 'SM'),
(217, 'Somalia', 'so.png', 'SO'),
(218, 'Suriname', 'sr.png', 'SR'),
(219, 'Sao Tome and Principe', 'st.png', 'ST'),
(220, 'El Salvador', 'sv.png', 'SV'),
(221, 'Syrian Arab Republic', 'sy.png', 'SY'),
(222, 'Swaziland', 'sz.png', 'SZ'),
(223, 'Turks and Caicos Islands', 'tc.png', 'TC'),
(224, 'Chad', 'td.png', 'TD'),
(225, 'French Southern Territories', 'tf.png', 'TF'),
(226, 'Tajikistan', 'tj.png', 'TJ'),
(227, 'Tokelau', 'tk.png', 'TK'),
(228, 'Timor-Leste', 'tl.png', 'TL'),
(229, 'Tunisia', 'tn.png', 'TN'),
(230, 'Tonga', 'to.png', 'TO'),
(231, 'Tuvalu', 'tv.png', 'TV'),
(232, 'Tanzania, United Republic of', 'tz.png', 'TZ'),
(233, 'Uganda', 'ug.png', 'UG'),
(234, 'United States Minor Outlying Islands', 'um.png', 'UM'),
(235, 'Holy See (Vatican City State)', 'va.png', 'VA'),
(236, 'Saint Vincent and the Grenadines', 'vc.png', 'VC'),
(237, 'Virgin Islands, British', 'vg.png', 'VG'),
(238, 'Wallis and Futuna', 'wf.png', 'WF'),
(239, 'Yemen', 'ye.png', 'YE'),
(240, 'Mayotte', 'yt.png', 'YT'),
(241, 'Zambia', 'zm.png', 'ZM'),
(242, 'Zimbabwe', 'zw.png', 'ZW'),
(243, 'Iraq', 'iq.png', 'IQ'),
(244, 'Iran, Islamic Republic of', 'ir.png', 'IR');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_files`
--

DROP TABLE IF EXISTS `xbtit_files`;
CREATE TABLE IF NOT EXISTS `xbtit_files` (
  `info_hash` varchar(40) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `screen1` varchar(255) NOT NULL DEFAULT '',
  `screen2` varchar(255) NOT NULL DEFAULT '',
  `screen3` varchar(255) NOT NULL DEFAULT '',
  `gold` enum('0','1','2') NOT NULL DEFAULT '0',
  `info` varchar(250) NOT NULL DEFAULT '',
  `data` datetime DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT '0',
  `comment` text,
  `category` int(10) UNSIGNED DEFAULT '6',
  `external` enum('yes','no') NOT NULL DEFAULT 'no',
  `announce_url` varchar(100) NOT NULL DEFAULT '',
  `uploader` int(10) NOT NULL DEFAULT '1',
  `lastupdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `anonymous` enum('true','false') NOT NULL DEFAULT 'false',
  `lastsuccess` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dlbytes` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `seeds` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `leechers` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `finished` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastcycle` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastSpeedCycle` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `speed` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `bin_hash` blob NOT NULL,
  `file_info_hash` varchar(99) NOT NULL,
  PRIMARY KEY (`info_hash`),
  KEY `filename` (`filename`),
  KEY `category` (`category`),
  KEY `uploader` (`uploader`),
  KEY `bin_hash` (`bin_hash`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_files`
--

INSERT INTO `xbtit_files` (`info_hash`, `filename`, `url`, `image`, `screen1`, `screen2`, `screen3`, `gold`, `info`, `data`, `size`, `comment`, `category`, `external`, `announce_url`, `uploader`, `lastupdate`, `anonymous`, `lastsuccess`, `dlbytes`, `seeds`, `leechers`, `finished`, `lastcycle`, `lastSpeedCycle`, `speed`, `bin_hash`, `file_info_hash`) VALUES
('a54964e2cb66b1260eb1923acee8aabf7fe7f2f7', 'תמונה', 'torrents/a54964e2cb66b1260eb1923acee8aabf7fe7f2f7.btf', '', '', '', '', '0', '', '2017-08-10 18:28:54', 912, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'no', '', 2, '2017-08-14 13:33:58', 'false', '2017-08-10 18:28:54', 0, 0, 0, 0, 1502906721, 0, 0, 0xa54964e2cb66b1260eb1923acee8aabf7fe7f2f7, ''),
('$hash', 'תמונה', '$url', '', '', '', '', '0', '$info', '2017-08-10 18:33:51', 120, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'yes', '$announce', 1, '2017-08-14 13:33:58', 'false', '2017-08-10 18:33:51', 0, 0, 0, 0, 0, 0, 0, 0x31323334, ''),
('85fe8e8aaced7ec1a9ea2770c29243589c2c91a3', 'תמונה', 'torrents/85fe8e8aaced7ec1a9ea2770c29243589c2c91a3.btf', '85fe8e8aaced7ec1a9ea2770c29243589c2c91a3.jpg', '', '', '', '0', '', '2017-08-10 18:44:10', 30, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'yes', 'udp://tracker.openbittorrent.com:80/announce', 2, '2017-08-14 13:33:58', 'false', '2017-08-10 18:44:10', 0, 0, 0, 0, 0, 0, 0, 0x85fe8e8aaced7ec1a9ea2770c29243589c2c91a3, ''),
('9b0f04078c937f65b689c73775aa7bc8a781e4ac', 'תמונה', 'torrents/9b0f04078c937f65b689c73775aa7bc8a781e4ac.btf', '', '', '', '', '0', '', '2017-08-11 17:29:51', 1152871, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'no', '', 2, '2017-08-14 13:33:58', 'false', '2017-08-11 17:29:51', 0, 0, 0, 0, 1502906721, 0, 0, 0x9b0f04078c937f65b689c73775aa7bc8a781e4ac, ''),
('4e79eae185b659222bf4d426e3ccdb120304e8b9', 'תמונה', 'torrents/4e79eae185b659222bf4d426e3ccdb120304e8b9.btf', '', '', '', '', '0', '', '2017-08-11 21:20:39', 1152871, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'yes', 'http://localhost:8080/announce.php', 2, '2017-08-14 13:33:58', 'false', '2017-08-11 21:20:39', 0, 0, 0, 0, 0, 0, 0, 0x4e79eae185b659222bf4d426e3ccdb120304e8b9, ''),
('c7cb1108b809aea027fe011ad4c416c3abd2ea3e', 'תמונה', 'torrents/c7cb1108b809aea027fe011ad4c416c3abd2ea3e.btf', '', '', '', '', '0', '', '2017-08-11 22:51:58', 828024880, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'yes', 'http://localhost:8080/announce.php', 0, '2017-08-14 13:33:58', 'false', '2017-08-11 22:51:58', 0, 0, 0, 0, 0, 0, 0, 0x307863376362313130386238303961656130323766653031316164346334313663336162643265613365, ''),
('c6b0e3c9220dde43ac0c904080feb5c58983a388', 'תמונה', 'torrents/c6b0e3c9220dde43ac0c904080feb5c58983a388.btf', 'c6b0e3c9220dde43ac0c904080feb5c58983a388.png', '', '', '', '0', '', '2017-08-11 23:28:30', 239262097, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'yes', 'http://localhost:8080/announce.php', 0, '2017-08-14 13:33:58', 'false', '2017-08-11 23:28:30', 0, 0, 0, 0, 0, 0, 0, 0x307863366230653363393232306464653433616330633930343038306665623563353839383361333838, ''),
('025a21ea608f11a086734bab40b717b855881681', 'תמונה', 'torrents/025a21ea608f11a086734bab40b717b855881681.btf', '', '', '', '', '0', '', '2017-08-11 23:35:22', 133538969, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'yes', 'http://localhost:8080/announce.php', 2, '2017-08-14 13:33:58', 'false', '2017-08-11 23:35:22', 0, 0, 0, 0, 0, 0, 0, 0x307830323561323165613630386631316130383637333462616234306237313762383535383831363831, ''),
('b326d988d8c65e419ebb9178258e56553f0b0c0b', 'תמונה', 'torrents/b326d988d8c65e419ebb9178258e56553f0b0c0b.btf', '', '', '', '', '0', '', '2017-08-12 02:35:17', 1461455468, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'no', '', 2, '2017-08-14 13:33:58', '', '2017-08-12 02:35:17', 0, 0, 0, 0, 1502906721, 1502540487, 0, 0x207082a0da62ee757357dd955f9fa1e91c4483ef, ''),
('58a81ab10f3baff13926718fc6032d5a627e4ff6', 'להלהלה', 'torrents/58a81ab10f3baff13926718fc6032d5a627e4ff6.btf', '', '', '', '', '0', '', '2017-08-12 07:26:04', 284718, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'no', '', 2, '2017-08-14 13:40:00', 'false', '2017-08-12 07:26:04', 0, 0, 1, 0, 1502548324, 1502556820, 0, 0x58a81ab10f3baff13926718fc6032d5a627e4ff6, '58a81ab10f3baff13926718fc6032d5a627e4ff6'),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 'Level Up 2016 LIMITED 1080p BluRay x264-GECKOS ', 'torrents/d0c84fe961fb1bd9f733dc8e786e77214584bad1.btf', '', '', '', '', '0', '', '2017-08-12 10:19:27', 19, '<p>שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;שלום&nbsp;</p>\r\n', 7, 'no', '', 2, '2017-08-16 12:41:22', 'false', '2017-08-12 10:19:27', 0, 2, 2, 0, 1502907250, 1502907250, 0, 0xd0c84fe961fb1bd9f733dc8e786e77214584bad1, 'd0c84fe961fb1bd9f733dc8e786e77214584bad1');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_files_thanks`
--

DROP TABLE IF EXISTS `xbtit_files_thanks`;
CREATE TABLE IF NOT EXISTS `xbtit_files_thanks` (
  `infohash` char(40) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  KEY `infohash` (`infohash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_files_thanks`
--

INSERT INTO `xbtit_files_thanks` (`infohash`, `userid`) VALUES
('4e79eae185b659222bf4d426e3ccdb120304e8b9', 3);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_forums`
--

DROP TABLE IF EXISTS `xbtit_forums`;
CREATE TABLE IF NOT EXISTS `xbtit_forums` (
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  `minclassread` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `minclasswrite` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `postcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topiccount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minclasscreate` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `id_parent` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`),
  KEY `id_parent` (`id_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_forums`
--

INSERT INTO `xbtit_forums` (`sort`, `id`, `name`, `description`, `minclassread`, `minclasswrite`, `postcount`, `topiccount`, `minclasscreate`, `id_parent`) VALUES
(0, 1, 'Support', '', 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_gold`
--

DROP TABLE IF EXISTS `xbtit_gold`;
CREATE TABLE IF NOT EXISTS `xbtit_gold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '4',
  `gold_picture` varchar(255) NOT NULL DEFAULT 'gold.gif',
  `silver_picture` varchar(255) NOT NULL DEFAULT 'silver.gif',
  `active` enum('-1','0','1') NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `gold_description` text NOT NULL,
  `silver_description` text NOT NULL,
  `classic_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_gold`
--

INSERT INTO `xbtit_gold` (`id`, `level`, `gold_picture`, `silver_picture`, `active`, `date`, `gold_description`, `silver_description`, `classic_description`) VALUES
(1, 4, 'free.png', 'silver.gif', '1', '2017-08-10', 'Gold torrent description', 'Silver torrent description', 'Classic torrent description');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_hacks`
--

DROP TABLE IF EXISTS `xbtit_hacks`;
CREATE TABLE IF NOT EXISTS `xbtit_hacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `version` varchar(10) NOT NULL,
  `author` varchar(100) NOT NULL,
  `added` int(11) NOT NULL,
  `folder` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_history`
--

DROP TABLE IF EXISTS `xbtit_history`;
CREATE TABLE IF NOT EXISTS `xbtit_history` (
  `uid` int(10) DEFAULT NULL,
  `infohash` varchar(40) NOT NULL DEFAULT '',
  `date` int(10) DEFAULT NULL,
  `uploaded` bigint(20) NOT NULL DEFAULT '0',
  `downloaded` bigint(20) NOT NULL DEFAULT '0',
  `active` enum('yes','no') NOT NULL DEFAULT 'no',
  `agent` varchar(30) NOT NULL DEFAULT '',
  UNIQUE KEY `uid` (`uid`,`infohash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_history`
--

INSERT INTO `xbtit_history` (`uid`, `infohash`, `date`, `uploaded`, `downloaded`, `active`, `agent`) VALUES
(2, '26d83db323d7cc1541278523703dd035c3447d84', NULL, 0, 0, 'yes', 'BitTorrent/7100(255961997)(439'),
(2, 'fb4afa882b2261fbe760bfa72afa66d0f44d750c', NULL, 0, 0, 'no', 'uTorrent 3.5.0.0'),
(2, '9a42473500403fea9ac06cd02b67dc862b158f75', NULL, 0, 0, 'no', 'uTorrent 3.5.0.0'),
(2, '2407b5e9512e72f8ba592eeed770dd314db3ec80', NULL, 0, 0, 'no', 'BitTorrent/7100(255961997)(439'),
(2, '58a81ab10f3baff13926718fc6032d5a627e4ff6', NULL, 0, 0, 'yes', 'uTorrent 3.5.0.0'),
(4, 'd0c84fe961fb1bd9f733dc8e786e77214584bad1', NULL, 19, 19, 'yes', 'uTorrent 2.2.1.0'),
(2, '6041a253f1f4e77a0d9ea0f9eb622f41261bad83', NULL, 0, 25165824, 'yes', 'uTorrent 3.5.0.0'),
(2, 'd0c84fe961fb1bd9f733dc8e786e77214584bad1', NULL, 0, 0, 'yes', 'uTorrent 3.5.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_language`
--

DROP TABLE IF EXISTS `xbtit_language`;
CREATE TABLE IF NOT EXISTS `xbtit_language` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `language` varchar(20) NOT NULL DEFAULT '',
  `language_url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_language`
--

INSERT INTO `xbtit_language` (`id`, `language`, `language_url`) VALUES
(1, 'English', 'language/english'),
(2, 'Romanian', 'language/romanian'),
(3, 'Polish', 'language/polish'),
(4, 'Srpsko-Hrvatski', 'language/serbocroatian'),
(5, 'Dutch', 'language/dutch'),
(6, 'Italiano', 'language/italian'),
(7, 'Russian', 'language/russian'),
(8, 'German', 'language/german'),
(9, 'Hungarian', 'language/hungarian'),
(10, 'Français', 'language/french'),
(11, 'Finnish', 'language/finnish'),
(12, 'Vietnamese', 'language/vietnamese'),
(13, 'Greek', 'language/greek'),
(14, 'Bulgarian', 'language/bulgarian'),
(15, 'Spanish', 'language/spanish'),
(16, 'Portuguese-BR', 'language/portuguese-BR'),
(17, 'Portuguese-PT', 'language/portuguese-PT'),
(18, 'Swedish', 'language/swedish'),
(19, 'Arabic', 'language/arabic'),
(20, 'Danish', 'language/danish'),
(21, 'Chinese-Simplified', 'language/chinese'),
(22, 'Bengali', 'language/bangla');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_logs`
--

DROP TABLE IF EXISTS `xbtit_logs`;
CREATE TABLE IF NOT EXISTS `xbtit_logs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `added` int(10) DEFAULT NULL,
  `txt` text,
  `type` varchar(10) NOT NULL DEFAULT 'add',
  `user` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_logs`
--

INSERT INTO `xbtit_logs` (`id`, `added`, `txt`, `type`, `user`) VALUES
(1, 1502376616, 'FAILED update external torrent (infohash: af4b56fe24d881b69bb51c9d4e2174da52c695a9) from udp://tracker.openbittorrent.com:80/announce tracker (No connection response.))', '', 'yakovd33'),
(4, 1502379855, 'FAILED update external torrent (infohash: 85fe8e8aaced7ec1a9ea2770c29243589c2c91a3) from udp://tracker.openbittorrent.com:80/announce tracker (No connection response.))', '', 'yakovd33'),
(5, 1502379855, 'Uploaded new torrent Lalala - EXT (85fe8e8aaced7ec1a9ea2770c29243589c2c91a3)', 'add', 'yakovd33'),
(6, 1502461791, 'Uploaded new torrent Social network built in Django (9b0f04078c937f65b689c73775aa7bc8a781e4ac)', 'add', 'yakovd33'),
(7, 1502475639, 'FAILED update external torrent (infohash: 4e79eae185b659222bf4d426e3ccdb120304e8b9) from http://localhost:8080/announce.php tracker (Could not open HTTP connection.))', '', 'yakovd33'),
(8, 1502475639, 'Uploaded new torrent bee - EXT (4e79eae185b659222bf4d426e3ccdb120304e8b9)', 'add', 'yakovd33'),
(9, 1502481100, 'FAILED update external torrent (infohash: c7cb1108b809aea027fe011ad4c416c3abd2ea3e) from http://localhost:8080/announce.php tracker (Could not open HTTP connection.))', '', 'yakovd33'),
(10, 1502481100, 'Uploaded new torrent כותבתוש - EXT (c7cb1108b809aea027fe011ad4c416c3abd2ea3e)', 'add', 'yakovd33'),
(11, 1502481118, 'FAILED update external torrent (infohash: c7cb1108b809aea027fe011ad4c416c3abd2ea3e) from http://localhost:8080/announce.php tracker (Could not open HTTP connection.))', '', 'yakovd33'),
(12, 1502481118, 'Uploaded new torrent כותבתוש - EXT (c7cb1108b809aea027fe011ad4c416c3abd2ea3e)', 'add', 'yakovd33'),
(13, 1502483310, 'FAILED update external torrent (infohash: c6b0e3c9220dde43ac0c904080feb5c58983a388) from http://localhost:8080/announce.php tracker (Could not open HTTP connection.))', '', 'yakovd33'),
(14, 1502483310, 'Uploaded new torrent ניסיון - EXT (c6b0e3c9220dde43ac0c904080feb5c58983a388)', 'add', 'yakovd33'),
(15, 1502483722, 'FAILED update external torrent (infohash: 025a21ea608f11a086734bab40b717b855881681) from http://localhost:8080/announce.php tracker (Could not open HTTP connection.))', '', 'yakovd33'),
(16, 1502483722, 'Uploaded new torrent ממממ - EXT (025a21ea608f11a086734bab40b717b855881681)', 'add', 'yakovd33'),
(17, 1502530517, 'Uploaded new torrent Some Like It Hot (207082a0da62ee757357dd955f9fa1e91c4483ef)', 'add', 'yakovd33'),
(18, 1502540578, 'Uploaded new torrent קבצים eropa.co.il (26d83db323d7cc1541278523703dd035c3447d84)', 'add', 'yakovd33'),
(19, 1502542707, 'Uploaded new torrent jjjjj (26d83db323d7cc1541278523703dd035c3447d84)', 'add', 'yakovd33'),
(20, 1502543542, 'Uploaded new torrent ffsdjklasklfda (fb4afa882b2261fbe760bfa72afa66d0f44d750c)', 'add', 'yakovd33'),
(21, 1502546876, 'Uploaded new torrent SG (513b55748aa6e64d45d0c0c30805d0e37323ed6f)', 'add', 'yakovd33'),
(22, 1502547618, 'Uploaded new torrent asdas (2407b5e9512e72f8ba592eeed770dd314db3ec80)', 'add', 'yakovd33'),
(23, 1502547964, 'Uploaded new torrent bbybby (58a81ab10f3baff13926718fc6032d5a627e4ff6)', 'add', 'yakovd33'),
(24, 1502558367, 'Uploaded new torrent ניסיון (d0c84fe961fb1bd9f733dc8e786e77214584bad1)', 'add', 'yakovd33'),
(25, 1502560246, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=1\">Guest</a> IP:77.138.213.102 - Attempt: q=&lt;script&gt;alert(&quot;xss&quot;)&lt;/script&gt;', 'add', 'Guest'),
(26, 1502560261, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=1\">Guest</a> IP:77.138.213.102 - Attempt:  &lt;script&gt;alert(&quot;xss&quot;)&lt;/script&gt;  6cb9e4e3deaa2af8c90f93393f336bf4', 'add', 'Guest'),
(27, 1502572833, 'Uploaded new torrent You must specify the torrent category... (6041a253f1f4e77a0d9ea0f9eb622f41261bad83)', 'add', 'test'),
(28, 1502601821, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:212.199.57.201 - Attempt: 6041a253f1f4e77a0d9ea0f9eb622f41261bad83  הדרדסים 2017! 0 &lt;p&gt;שלום&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/n_yiqtjf7_e&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 2dcff6c4e11464308065f3edb8ba2af0 1095a31b25769c53f522be904d5d62d7 7cedf528e8514e63850b37f86fb4c59d', 'add', 'yakovd33'),
(29, 1502601852, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:212.199.57.201 - Attempt: 6041a253f1f4e77a0d9ea0f9eb622f41261bad83  הדרדסים 2017! 0 &lt;p&gt;שלום&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;iframe frameborder=&quot;0&quot; scrolling=&quot;no&quot; src=&quot;https://www.youtube.com/embed/n_yiqtjf7_e&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 2dcff6c4e11464308065f3edb8ba2af0 1095a31b25769c53f522be904d5d62d7 7cedf528e8514e63850b37f86fb4c59d', 'add', 'yakovd33'),
(30, 1502602123, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:212.199.57.201 - Attempt: 6041a253f1f4e77a0d9ea0f9eb622f41261bad83  הדרדסים 2017! 0 &lt;p&gt;שלום&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;object classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0&quot;&gt;&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;&lt;param name=&quot;quality&quot; value=&quot;high&quot; /&gt;&lt;param name=&quot;movie&quot; value=&quot;https://www.youtube.com/embed/n_yiqtjf7_e&quot; /&gt;&lt;embed allowfullscreen=&quot;true&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; quality=&quot;high&quot; src=&quot;https://www.youtube.com/embed/n_yiqtjf7_e&quot; type=&quot;application/x-shockwave-flash&quot;&gt;&lt;/embed&gt;&lt;/object&gt;&lt;/p&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 2dcff6c4e11464308065f3edb8ba2af0 1095a31b25769c53f522be904d5d62d7 7cedf528e8514e63850b37f86fb4c59d', 'add', 'yakovd33'),
(31, 1502743150, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:89.237.68.101 - Attempt: 58a81ab10f3baff13926718fc6032d5a627e4ff6 תמונה 7 &lt;p&gt;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/sc4xmk98pdc&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 35f13d4bd54c841a645ca0adfcb692e7 a5c35f762781ff012f76d0ac123be2d2', 'add', 'yakovd33'),
(32, 1502743281, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:89.237.68.101 - Attempt: 58a81ab10f3baff13926718fc6032d5a627e4ff6 להלהלה 7 &lt;p&gt;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/sc4xmk98pdc&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 35f13d4bd54c841a645ca0adfcb692e7 a5c35f762781ff012f76d0ac123be2d2', 'add', 'yakovd33'),
(33, 1502743375, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:89.237.68.101 - Attempt: 58a81ab10f3baff13926718fc6032d5a627e4ff6 להלהלה 7 &lt;p&gt;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/zwkhufmmxko&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 35f13d4bd54c841a645ca0adfcb692e7 a5c35f762781ff012f76d0ac123be2d2', 'add', 'yakovd33'),
(34, 1502743458, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:89.237.68.101 - Attempt: 58a81ab10f3baff13926718fc6032d5a627e4ff6 להלהלה 7 &lt;p&gt;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;560&quot; scrolling=&quot;no&quot; src=&quot;https://www.youtube.com/watch?v=sc4xmk98pdc&quot; width=&quot;100%&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 35f13d4bd54c841a645ca0adfcb692e7 a5c35f762781ff012f76d0ac123be2d2', 'add', 'yakovd33'),
(35, 1502743484, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:89.237.68.101 - Attempt: 58a81ab10f3baff13926718fc6032d5a627e4ff6 להלהלה 7 &lt;p&gt;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;560&quot; scrolling=&quot;no&quot; src=&quot;example.com&quot; width=&quot;100%&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 35f13d4bd54c841a645ca0adfcb692e7 a5c35f762781ff012f76d0ac123be2d2', 'add', 'yakovd33'),
(36, 1502743663, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:89.237.68.101 - Attempt: 58a81ab10f3baff13926718fc6032d5a627e4ff6 להלהלה 7 &lt;p&gt;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/sc4xmk98pdc&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 35f13d4bd54c841a645ca0adfcb692e7 a5c35f762781ff012f76d0ac123be2d2', 'add', 'yakovd33'),
(37, 1502743675, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:89.237.68.101 - Attempt: 58a81ab10f3baff13926718fc6032d5a627e4ff6 להלהלה 7 &lt;p&gt;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/sc4xmk98pdc&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\r\n 2 abc31e5f9327f8452db86a8b82d5eaf6 35f13d4bd54c841a645ca0adfcb692e7 a5c35f762781ff012f76d0ac123be2d2', 'add', 'yakovd33'),
(38, 1502743837, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=2\">yakovd33</a> IP:89.237.68.101 - Attempt: 58a81ab10f3baff13926718fc6032d5a627e4ff6 להלהלה 7 &lt;p&gt;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;שלום&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/sc4xmk98pdc&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt; 2 abc31e5f9327f8452db86a8b82d5eaf6 35f13d4bd54c841a645ca0adfcb692e7 a5c35f762781ff012f76d0ac123be2d2', 'add', 'yakovd33'),
(39, 1502906700, 'Hacking Attempt! User: <a href=\"http://runer.me/index.php?page=userdetails&amp;id=1\">Guest</a> IP:5.28.168.117 - Attempt: 48ccd5aff97e09ffc80e3588a6d19efe yakovd33    לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט \r\n\r\nקולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.\r\n\r\n &lt;script&gt;alert(\'hello\')&lt;/script&gt; yakovd33@gmail.com 2 abc31e5f9327f8452db86a8b82d5eaf6 a5c35f762781ff012f76d0ac123be2d2 48bed7f3993de2fc6f534942c2083915 e4fcc4fccc6d6cbe80160a615dcedd82', 'add', 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_messages`
--

DROP TABLE IF EXISTS `xbtit_messages`;
CREATE TABLE IF NOT EXISTS `xbtit_messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `receiver` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `added` int(10) DEFAULT NULL,
  `subject` varchar(50) NOT NULL DEFAULT '',
  `msg` text,
  `readed` enum('yes','no') NOT NULL DEFAULT 'no',
  `deletedBySender` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `receiver` (`receiver`),
  KEY `sender` (`sender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_modules`
--

DROP TABLE IF EXISTS `xbtit_modules`;
CREATE TABLE IF NOT EXISTS `xbtit_modules` (
  `id` mediumint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `activated` enum('yes','no') NOT NULL DEFAULT 'yes',
  `type` enum('staff','misc','torrent','style') NOT NULL DEFAULT 'misc',
  `changed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_modules`
--

INSERT INTO `xbtit_modules` (`id`, `name`, `activated`, `type`, `changed`, `created`) VALUES
(1, 'seedbonus', 'yes', 'misc', '2017-08-10 08:38:15', '2017-08-10 08:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_news`
--

DROP TABLE IF EXISTS `xbtit_news`;
CREATE TABLE IF NOT EXISTS `xbtit_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news` blob NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xbtit_news`
--

INSERT INTO `xbtit_news` (`id`, `news`, `user_id`, `date`, `title`) VALUES
(1, 0x496620796f752063616e20726561642074686973207468656e20796f75722073657420757020776173206120737563636573732e0d0a596f752077696c6c2077616e7420746f2064656c657465207468697320706f73742e200d0a546563686e6963616c20737570706f72742063616e20626520666f756e64206f6e2074686520786274697420666f72756d73205b75726c5d687474703a2f2f7777772e6274697465616d2e6f72672f736d662f5b2f75726c5d, 2, '2017-08-10 08:38:15', 'Welcome ;)');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_online`
--

DROP TABLE IF EXISTS `xbtit_online`;
CREATE TABLE IF NOT EXISTS `xbtit_online` (
  `session_id` varchar(40) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_ip` varchar(15) NOT NULL,
  `location` varchar(20) NOT NULL,
  `lastaction` int(10) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `user_group` varchar(50) NOT NULL,
  `prefixcolor` varchar(200) NOT NULL,
  `suffixcolor` varchar(200) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_online`
--

INSERT INTO `xbtit_online` (`session_id`, `user_id`, `user_ip`, `location`, `lastaction`, `user_name`, `user_group`, `prefixcolor`, `suffixcolor`) VALUES
('9701233282f74edfc62df04d9d0f3399', 1, '5.28.168.117', 'index', 1502906993, 'Guest', 'guest', '', ''),
('7503d9777c3645f4725787565fee1076', 1, '5.28.168.117', 'index', 1502907459, 'Guest', 'guest', '', ''),
('241d40891bf706a975ec8bd49fe5a726', 1, '5.28.168.117', 'index', 1502907471, 'Guest', 'guest', '', ''),
('3af25ccc80d1f5816b32a6e592483311', 1, '5.28.168.117', 'index', 1502907485, 'Guest', 'guest', '', ''),
('ae7cd25299030215d8f103b698defff5', 1, '5.28.168.117', 'index', 1502907491, 'Guest', 'guest', '', ''),
('ec23b5e4af2bf351f6fede1f5eea4519', 2, '5.28.168.117', 'admin', 1502907704, 'yakovd33', 'Owner', '<span style=\'color:#EE4000\'>', '</span>');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_peers`
--

DROP TABLE IF EXISTS `xbtit_peers`;
CREATE TABLE IF NOT EXISTS `xbtit_peers` (
  `infohash` varchar(40) NOT NULL DEFAULT '',
  `peer_id` varchar(40) NOT NULL DEFAULT '',
  `bytes` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT 'error.x',
  `port` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` enum('leecher','seeder') NOT NULL DEFAULT 'leecher',
  `lastupdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sequence` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `natuser` enum('N','Y') NOT NULL DEFAULT 'N',
  `client` varchar(60) NOT NULL DEFAULT '',
  `dns` varchar(100) NOT NULL DEFAULT '',
  `uploaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `downloaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `pid` varchar(32) DEFAULT NULL,
  `with_peerid` varchar(101) NOT NULL DEFAULT '',
  `without_peerid` varchar(40) NOT NULL DEFAULT '',
  `compact` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`infohash`,`peer_id`),
  UNIQUE KEY `sequence` (`sequence`),
  KEY `pid` (`pid`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_peers`
--

INSERT INTO `xbtit_peers` (`infohash`, `peer_id`, `bytes`, `ip`, `port`, `status`, `lastupdate`, `sequence`, `natuser`, `client`, `dns`, `uploaded`, `downloaded`, `pid`, `with_peerid`, `without_peerid`, `compact`) VALUES
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', '2d5554333530302d8cab318b1ee486fb91a3e04d', 16384, '212.199.57.201', 28167, 'leecher', 1502601283, 26, 'N', 'uTorrent/350(111258508)(43916)', 'IL', 0, 0, '', '2:ip14:212.199.57.2017:peer id20:-UT3500-Œ«1‹ä†û‘£àM4:porti28167e', '2:ip14:212.199.57.2014:porti28167e', 'ÔÇ9Én'),
('26d83db323d7cc1541278523703dd035c3447d84', '2d425437313030308daba5243335b5861bdd9241', 9216272, '89.237.67.84', 34058, 'leecher', 1502543296, 3, 'N', 'BitTorrent/7100(255961997)(43917)', 'IL', 0, 0, '', '2:ip12:89.237.67.847:peer id20:-BT71000«¥$35µ†Ý’A4:porti34058e', '2:ip12:89.237.67.844:porti34058e', 'YíCT…\n'),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', '2d5554333530302d8cabce56adbeaeecf16ef56b', 0, '95.42.205.38', 58283, 'seeder', 1502910925, 19, 'N', 'uTorrent/350(111258508)(43916)', 'BG', 19, 19, '', '2:ip12:95.42.205.387:peer id20:-UT3500-Œ«ÎV­¾®ìñnõk4:porti58283e', '2:ip12:95.42.205.384:porti58283e', '_*Í&ã«'),
('2407b5e9512e72f8ba592eeed770dd314db3ec80', '2d5554333530302d8cab40635eb88672cacf9f85', 0, '89.237.67.84', 28167, 'seeder', 1502547670, 13, 'N', 'uTorrent/350(111258508)(43916)', 'IL', 0, 0, '', '2:ip12:89.237.67.847:peer id20:-UT3500-Œ«@c^¸†rÊÏŸ…4:porti28167e', '2:ip12:89.237.67.844:porti28167e', 'YíCTn'),
('58a81ab10f3baff13926718fc6032d5a627e4ff6', '2d5554333530302d8cab750f1747f14d7bd409a5', 16384, '89.237.67.84', 28167, 'leecher', 1502556820, 17, 'N', 'uTorrent/350(111258508)(43916)', 'IL', 0, 0, '', '2:ip12:89.237.67.847:peer id20:-UT3500-Œ«uGñM{Ô	¥4:porti28167e', '2:ip12:89.237.67.844:porti28167e', 'YíCTn'),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', '2d5554323231302d16620f77a2962ead85a7e1de', 0, '77.138.213.102', 30548, 'seeder', 1502612712, 21, 'N', 'uTorrent/2210(25110)', 'AA', 0, 0, '', '2:ip14:77.138.213.1027:peer id20:-UT2210-bw¢–.­…§áÞ4:porti30548e', '2:ip14:77.138.213.1024:porti30548e', 'MŠÕfwT'),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', '2d5554333530302d8cabce56adbeaeecf16ef56b', 0, '95.42.205.38', 58283, 'seeder', 1502621884, 23, 'N', 'uTorrent/350(111258508)(43916)', 'BG', 27983872, 0, '', '2:ip12:95.42.205.387:peer id20:-UT3500-Œ«ÎV­¾®ìñnõk4:porti58283e', '2:ip12:95.42.205.384:porti58283e', '_*Í&ã«'),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', '2d5554323231302d1662f0cfcc79192ce7cbc543', 0, '77.138.213.102', 30548, 'seeder', 1502631606, 27, 'N', 'uTorrent/2210(25110)', 'AA', 0, 0, '', '2:ip14:77.138.213.1027:peer id20:-UT2210-bðÏÌy,çËÅC4:porti30548e', '2:ip14:77.138.213.1024:porti30548e', 'MŠÕfwT'),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', '2d5554333530302d8cab61a47da58366b96e48f7', 16384, '5.28.168.117', 28167, 'leecher', 1502785308, 29, 'N', 'uTorrent/350(111258508)(43916)', 'AA', 0, 0, '', '2:ip12:5.28.168.1177:peer id20:-UT3500-Œ«a¤}¥ƒf¹nH÷4:porti28167e', '2:ip12:5.28.168.1174:porti28167e', '¨un');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_poller`
--

DROP TABLE IF EXISTS `xbtit_poller`;
CREATE TABLE IF NOT EXISTS `xbtit_poller` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` int(10) NOT NULL DEFAULT '0',
  `endDate` int(10) NOT NULL DEFAULT '0',
  `pollerTitle` varchar(255) DEFAULT NULL,
  `starterID` mediumint(8) NOT NULL DEFAULT '0',
  `active` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_poller`
--

INSERT INTO `xbtit_poller` (`ID`, `startDate`, `endDate`, `pollerTitle`, `starterID`, `active`) VALUES
(1, 1502354295, 0, 'How would you rate this script?', 2, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_poller_option`
--

DROP TABLE IF EXISTS `xbtit_poller_option`;
CREATE TABLE IF NOT EXISTS `xbtit_poller_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pollerID` int(11) DEFAULT NULL,
  `optionText` varchar(255) DEFAULT NULL,
  `pollerOrder` int(11) DEFAULT NULL,
  `defaultChecked` char(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_poller_option`
--

INSERT INTO `xbtit_poller_option` (`ID`, `pollerID`, `optionText`, `pollerOrder`, `defaultChecked`) VALUES
(1, 1, 'Excellent', 1, '1'),
(2, 1, 'Very good', 2, '0'),
(3, 1, 'Good', 3, '0'),
(4, 1, 'Fair', 3, '0'),
(5, 1, 'Poor', 4, '0');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_poller_vote`
--

DROP TABLE IF EXISTS `xbtit_poller_vote`;
CREATE TABLE IF NOT EXISTS `xbtit_poller_vote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pollerID` int(11) NOT NULL DEFAULT '0',
  `optionID` int(11) DEFAULT NULL,
  `ipAddress` bigint(11) DEFAULT '0',
  `voteDate` int(10) NOT NULL DEFAULT '0',
  `memberID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_polls`
--

DROP TABLE IF EXISTS `xbtit_polls`;
CREATE TABLE IF NOT EXISTS `xbtit_polls` (
  `pid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `startdate` int(10) DEFAULT NULL,
  `choices` text,
  `starter_id` mediumint(8) NOT NULL DEFAULT '0',
  `votes` smallint(5) NOT NULL DEFAULT '0',
  `poll_question` varchar(255) DEFAULT NULL,
  `status` enum('true','false') NOT NULL DEFAULT 'false',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_poll_voters`
--

DROP TABLE IF EXISTS `xbtit_poll_voters`;
CREATE TABLE IF NOT EXISTS `xbtit_poll_voters` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `votedate` int(10) NOT NULL DEFAULT '0',
  `pid` mediumint(8) NOT NULL DEFAULT '0',
  `memberid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_posts`
--

DROP TABLE IF EXISTS `xbtit_posts`;
CREATE TABLE IF NOT EXISTS `xbtit_posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `topicid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `added` int(10) DEFAULT NULL,
  `body` text,
  `editedby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `editedat` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `topicid` (`topicid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_posts`
--

INSERT INTO `xbtit_posts` (`id`, `topicid`, `userid`, `added`, `body`, `editedby`, `editedat`) VALUES
(1, 1, 2, 1502377311, 'hehehehehe ;)', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_ratings`
--

DROP TABLE IF EXISTS `xbtit_ratings`;
CREATE TABLE IF NOT EXISTS `xbtit_ratings` (
  `infohash` char(40) NOT NULL DEFAULT '',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rating` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` int(10) UNSIGNED NOT NULL DEFAULT '0',
  KEY `infohash` (`infohash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_readposts`
--

DROP TABLE IF EXISTS `xbtit_readposts`;
CREATE TABLE IF NOT EXISTS `xbtit_readposts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topicid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpostread` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `topicid` (`topicid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_readposts`
--

INSERT INTO `xbtit_readposts` (`id`, `userid`, `topicid`, `lastpostread`) VALUES
(1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_settings`
--

DROP TABLE IF EXISTS `xbtit_settings`;
CREATE TABLE IF NOT EXISTS `xbtit_settings` (
  `key` varchar(30) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_settings`
--

INSERT INTO `xbtit_settings` (`key`, `value`) VALUES
('name', 'xbtit'),
('url', 'http://runer.me'),
('announce', 'a:1:{i:0;s:28:\"http://runer.me/announce.php\";}'),
('email', 'yakovd33@gmail.com'),
('torrentdir', 'torrents'),
('external', 'false'),
('gzip', 'true'),
('debug', 'true'),
('disable_dht', 'true'),
('livestat', 'true'),
('logactive', 'true'),
('loghistory', 'true'),
('p_announce', 'false'),
('p_scrape', 'false'),
('show_uploader', 'false'),
('usepopup', 'false'),
('default_language', '1'),
('default_charset', 'UTF-8'),
('default_style', '1'),
('max_users', '0'),
('max_torrents_per_page', '15'),
('sanity_update', '1800'),
('external_update', '1800'),
('max_announce', '1800'),
('min_announce', '300'),
('max_peers_per_announce', '50'),
('dynamic', 'false'),
('nat', 'false'),
('persist', 'false'),
('allow_override_ip', 'false'),
('countbyte', 'true'),
('peercaching', 'false'),
('maxpid_seeds', '3'),
('maxpid_leech', '1'),
('validation', 'user'),
('imagecode', 'true'),
('forum', ''),
('clocktype', 'false'),
('newslimit', '3'),
('forumlimit', '5'),
('last10limit', '5'),
('mostpoplimit', '5'),
('xbtt_url', 'http://runer.me'),
('cache_duration', '0'),
('cut_name', '0'),
('mail_type', 'php'),
('secsui_quarantine_dir', ''),
('secsui_quarantine_search_terms', '<?php,base64_decode,base64_encode,eval(,phpinfo,fopen,fread,fwrite,file_get_contents'),
('secsui_cookie_name', ''),
('secsui_quarantine_pm', '2'),
('secsui_pass_type', '1'),
('secsui_ss', ''),
('secsui_cookie_type', '1'),
('secsui_cookie_exp1', '1'),
('secsui_cookie_exp2', '3'),
('secsui_cookie_path', ''),
('secsui_cookie_domain', ''),
('secsui_cookie_items', '1-0,2-0,3-0,4-0,5-0,6-0,7-0,8-0[+]0'),
('secsui_pass_min_req', '4,0,0,0,0'),
('ipb_autoposter', '0'),
('php_log_name', 'xbtit-errors'),
('php_log_path', '/full/path/to/the/web/root/include/logs'),
('php_log_lines', '5'),
('imageon', 'true'),
('uploaddir', 'cybyd_img/'),
('file_limit', '2000'),
('screenon', 'true'),
('xbtt_use', 'false'),
('ajax_poller', 'true'),
('forumblocktype', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_style`
--

DROP TABLE IF EXISTS `xbtit_style`;
CREATE TABLE IF NOT EXISTS `xbtit_style` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `style` varchar(20) NOT NULL DEFAULT '',
  `style_url` varchar(100) NOT NULL DEFAULT '',
  `style_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_style`
--

INSERT INTO `xbtit_style` (`id`, `style`, `style_url`, `style_type`) VALUES
(1, 'xBtit Default', 'style/xbtit_default', 3),
(2, 'Mint', 'style/mintgreen', 3),
(3, 'Dark Lair', 'style/darklair', 3),
(4, 'Yellow Jacket', 'style/thehive', 3),
(5, 'Frosted', 'style/frosted', 3),
(6, 'Holiday Spirit', 'style/holiday-spirit', 3);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_tasks`
--

DROP TABLE IF EXISTS `xbtit_tasks`;
CREATE TABLE IF NOT EXISTS `xbtit_tasks` (
  `task` varchar(20) NOT NULL DEFAULT '',
  `last_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_tasks`
--

INSERT INTO `xbtit_tasks` (`task`, `last_time`) VALUES
('sanity', 1502906721),
('update', 1502906733);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_timestamps`
--

DROP TABLE IF EXISTS `xbtit_timestamps`;
CREATE TABLE IF NOT EXISTS `xbtit_timestamps` (
  `info_hash` char(40) NOT NULL DEFAULT '',
  `sequence` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bytes` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `delta` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`sequence`),
  KEY `sorting` (`info_hash`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_timestamps`
--

INSERT INTO `xbtit_timestamps` (`info_hash`, `sequence`, `bytes`, `delta`) VALUES
('b326d988d8c65e419ebb9178258e56553f0b0c0b', 1, 0, 65535),
('b326d988d8c65e419ebb9178258e56553f0b0c0b', 2, 0, 1059),
('26d83db323d7cc1541278523703dd035c3447d84', 3, 0, 65535),
('fb4afa882b2261fbe760bfa72afa66d0f44d750c', 4, 0, 65535),
('fb4afa882b2261fbe760bfa72afa66d0f44d750c', 5, 0, 125),
('fb4afa882b2261fbe760bfa72afa66d0f44d750c', 6, 0, 423),
('2407b5e9512e72f8ba592eeed770dd314db3ec80', 7, 0, 65535),
('58a81ab10f3baff13926718fc6032d5a627e4ff6', 8, 0, 65535),
('58a81ab10f3baff13926718fc6032d5a627e4ff6', 9, 0, 340),
('2407b5e9512e72f8ba592eeed770dd314db3ec80', 10, 0, 672),
('58a81ab10f3baff13926718fc6032d5a627e4ff6', 11, 0, 4894),
('58a81ab10f3baff13926718fc6032d5a627e4ff6', 12, 0, 1801),
('58a81ab10f3baff13926718fc6032d5a627e4ff6', 13, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 88, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 89, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 90, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 91, 0, 1802),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 92, 0, 3816),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 93, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 94, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 95, 0, 683),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 96, 0, 3399),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 97, 0, 56064),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 98, 0, 7729),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 99, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 100, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 101, 0, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 52, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 53, 27885568, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 102, 0, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 103, 0, 4819),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 54, 27885568, 1808),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 104, 0, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 55, 27885568, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 105, 0, 4743),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 106, 0, 1393),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 60, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 61, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 62, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 63, 27885568, 1801),
('d0c84fe961fb1bd9f733dc8e786e77214584bad1', 87, 0, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 43, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 44, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 45, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 46, 27885568, 995),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 47, 27885568, 806),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 48, 27885568, 1018),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 49, 27885568, 783),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 50, 27885568, 1018),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 51, 27885568, 783),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 57, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 59, 27885568, 1801),
('6041a253f1f4e77a0d9ea0f9eb622f41261bad83', 65, 27885568, 1801);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_timezone`
--

DROP TABLE IF EXISTS `xbtit_timezone`;
CREATE TABLE IF NOT EXISTS `xbtit_timezone` (
  `difference` varchar(4) NOT NULL DEFAULT '0',
  `timezone` text NOT NULL,
  PRIMARY KEY (`difference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_timezone`
--

INSERT INTO `xbtit_timezone` (`difference`, `timezone`) VALUES
('-12', '(GMT - 12:00 hours) Enitwetok, Kwajalien'),
('-11', '(GMT - 11:00 hours) Midway Island, Samoa'),
('-10', '(GMT - 10:00 hours) Hawaii'),
('-9', '(GMT - 9:00 hours) Alaska'),
('-8', '(GMT - 8:00 hours) Pacific Time (US &amp; Canada)'),
('-7', '(GMT - 7:00 hours) Mountain Time (US &amp; Canada)'),
('-6', '(GMT - 6:00 hours) Central Time (US &amp; Canada), Mexico City'),
('-5', '(GMT - 5:00 hours) Eastern Time (US &amp; Canada), Bogota, Lima'),
('-4', '(GMT - 4:00 hours) Atlantic Time (Canada), Caracas, La Paz'),
('-3.5', '(GMT - 3:30 hours) Newfoundland'),
('-3', '(GMT - 3:00 hours) Brazil, Buenos Aires, Falkland Is.'),
('-2', '(GMT - 2:00 hours) Mid-Atlantic, Ascention Is., St Helena'),
('-1', '(GMT - 1:00 hours) Azores, Cape Verde Islands'),
('0', '(GMT) Casablanca, Dublin, London, Lisbon, Monrovia'),
('1', '(GMT + 1:00 hours) Amsterdam, Brussels, Copenhagen, Madrid, Paris'),
('2', '(GMT + 2:00 hours) Kaliningrad, South Africa'),
('3', '(GMT + 3:00 hours) Baghdad, Riyadh, Moscow, Nairobi'),
('3.5', '(GMT + 3:30 hours) Tehran'),
('4', '(GMT + 4:00 hours) Abu Dhabi, Baku, Muscat, Tbilisi'),
('4.5', '(GMT + 4:30 hours) Kabul'),
('5', '(GMT + 5:00 hours) Ekaterinburg, Karachi, Tashkent'),
('5.5', '(GMT + 5:30 hours) Bombay, Calcutta, Madras, New Delhi'),
('6', '(GMT + 6:00 hours) Almaty, Colomba, Dhaka'),
('7', '(GMT + 7:00 hours) Bangkok, Hanoi, Jakarta'),
('8', '(GMT + 8:00 hours) Hong Kong, Perth, Singapore, Taipei'),
('9', '(GMT + 9:00 hours) Osaka, Sapporo, Seoul, Tokyo, Yakutsk'),
('9.5', '(GMT + 9:30 hours) Adelaide, Darwin'),
('10', '(GMT + 10:00 hours) Melbourne, Papua New Guinea, Sydney'),
('11', '(GMT + 11:00 hours) Magadan, New Caledonia, Solomon Is.'),
('12', '(GMT + 12:00 hours) Auckland, Fiji, Marshall Island');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_topics`
--

DROP TABLE IF EXISTS `xbtit_topics`;
CREATE TABLE IF NOT EXISTS `xbtit_topics` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(40) DEFAULT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `forumid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sticky` enum('yes','no') NOT NULL DEFAULT 'no',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `subject` (`subject`),
  KEY `lastpost` (`lastpost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_topics`
--

INSERT INTO `xbtit_topics` (`id`, `userid`, `subject`, `locked`, `forumid`, `lastpost`, `sticky`, `views`) VALUES
(1, 2, 'Hello World', 'no', 1, 1, 'no', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_users`
--

DROP TABLE IF EXISTS `xbtit_users`;
CREATE TABLE IF NOT EXISTS `xbtit_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `profile_pic` longtext,
  `username` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(20) NOT NULL DEFAULT '',
  `pass_type` enum('1','2','3','4','5','6','7') NOT NULL DEFAULT '1',
  `dupe_hash` varchar(20) NOT NULL DEFAULT '',
  `id_level` int(10) NOT NULL DEFAULT '1',
  `custom_title` varchar(51) NOT NULL DEFAULT 'User' COMMENT 'Prefers to be called',
  `seedbonus` decimal(12,6) NOT NULL DEFAULT '0.000000',
  `random` int(10) DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `language` tinyint(4) NOT NULL DEFAULT '1',
  `style` tinyint(4) NOT NULL DEFAULT '1',
  `joined` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastconnect` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lip` bigint(11) DEFAULT '0',
  `downloaded` bigint(20) DEFAULT '0',
  `uploaded` bigint(20) DEFAULT '0',
  `avatar` varchar(200) DEFAULT NULL,
  `pid` varchar(32) NOT NULL DEFAULT '',
  `flag` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topicsperpage` tinyint(3) UNSIGNED NOT NULL DEFAULT '15',
  `postsperpage` tinyint(3) UNSIGNED NOT NULL DEFAULT '15',
  `torrentsperpage` tinyint(3) UNSIGNED NOT NULL DEFAULT '15',
  `cip` varchar(15) DEFAULT NULL,
  `time_offset` varchar(4) NOT NULL DEFAULT '0',
  `temp_email` varchar(50) NOT NULL DEFAULT '',
  `smf_fid` int(10) NOT NULL DEFAULT '0',
  `ipb_fid` int(10) NOT NULL DEFAULT '0',
  `is_anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `parking_mode` tinyint(1) NOT NULL DEFAULT '0',
  `bio` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `id_level` (`id_level`),
  KEY `pid` (`pid`),
  KEY `cip` (`cip`),
  KEY `smf_fid` (`smf_fid`),
  KEY `ipb_fid` (`ipb_fid`),
  KEY `custom_title` (`custom_title`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_users`
--

INSERT INTO `xbtit_users` (`id`, `profile_pic`, `username`, `password`, `salt`, `pass_type`, `dupe_hash`, `id_level`, `custom_title`, `seedbonus`, `random`, `email`, `language`, `style`, `joined`, `lastconnect`, `lip`, `downloaded`, `uploaded`, `avatar`, `pid`, `flag`, `topicsperpage`, `postsperpage`, `torrentsperpage`, `cip`, `time_offset`, `temp_email`, `smf_fid`, `ipb_fid`, `is_anonymous`, `parking_mode`, `bio`) VALUES
(1, '', 'Guest', '', '', '1', '', 1, 'User', '0.000000', 0, 'none', 1, 1, '2017-08-10 08:38:15', '2017-08-12 12:15:06', 0, 0, 0, NULL, '00000000000000000000000000000000', 0, 10, 10, 15, '127.0.0.2', '0', '', 0, 0, 0, 0, NULL),
(2, 'images/profile_pics/6e4a493132e3313baeadd3fb38336394.jpg', 'yakovd33', '4297f44b13955235245b2497399d7a93', '', '1', '', 8, 'User', '0.000000', 630886, 'yakovd33@gmail.com', 1, 1, '2017-08-10 11:38:43', '2021-12-23 19:38:29', 1508721492, 25165824, 32787, NULL, 'f312f5438786b7007070d9fa4726f7a0', 0, 15, 15, 15, '0.0.0.0', '0', '', 0, 0, 0, 0, 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית קולהע צופעט למרקוח איבן איף, ברומץ כלרשט מיחוצים. קלאצי סחטיר בלובק. תצטנפל בלינדו למרקל אס לכימפו, דול, צוט ומעיוט - לפתיעם ברשג - ולתיעם גדדיש. קוויז דומור ליאמום בלינך רוגצה. לפמעט \r\n\r\nקולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף קולורס מונפרד אדנדום סילקוף, מרגשי ומרגשח. עמחליף נולום ארווס סאפיאן - פוסיליס קוויס, אקווזמן קוואזי במר מודוף. אודיפו בלאסטיק מונופץ קליר, בנפת נפקט למסון בלרק - וענוף קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם. וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי. '),
(3, '', 'yakovd30', 'b94e7282a5b7cce46d568f9a7fbb8622', '', '1', '', 3, 'User', '0.000000', 630886, 'yakovd33@gmail.com', 1, 1, '2017-08-10 11:38:43', '2017-08-12 12:15:06', 0, 25165824, 32787, NULL, 'f312f5438786b7007070d9fa4726f7a0', 0, 15, 15, 15, '89.237.67.84', '0', '', 0, 0, 0, 0, NULL),
(4, 'images/profile_pics/877b45150b3296568f0ec69d516430b7.png', 'test', '81dc9bdb52d04dc20036dbd8313ed055', '', '1', '', 7, 'User', '0.000000', 630886, 'yakovd33@gmail.com', 1, 1, '2017-08-10 11:38:43', '2018-07-13 20:57:39', 0, 19, 32787, NULL, 'f312f5438786b7007070d9fa4726f7a0', 0, 15, 15, 15, '0.0.0.0', '0', '', 0, 0, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `xbtit_users_level`
--

DROP TABLE IF EXISTS `xbtit_users_level`;
CREATE TABLE IF NOT EXISTS `xbtit_users_level` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_level` int(11) NOT NULL DEFAULT '0',
  `level` varchar(50) NOT NULL DEFAULT '',
  `view_torrents` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_torrents` enum('yes','no') NOT NULL DEFAULT 'no',
  `delete_torrents` enum('yes','no') NOT NULL DEFAULT 'no',
  `view_users` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_users` enum('yes','no') NOT NULL DEFAULT 'no',
  `delete_users` enum('yes','no') NOT NULL DEFAULT 'no',
  `view_news` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_news` enum('yes','no') NOT NULL DEFAULT 'no',
  `delete_news` enum('yes','no') NOT NULL DEFAULT 'no',
  `can_upload` enum('yes','no') NOT NULL DEFAULT 'no',
  `can_download` enum('yes','no') NOT NULL DEFAULT 'yes',
  `view_forum` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_forum` enum('yes','no') NOT NULL DEFAULT 'yes',
  `delete_forum` enum('yes','no') NOT NULL DEFAULT 'no',
  `predef_level` enum('guest','validating','member','uploader','vip','moderator','admin','owner') NOT NULL DEFAULT 'guest',
  `can_be_deleted` enum('yes','no') NOT NULL DEFAULT 'yes',
  `admin_access` enum('yes','no') NOT NULL DEFAULT 'no',
  `prefixcolor` varchar(200) NOT NULL DEFAULT '',
  `suffixcolor` varchar(200) NOT NULL DEFAULT '',
  `WT` int(11) NOT NULL DEFAULT '0',
  `smf_group_mirror` int(11) NOT NULL DEFAULT '0',
  `ipb_group_mirror` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `base` (`id`),
  KEY `id_level` (`id_level`),
  KEY `smf_group_mirror` (`smf_group_mirror`),
  KEY `ipb_group_mirror` (`ipb_group_mirror`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xbtit_users_level`
--

INSERT INTO `xbtit_users_level` (`id`, `id_level`, `level`, `view_torrents`, `edit_torrents`, `delete_torrents`, `view_users`, `edit_users`, `delete_users`, `view_news`, `edit_news`, `delete_news`, `can_upload`, `can_download`, `view_forum`, `edit_forum`, `delete_forum`, `predef_level`, `can_be_deleted`, `admin_access`, `prefixcolor`, `suffixcolor`, `WT`, `smf_group_mirror`, `ipb_group_mirror`) VALUES
(1, 1, 'guest', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'guest', 'no', 'no', '', '', 0, 0, 0),
(2, 2, 'validating', 'yes', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'validating', 'no', 'no', '', '', 0, 0, 0),
(3, 3, 'Members', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'member', 'no', 'no', '<span style=\'color:#000000\'>', '</span>', 0, 0, 0),
(4, 4, 'Uploader', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'uploader', 'no', 'no', '', '', 0, 0, 0),
(5, 5, 'V.I.P.', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'vip', 'no', 'no', '', '', 0, 0, 0),
(6, 6, 'Moderator', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'moderator', 'no', 'no', '<span style=\'color: #428D67\'>', '</span>', 0, 0, 0),
(7, 7, 'Administrator', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'admin', 'no', 'yes', '<span style=\'color:#FF8000\'>', '</span>', 0, 0, 0),
(8, 8, 'Owner', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'owner', 'no', 'yes', '<span style=\'color:#EE4000\'>', '</span>', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xbtit_posts`
--
ALTER TABLE `xbtit_posts` ADD FULLTEXT KEY `body` (`body`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
