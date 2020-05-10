-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2020 at 09:18 PM
-- Server version: 8.0.17
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
-- Database: `opendocman`
--

-- --------------------------------------------------------

--
-- Table structure for table `odm_access_log`
--

DROP TABLE IF EXISTS `odm_access_log`;
CREATE TABLE IF NOT EXISTS `odm_access_log` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` enum('A','B','C','V','D','M','X','I','O','Y','R') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_access_log`
--

INSERT INTO `odm_access_log` (`file_id`, `user_id`, `action`) VALUES
(1, 1, 'A'),
(1, 1, 'Y'),
(1, 1, 'X'),
(2, 1, 'A'),
(2, 1, 'Y'),
(2, 1, 'V'),
(2, 1, 'V'),
(2, 1, 'M'),
(2, 2, 'V'),
(3, 1, 'A'),
(4, 1, 'A'),
(3, 1, 'V'),
(3, 1, 'Y'),
(5, 1, 'A'),
(5, 1, 'Y'),
(6, 3, 'A'),
(3, 1, 'V');

-- --------------------------------------------------------

--
-- Table structure for table `odm_admin`
--

DROP TABLE IF EXISTS `odm_admin`;
CREATE TABLE IF NOT EXISTS `odm_admin` (
  `id` int(11) UNSIGNED DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_admin`
--

INSERT INTO `odm_admin` (`id`, `admin`) VALUES
(1, 1),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `odm_category`
--

DROP TABLE IF EXISTS `odm_category`;
CREATE TABLE IF NOT EXISTS `odm_category` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_category`
--

INSERT INTO `odm_category` (`id`, `name`) VALUES
(1, 'Matematica');

-- --------------------------------------------------------

--
-- Table structure for table `odm_data`
--

DROP TABLE IF EXISTS `odm_data`;
CREATE TABLE IF NOT EXISTS `odm_data` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `owner` int(11) UNSIGNED DEFAULT NULL,
  `realname` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT '',
  `status` smallint(6) DEFAULT NULL,
  `department` smallint(6) UNSIGNED DEFAULT NULL,
  `default_rights` tinyint(4) DEFAULT NULL,
  `publishable` tinyint(4) DEFAULT NULL,
  `reviewer` int(11) UNSIGNED DEFAULT NULL,
  `reviewer_comments` varchar(255) DEFAULT NULL,
  `Denumire` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `informatie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_idx` (`id`,`owner`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `publishable` (`publishable`),
  KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_data`
--

INSERT INTO `odm_data` (`id`, `category`, `owner`, `realname`, `created`, `description`, `comment`, `status`, `department`, `default_rights`, `publishable`, `reviewer`, `reviewer_comments`, `Denumire`, `informatie`) VALUES
(3, 1, 1, 'CEC.docx', '2020-05-10 20:22:11', 'gddfdf', NULL, 0, 1, 0, 1, 1, 'To=Author(s);Subject=;Comments=;', 'aaaaaaa', NULL),
(4, 1, 1, 'CEC.docx', '2020-05-10 20:22:40', 'dfdfddfdaa', NULL, 0, 1, 0, 0, NULL, NULL, 'aaaa', NULL),
(5, 1, 1, 'CEC.docx', '2020-05-10 20:53:28', 'fgfgfg', NULL, 0, 1, 0, 1, 1, 'To=Author(s);Subject=;Comments=;', 'denumire', 'informatie'),
(6, 1, 3, 'CEC.docx', '2020-05-10 20:55:10', 'djfdjfh', NULL, 0, NULL, 0, 0, NULL, NULL, 'djfhdjfh', 'jdghjdf');

-- --------------------------------------------------------

--
-- Table structure for table `odm_department`
--

DROP TABLE IF EXISTS `odm_department`;
CREATE TABLE IF NOT EXISTS `odm_department` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_department`
--

INSERT INTO `odm_department` (`id`, `name`) VALUES
(1, 'Clasa 1');

-- --------------------------------------------------------

--
-- Table structure for table `odm_dept_perms`
--

DROP TABLE IF EXISTS `odm_dept_perms`;
CREATE TABLE IF NOT EXISTS `odm_dept_perms` (
  `fid` int(11) UNSIGNED DEFAULT NULL,
  `dept_id` int(11) UNSIGNED DEFAULT NULL,
  `rights` tinyint(4) NOT NULL DEFAULT '0',
  KEY `rights` (`rights`),
  KEY `dept_id` (`dept_id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_dept_perms`
--

INSERT INTO `odm_dept_perms` (`fid`, `dept_id`, `rights`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `odm_dept_reviewer`
--

DROP TABLE IF EXISTS `odm_dept_reviewer`;
CREATE TABLE IF NOT EXISTS `odm_dept_reviewer` (
  `dept_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_dept_reviewer`
--

INSERT INTO `odm_dept_reviewer` (`dept_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `odm_filetypes`
--

DROP TABLE IF EXISTS `odm_filetypes`;
CREATE TABLE IF NOT EXISTS `odm_filetypes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_filetypes`
--

INSERT INTO `odm_filetypes` (`id`, `type`, `active`) VALUES
(1, 'image/gif', 1),
(2, 'text/html', 1),
(3, 'text/plain', 1),
(4, 'application/pdf', 1),
(5, 'image/pdf', 1),
(6, 'application/x-pdf', 1),
(7, 'application/msword', 1),
(8, 'image/jpeg', 1),
(9, 'image/pjpeg', 1),
(10, 'image/png', 1),
(11, 'application/msexcel', 1),
(12, 'application/msaccess', 1),
(13, 'text/richtxt', 1),
(14, 'application/mspowerpoint', 1),
(15, 'application/octet-stream', 1),
(16, 'application/x-zip-compressed', 1),
(17, 'application/zip', 1),
(18, 'image/tiff', 1),
(19, 'image/tif', 1),
(20, 'application/vnd.ms-powerpoint', 1),
(21, 'application/vnd.ms-excel', 1),
(22, 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 1),
(23, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 1),
(24, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1),
(25, 'application/vnd.oasis.opendocument.chart', 1),
(26, 'application/vnd.oasis.opendocument.chart-template', 1),
(27, 'application/vnd.oasis.opendocument.formula', 1),
(28, 'application/vnd.oasis.opendocument.formula-template', 1),
(29, 'application/vnd.oasis.opendocument.graphics', 1),
(30, 'application/vnd.oasis.opendocument.graphics-template', 1),
(31, 'application/vnd.oasis.opendocument.image', 1),
(32, 'application/vnd.oasis.opendocument.image-template', 1),
(33, 'application/vnd.oasis.opendocument.presentation', 1),
(34, 'application/vnd.oasis.opendocument.presentation-template', 1),
(35, 'application/vnd.oasis.opendocument.spreadsheet', 1),
(36, 'application/vnd.oasis.opendocument.spreadsheet-template', 1),
(37, 'application/vnd.oasis.opendocument.text', 1),
(38, 'application/vnd.oasis.opendocument.text-master', 1),
(39, 'application/vnd.oasis.opendocument.text-template', 1),
(40, 'application/vnd.oasis.opendocument.text-web', 1),
(41, 'text/csv', 1),
(42, 'audio/mpeg', 0),
(43, 'image/x-dwg', 1),
(44, 'image/x-dfx', 1),
(45, 'drawing/x-dwf', 1),
(46, 'image/svg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `odm_log`
--

DROP TABLE IF EXISTS `odm_log`;
CREATE TABLE IF NOT EXISTS `odm_log` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(25) DEFAULT NULL,
  `note` text,
  `revision` varchar(255) DEFAULT NULL,
  KEY `id` (`id`),
  KEY `modified_on` (`modified_on`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_log`
--

INSERT INTO `odm_log` (`id`, `modified_on`, `modified_by`, `note`, `revision`) VALUES
(1, '2015-05-30 11:33:40', 'admin', 'Initial import', 'current'),
(2, '2015-05-30 11:47:56', 'admin', 'Initial import', 'current'),
(3, '2020-05-10 20:22:11', 'admin', 'Initial import', 'current'),
(4, '2020-05-10 20:22:40', 'admin', 'Initial import', 'current'),
(5, '2020-05-10 20:53:29', 'admin', 'Initial import', 'current'),
(6, '2020-05-10 20:55:10', 'user', 'Initial import', 'current');

-- --------------------------------------------------------

--
-- Table structure for table `odm_odmsys`
--

DROP TABLE IF EXISTS `odm_odmsys`;
CREATE TABLE IF NOT EXISTS `odm_odmsys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(16) DEFAULT NULL,
  `sys_value` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_odmsys`
--

INSERT INTO `odm_odmsys` (`id`, `sys_name`, `sys_value`) VALUES
(1, 'version', '1.3.0');

-- --------------------------------------------------------

--
-- Table structure for table `odm_rights`
--

DROP TABLE IF EXISTS `odm_rights`;
CREATE TABLE IF NOT EXISTS `odm_rights` (
  `RightId` tinyint(4) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_rights`
--

INSERT INTO `odm_rights` (`RightId`, `Description`) VALUES
(0, 'none'),
(1, 'view'),
(-1, 'forbidden'),
(2, 'read'),
(3, 'write'),
(4, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `odm_settings`
--

DROP TABLE IF EXISTS `odm_settings`;
CREATE TABLE IF NOT EXISTS `odm_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `validation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_settings`
--

INSERT INTO `odm_settings` (`id`, `name`, `value`, `description`, `validation`) VALUES
(1, 'debug', 'False', '(True/False) - Default=False - Debug the installation (not working)', 'bool'),
(2, 'demo', 'False', '(True/False) This setting is for a demo installation, where random people will be all loggging in as the same username/password like \"demo/demo\". This will keep users from removing files, users, etc.', 'bool'),
(3, 'authen', 'mysql', '(Default = mysql) Currently only MySQL authentication is supported', ''),
(4, 'title', 'Biblioteca Online', 'This is the browser window title', 'maxsize=255'),
(5, 'site_mail', 'root@localhost', 'The email address of the administrator of this site', 'email|maxsize=255|req'),
(6, 'root_id', '1', 'This variable sets the root user id.  The root user will be able to access all files and have authority for everything.', 'num|req'),
(7, 'dataDir', 'C:/wamp/odm_data/', 'location of file repository. This should ideally be outside the Web server root. Make sure the server has permissions to read/write files to this folder!. (Examples: Linux - /var/www/document_repository/ : Windows - c:/document_repository/', 'maxsize=255'),
(8, 'max_filesize', '5000000', 'Set the maximum file upload size', 'num|maxsize=255'),
(9, 'revision_expiration', '90', 'This var sets the amount of days until each file needs to be revised,  assuming that there are 30 days in a month for all months.', 'num|maxsize=255'),
(10, 'file_expired_action', '1', 'Choose an action option when a file is found to be expired The first two options also result in sending email to reviewer  (1) Remove from file list until renewed (2) Show in file list but non-checkoutable (3) Send email to reviewer only (4) Do Nothing', 'num'),
(11, 'authorization', 'True', 'True or False. If set True, every document must be reviewed by an admin before it can go public. To disable set to False. If False, all newly added/checked-in documents will immediately be listed', 'bool'),
(12, 'allow_signup', 'False', 'Should we display the sign-up link?', 'bool'),
(13, 'allow_password_reset', 'False', 'Should we allow users to reset their forgotten password?', 'bool'),
(14, 'try_nis', 'False', 'Attempt NIS password lookups from YP server?', 'bool'),
(15, 'theme', 'tweeter', 'Which theme to use?', ''),
(16, 'language', 'romanian', 'Set the default language (english, spanish, turkish, etc.). Local users may override this setting. Check include/language folder for languages available', 'alpha|req'),
(17, 'base_url', 'http://localhost/doc', 'Set this to the url of the site. No need for trailing \"/\" here', 'url'),
(18, 'max_query', '500', 'Set this to the maximum number of rows you want to be returned in a file listing. If your file list is slow decrease this value.', 'num');

-- --------------------------------------------------------

--
-- Table structure for table `odm_udf`
--

DROP TABLE IF EXISTS `odm_udf`;
CREATE TABLE IF NOT EXISTS `odm_udf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) DEFAULT NULL,
  `display_name` varchar(16) DEFAULT NULL,
  `field_type` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `odm_user`
--

DROP TABLE IF EXISTS `odm_user`;
CREATE TABLE IF NOT EXISTS `odm_user` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `department` int(11) UNSIGNED DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `pw_reset_code` char(32) DEFAULT NULL,
  `can_add` tinyint(1) DEFAULT '1',
  `can_checkin` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_user`
--

INSERT INTO `odm_user` (`id`, `username`, `password`, `department`, `phone`, `Email`, `last_name`, `first_name`, `pw_reset_code`, `can_add`, `can_checkin`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '5555551212', 'admin@example.com', 'User', 'Admin', '', 1, 1),
(2, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 1, '', 'user@user.com', 'User1', 'User1', NULL, 1, 1),
(3, 'user', '24c9e15e52afc47c225b757e7bee1f9d', NULL, NULL, 'user@mailiantor.com', 'user', 'user', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `odm_user_perms`
--

DROP TABLE IF EXISTS `odm_user_perms`;
CREATE TABLE IF NOT EXISTS `odm_user_perms` (
  `fid` int(11) UNSIGNED DEFAULT NULL,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rights` tinyint(4) NOT NULL DEFAULT '0',
  KEY `user_perms_idx` (`fid`,`uid`,`rights`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `rights` (`rights`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_user_perms`
--

INSERT INTO `odm_user_perms` (`fid`, `uid`, `rights`) VALUES
(1, 1, 4),
(2, 1, 4),
(2, 2, 4),
(3, 1, 4),
(4, 1, 4),
(5, 1, 4),
(6, 3, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
