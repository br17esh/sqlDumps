-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 11, 2019 at 07:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangotest`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add summary', 7, 'add_summary'),
(26, 'Can change summary', 7, 'change_summary'),
(27, 'Can delete summary', 7, 'delete_summary'),
(28, 'Can view summary', 7, 'view_summary'),
(29, 'Can add dqrstats', 8, 'add_dqrstats'),
(30, 'Can change dqrstats', 8, 'change_dqrstats'),
(31, 'Can delete dqrstats', 8, 'delete_dqrstats'),
(32, 'Can view dqrstats', 8, 'view_dqrstats'),
(33, 'Can add dqrstats', 9, 'add_dqrstats'),
(34, 'Can change dqrstats', 9, 'change_dqrstats'),
(35, 'Can delete dqrstats', 9, 'delete_dqrstats'),
(36, 'Can view dqrstats', 9, 'view_dqrstats'),
(37, 'Can add dph', 10, 'add_dph'),
(38, 'Can change dph', 10, 'change_dph'),
(39, 'Can delete dph', 10, 'delete_dph'),
(40, 'Can view dph', 10, 'view_dph'),
(41, 'Can add obsinfo', 11, 'add_obsinfo'),
(42, 'Can change obsinfo', 11, 'change_obsinfo'),
(43, 'Can delete obsinfo', 11, 'delete_obsinfo'),
(44, 'Can view obsinfo', 11, 'view_obsinfo'),
(45, 'Can add housekeeping', 12, 'add_housekeeping'),
(46, 'Can change housekeeping', 12, 'change_housekeeping'),
(47, 'Can delete housekeeping', 12, 'delete_housekeeping'),
(48, 'Can view housekeeping', 12, 'view_housekeeping'),
(49, 'Can add countrate', 13, 'add_countrate'),
(50, 'Can change countrate', 13, 'change_countrate'),
(51, 'Can delete countrate', 13, 'delete_countrate'),
(52, 'Can view countrate', 13, 'view_countrate');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$PmxN0PG24QKF$uwC/voyM8h8Qud1nl+j3Exxl6jGfpkAEtSQqpkh1A2Q=', '2019-02-11 11:11:06.637175', 1, 'br17esh', '', '', 'brijesh.choudhary7@gmail.com', 1, 1, '2019-01-29 19:22:30.791003');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-01-29 19:28:06.302701', '1', '20190120_T03_025T01_9000002670_level2_17950', 1, '[{\"added\": {}}]', 7, 1),
(2, '2019-01-29 20:33:22.026921', '2', '20190123_A05_019T01_9000002672_level2_17964', 1, '[{\"added\": {}}]', 7, 1),
(3, '2019-02-02 12:17:07.234983', '3', '20170302_G06_064T01_9000001066_level2_07760', 1, '[{\"added\": {}}]', 7, 1),
(4, '2019-02-02 12:18:05.972713', '4', '20170325_A02_055T01_9000001114_level2_08096', 1, '[{\"added\": {}}]', 7, 1),
(5, '2019-02-02 12:18:53.896554', '5', '20170712_A02_198T01_9000001376_level2_09674', 1, '[{\"added\": {}}]', 7, 1),
(6, '2019-02-02 12:19:41.653555', '6', '20160519_G05_211T01_9000000464_level2_03487', 1, '[{\"added\": {}}]', 7, 1),
(7, '2019-02-04 09:52:48.638979', '1', 'modeM0/AS1A05_186T01_9000002692_18133cztM0_level2.', 1, '[{\"added\": {}}]', 9, 1),
(8, '2019-02-04 10:03:23.883071', '1', 'http://www.iucaa.in/~astrosat/czti_dqr/20190203_A05_186T01_9000002692_level2_18133/dph.Q0.png', 1, '[{\"added\": {}}]', 10, 1),
(9, '2019-02-06 11:55:33.511462', '7', '20190205_T03_014T01_9000002704_level2_18165', 1, '[{\"added\": {}}]', 7, 1),
(10, '2019-02-06 12:04:54.106651', '2', 'http://www.iucaa.in/~astrosat/czti_dqr/20190205_T03_014T01_9000002704_level2_18165/noisytime.Q0.png', 1, '[{\"added\": {}}]', 10, 1),
(11, '2019-02-06 12:12:33.484677', '2', 'http://www.iucaa.in/~astrosat/czti_dqr/20190205_T03_014T01_9000002704_level2_18165/noisytime.Q0.png', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 10, 1),
(12, '2019-02-08 17:20:24.074109', '1', '2019-02-08', 1, '[{\"added\": {}}]', 11, 1),
(13, '2019-02-08 17:22:50.345789', '2', '2019-02-08', 1, '[{\"added\": {}}]', 11, 1),
(14, '2019-02-09 14:26:55.607821', '2', '2019-02-08', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 11, 1),
(15, '2019-02-09 14:27:03.424155', '1', '2019-02-08', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 11, 1),
(16, '2019-02-09 15:03:25.827229', '1', '2019-02-08', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 11, 1),
(17, '2019-02-09 15:04:03.575661', '1', '2019-02-08', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 11, 1),
(18, '2019-02-09 15:16:15.805992', '2', '2019-02-08', 2, '[]', 11, 1),
(19, '2019-02-09 15:16:23.065222', '1', '2019-02-08', 2, '[]', 11, 1),
(20, '2019-02-09 15:17:20.891149', '7', '20190205_T03_014T01_9000002704_level2_18165', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(21, '2019-02-09 15:17:29.389126', '6', '20160519_G05_211T01_9000000464_level2_03487', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(22, '2019-02-09 15:17:38.069089', '5', '20170712_A02_198T01_9000001376_level2_09674', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(23, '2019-02-09 15:17:46.748578', '4', '20170325_A02_055T01_9000001114_level2_08096', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(24, '2019-02-09 15:18:05.854961', '3', '20170302_G06_064T01_9000001066_level2_07760', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(25, '2019-02-09 15:18:41.046674', '2', '20190123_A05_019T01_9000002672_level2_17964', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(26, '2019-02-09 15:18:58.768936', '1', '20190120_T03_025T01_9000002670_level2_17950', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(27, '2019-02-09 15:19:41.372998', '7', '20190205_T03_014T01_9000002704_level2_18165', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(28, '2019-02-09 15:19:48.563601', '6', '20160519_G05_211T01_9000000464_level2_03487', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(29, '2019-02-09 15:19:56.974144', '5', '20170712_A02_198T01_9000001376_level2_09674', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(30, '2019-02-09 15:20:17.299979', '4', '20170325_A02_055T01_9000001114_level2_08096', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(31, '2019-02-09 15:20:23.044980', '4', '20170325_A02_055T01_9000001114_level2_08096', 2, '[]', 7, 1),
(32, '2019-02-09 15:20:30.494475', '3', '20170302_G06_064T01_9000001066_level2_07760', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(33, '2019-02-09 15:20:42.388051', '3', '20170302_G06_064T01_9000001066_level2_07760', 2, '[]', 7, 1),
(34, '2019-02-09 15:20:50.627835', '2', '20190123_A05_019T01_9000002672_level2_17964', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(35, '2019-02-09 15:21:00.006241', '1', '20190120_T03_025T01_9000002670_level2_17950', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 7, 1),
(36, '2019-02-09 15:21:04.042000', '2', '20190123_A05_019T01_9000002672_level2_17964', 2, '[]', 7, 1),
(37, '2019-02-09 15:21:12.615764', '1', '20190120_T03_025T01_9000002670_level2_17950', 2, '[]', 7, 1),
(38, '2019-02-09 15:21:24.240701', '2', 'http://www.iucaa.in/~astrosat/czti_dqr/20190205_T03_014T01_9000002704_level2_18165/noisytime.Q0.png', 2, '[]', 10, 1),
(39, '2019-02-09 15:21:34.802732', '1', 'http://www.iucaa.in/~astrosat/czti_dqr/20190203_A05_186T01_9000002692_level2_18133/dph.Q0.png', 2, '[]', 10, 1),
(40, '2019-02-09 15:21:53.947397', '2', '2019-02-08', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 11, 1),
(41, '2019-02-09 15:22:02.396196', '1', '2019-02-08', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 11, 1),
(42, '2019-02-09 15:30:58.068881', '2', '2019-02-08', 2, '[{\"changed\": {\"fields\": [\"observer\"]}}]', 11, 1),
(43, '2019-02-09 15:31:04.854313', '1', '2019-02-08', 2, '[{\"changed\": {\"fields\": [\"observer\"]}}]', 11, 1),
(44, '2019-02-09 15:31:15.564845', '2', '2019-02-08', 2, '[]', 11, 1),
(45, '2019-02-10 08:02:31.637970', '6', '20160519_G05_211T01_9000000464_level2_03487', 2, '[{\"changed\": {\"fields\": [\"Observer\"]}}]', 7, 1),
(46, '2019-02-10 08:02:52.628274', '6', '20160519_G05_211T01_9000000464_level2_03487', 2, '[{\"changed\": {\"fields\": [\"Observer\"]}}]', 7, 1),
(47, '2019-02-10 14:45:51.395263', '1', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hkCZTHV_Monitor.png', 1, '[{\"added\": {}}]', 12, 1),
(48, '2019-02-10 14:49:58.957374', '2', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hkCZTHV_Monitor.png', 1, '[{\"added\": {}}]', 12, 1),
(49, '2019-02-11 11:12:16.780794', '2', 'http://www.iucaa.in/~astrosat/czti_dqr/20190211_A05_019T01_9000002718_level2_18237/dph.Q0.png', 2, '[{\"changed\": {\"fields\": [\"quadA\", \"quadB\", \"quadC\", \"quadD\"]}}]', 10, 1),
(50, '2019-02-11 11:36:14.130659', '1', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/countrate_histogram.png', 1, '[{\"added\": {}}]', 13, 1),
(51, '2019-02-11 11:39:18.621891', '2', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/countrate_histogram.png', 1, '[{\"added\": {}}]', 13, 1),
(52, '2019-02-11 13:18:34.398169', '2', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/countrate_histogram.png', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 13, 1),
(53, '2019-02-11 13:18:45.018821', '1', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/countrate_histogram.png', 2, '[{\"changed\": {\"fields\": [\"UID\"]}}]', 13, 1),
(54, '2019-02-11 17:37:09.747431', '2', 'modeM0/AS1C04_001T01_9000002716_18223cztM0_level2.', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'dqr', 'dqrstats'),
(13, 'dqrreport', 'countrate'),
(10, 'dqrreport', 'dph'),
(9, 'dqrreport', 'dqrstats'),
(12, 'dqrreport', 'housekeeping'),
(11, 'dqrreport', 'obsinfo'),
(7, 'iucaaapp', 'summary'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-29 19:21:39.518726'),
(2, 'auth', '0001_initial', '2019-01-29 19:21:49.616469'),
(3, 'admin', '0001_initial', '2019-01-29 19:21:51.889573'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-01-29 19:21:51.979340'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-01-29 19:21:52.031906'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-01-29 19:21:53.181915'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-01-29 19:21:54.017176'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-01-29 19:21:54.941492'),
(9, 'auth', '0004_alter_user_username_opts', '2019-01-29 19:21:55.018520'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-01-29 19:21:55.799871'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-01-29 19:21:55.855137'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-01-29 19:21:55.914945'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-01-29 19:21:56.822693'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-01-29 19:21:57.746739'),
(15, 'iucaaapp', '0001_initial', '2019-01-29 19:21:58.165288'),
(16, 'sessions', '0001_initial', '2019-01-29 19:21:58.782961'),
(17, 'dqr', '0001_initial', '2019-02-04 09:00:19.180761'),
(18, 'dqrreport', '0001_initial', '2019-02-04 09:49:29.995641'),
(19, 'dqrreport', '0002_dph', '2019-02-04 09:58:52.367532'),
(20, 'iucaaapp', '0002_summary_uid', '2019-02-06 11:50:28.562865'),
(21, 'dqrreport', '0003_dph_uid', '2019-02-06 12:11:00.046909'),
(22, 'dqrreport', '0004_obsinfo', '2019-02-08 17:12:23.328579'),
(23, 'dqrreport', '0005_obsinfo_uid', '2019-02-08 17:14:42.281337'),
(24, 'dqrreport', '0006_dqrstats_uid', '2019-02-10 08:06:13.414588'),
(25, 'dqrreport', '0007_housekeeping', '2019-02-10 14:43:01.506072'),
(26, 'dqrreport', '0008_countrate', '2019-02-11 11:28:00.696756');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5xje9mu070txurvp2mqieqhv3ek66bd2', 'YzViMGYwYTIzMDE5OWIxYmVjNzU4YWYyODc4OWQ3Y2JiOWFmNTZhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODBkZWU1YjYyYTFmZDhjYzJhMmJhZjk1ZWFmYWFlMGMyOGVjNzdjIn0=', '2019-02-12 19:24:03.277011'),
('6iib5btsuteq2daje0gw6fi9wzjzywpx', 'YzViMGYwYTIzMDE5OWIxYmVjNzU4YWYyODc4OWQ3Y2JiOWFmNTZhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODBkZWU1YjYyYTFmZDhjYzJhMmJhZjk1ZWFmYWFlMGMyOGVjNzdjIn0=', '2019-02-20 09:50:32.796816'),
('8oabcl4f9xxjpibbu0p5k4ai1dmoojyj', 'YzViMGYwYTIzMDE5OWIxYmVjNzU4YWYyODc4OWQ3Y2JiOWFmNTZhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODBkZWU1YjYyYTFmZDhjYzJhMmJhZjk1ZWFmYWFlMGMyOGVjNzdjIn0=', '2019-02-25 11:11:06.706639'),
('bbraedosj1088g29pqb4i4yi9ewqkru7', 'YzViMGYwYTIzMDE5OWIxYmVjNzU4YWYyODc4OWQ3Y2JiOWFmNTZhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODBkZWU1YjYyYTFmZDhjYzJhMmJhZjk1ZWFmYWFlMGMyOGVjNzdjIn0=', '2019-02-22 17:15:33.760790'),
('p9l1dhhcug8ifznwh2iqgtavc2346pb9', 'YzViMGYwYTIzMDE5OWIxYmVjNzU4YWYyODc4OWQ3Y2JiOWFmNTZhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODBkZWU1YjYyYTFmZDhjYzJhMmJhZjk1ZWFmYWFlMGMyOGVjNzdjIn0=', '2019-02-18 09:02:30.591820');

-- --------------------------------------------------------

--
-- Table structure for table `dqrreport_countrate`
--

CREATE TABLE `dqrreport_countrate` (
  `id` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `crplot1` varchar(200) NOT NULL,
  `crimg1` varchar(200) NOT NULL,
  `crplot2` varchar(200) NOT NULL,
  `crimg2` varchar(200) NOT NULL,
  `crplot3` varchar(200) NOT NULL,
  `crimg3` varchar(200) NOT NULL,
  `crplot4` varchar(200) NOT NULL,
  `crimg4` varchar(200) NOT NULL,
  `crplot5` varchar(200) NOT NULL,
  `crimg5` varchar(200) NOT NULL,
  `crplot6` varchar(200) NOT NULL,
  `crimg6` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dqrreport_countrate`
--

INSERT INTO `dqrreport_countrate` (`id`, `UID`, `crplot1`, `crimg1`, `crplot2`, `crimg2`, `crplot3`, `crimg3`, `crplot4`, `crimg4`, `crplot5`, `crimg5`, `crplot6`, `crimg6`) VALUES
(1, 2018020606, 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/countrate_histogram.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/imageFULL_DPI.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/countrate_lightcurve.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/imageFULL_DPI.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/countrate_modulerates.Q0.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/imageQ0.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/countrate_modulerates.Q1.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/imageQ1.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/countrate_modulerates.Q2.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/imageQ2.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/countrate_modulerates.Q3.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190210_C04_001T01_9000002716_level2_18235/imageQ3.png'),
(2, 2018020607, 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/countrate_histogram.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/imageFULL_DPI.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/countrate_lightcurve.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/imageFULL_DPI.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/countrate_modulerates.Q0.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/imageQ0.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/countrate_modulerates.Q1.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/imageQ1.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/countrate_modulerates.Q2.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/imageQ2.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/countrate_modulerates.Q3.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18192/imageQ3.png');

-- --------------------------------------------------------

--
-- Table structure for table `dqrreport_dph`
--

CREATE TABLE `dqrreport_dph` (
  `id` int(11) NOT NULL,
  `quadA` varchar(200) NOT NULL,
  `quadB` varchar(200) NOT NULL,
  `quadC` varchar(200) NOT NULL,
  `quadD` varchar(200) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dqrreport_dph`
--

INSERT INTO `dqrreport_dph` (`id`, `quadA`, `quadB`, `quadC`, `quadD`, `UID`) VALUES
(1, 'http://www.iucaa.in/~astrosat/czti_dqr/20190203_A05_186T01_9000002692_level2_18133/dph.Q0.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190203_A05_186T01_9000002692_level2_18133/dph.Q1.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190203_A05_186T01_9000002692_level2_18133/dph.Q2.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190203_A05_186T01_9000002692_level2_18133/dph.Q3.png', 2018020606),
(2, 'http://www.iucaa.in/~astrosat/czti_dqr/20190211_A05_019T01_9000002718_level2_18237/dph.Q0.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190211_A05_019T01_9000002718_level2_18237/dph.Q1.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190211_A05_019T01_9000002718_level2_18237/dph.Q2.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190211_A05_019T01_9000002718_level2_18237/dph.Q3.png', 2018020607);

-- --------------------------------------------------------

--
-- Table structure for table `dqrreport_dqrstats`
--

CREATE TABLE `dqrreport_dqrstats` (
  `id` int(11) NOT NULL,
  `filename_OF` varchar(50) NOT NULL,
  `filename_FF` varchar(50) NOT NULL,
  `size_bytes_OF` varchar(50) NOT NULL,
  `size_bytes_FF` varchar(50) NOT NULL,
  `size_OF` varchar(50) NOT NULL,
  `size_FF` varchar(50) NOT NULL,
  `events_quadA_OF` varchar(50) NOT NULL,
  `events_quadA_FF` varchar(50) NOT NULL,
  `events_quadB_OF` varchar(50) NOT NULL,
  `events_quadB_FF` varchar(50) NOT NULL,
  `events_quadC_OF` varchar(50) NOT NULL,
  `events_quadC_FF` varchar(50) NOT NULL,
  `events_quadD_OF` varchar(50) NOT NULL,
  `events_quadD_FF` varchar(50) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dqrreport_dqrstats`
--

INSERT INTO `dqrreport_dqrstats` (`id`, `filename_OF`, `filename_FF`, `size_bytes_OF`, `size_bytes_FF`, `size_OF`, `size_FF`, `events_quadA_OF`, `events_quadA_FF`, `events_quadB_OF`, `events_quadB_FF`, `events_quadC_OF`, `events_quadC_FF`, `events_quadD_OF`, `events_quadD_FF`, `UID`) VALUES
(1, 'modeM0/AS1A05_186T01_9000002692_18133cztM0_level2.', 'modeM0/AS1A05_186T01_9000002692_18133cztM0_level2_', '503,930,880', '76,475,520', '480.6 MB', '72.9 MB', '3,370,702', '470,667', '3,519,573', '478,358', '3,398,221', '450,913', '4,502,832', '432,871', 2018020606),
(2, 'modeM0/AS1C04_001T01_9000002716_18223cztM0_level2.', 'modeM0/AS1C04_001T01_9000002716_18223cztM0_level2_', '497,839,680', '133,375,680', '474.8 MB', '127.2 MB', '4,338,000', '905,995', '3,191,814', '946,644', '3,031,962', '882,726', '4,090,140', '867,135', 2018020607);

-- --------------------------------------------------------

--
-- Table structure for table `dqrreport_housekeeping`
--

CREATE TABLE `dqrreport_housekeeping` (
  `id` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `plot1` varchar(200) NOT NULL,
  `plot2` varchar(200) NOT NULL,
  `plot3` varchar(200) NOT NULL,
  `plot4` varchar(200) NOT NULL,
  `plot5` varchar(200) NOT NULL,
  `plot6` varchar(200) NOT NULL,
  `plot7` varchar(200) NOT NULL,
  `plot8` varchar(200) NOT NULL,
  `plot9` varchar(200) NOT NULL,
  `plot10` varchar(200) NOT NULL,
  `plot11` varchar(200) NOT NULL,
  `plot12` varchar(200) NOT NULL,
  `plot13` varchar(200) NOT NULL,
  `plot14` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dqrreport_housekeeping`
--

INSERT INTO `dqrreport_housekeeping` (`id`, `UID`, `plot1`, `plot2`, `plot3`, `plot4`, `plot5`, `plot6`, `plot7`, `plot8`, `plot9`, `plot10`, `plot11`, `plot12`, `plot13`, `plot14`) VALUES
(1, 2018020606, 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hkCZTHV_Monitor.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hkDVDD.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hkTemperature1.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hkVetoHV_Monitor.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hkVetoLLD.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_AlphaCounter.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_CPM_Rate.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_CZT_Counter.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_POS_2DOT5V_Monitor.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_POS_5V_Monitor.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_ROLL_ROT.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_Roll_DEC.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_Roll_RA.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190207_A05_160T02_9000002710_level2_18196/hk_VetoCounter.png'),
(2, 2018020607, 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hkCZTHV_Monitor.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hkDVDD.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hkTemperature1.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hkVetoHV_Monitor.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hkVetoLLD.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_AlphaCounter.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_CPM_Rate.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_CZT_Counter.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_POS_2DOT5V_Monitor.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_POS_5V_Monitor.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_ROLL_ROT.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_Roll_DEC.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_Roll_RA.png', 'http://www.iucaa.in/~astrosat/czti_dqr/20190208_T03_003T01_9000002712_level2_18217/hk_VetoCounter.png');

-- --------------------------------------------------------

--
-- Table structure for table `dqrreport_obsinfo`
--

CREATE TABLE `dqrreport_obsinfo` (
  `id` int(11) NOT NULL,
  `date_obs` varchar(50) NOT NULL,
  `time_obs` varchar(50) NOT NULL,
  `date_end` varchar(50) NOT NULL,
  `time_end` varchar(50) NOT NULL,
  `obs_id` varchar(50) NOT NULL,
  `exposure` varchar(50) NOT NULL,
  `sourceid` varchar(50) NOT NULL,
  `observer` varchar(50) NOT NULL,
  `ra_pnt` varchar(50) NOT NULL,
  `dec_pnt` varchar(50) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dqrreport_obsinfo`
--

INSERT INTO `dqrreport_obsinfo` (`id`, `date_obs`, `time_obs`, `date_end`, `time_end`, `obs_id`, `exposure`, `sourceid`, `observer`, `ra_pnt`, `dec_pnt`, `UID`) VALUES
(1, '2019-02-08', '10:23:09.732000000', '2019-02-08', '12:36:20.737000000', 'A05_160T02_9000002710', '2876.9464034', 'PKS 1222+216', 'mayukh', '186.2263', '21.38228', 2018020606),
(2, '2019-02-08', '08:39:49.727400000', '2019-02-08', '10:53:09.733000000', 'A05_160T02_9000002710', '3052.95327954', 'PKS 1222+216', 'aomar', '186.2263', '21.38228', 2018020607);

-- --------------------------------------------------------

--
-- Table structure for table `iucaaapp_summary`
--

CREATE TABLE `iucaaapp_summary` (
  `id` int(11) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `OBSID` varchar(50) NOT NULL,
  `Observer` varchar(50) NOT NULL,
  `Object` varchar(50) NOT NULL,
  `RA` double NOT NULL,
  `Decr` double NOT NULL,
  `Exposure_time` double NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iucaaapp_summary`
--

INSERT INTO `iucaaapp_summary` (`id`, `folder`, `OBSID`, `Observer`, `Object`, `RA`, `Decr`, `Exposure_time`, `UID`) VALUES
(1, '20190120_T03_025T01_9000002670_level2_17950', 'T03_025T01_9000002670', 'mayukh3107', 'M81', 148.8882, 69.06529, 5241.79548921, 2018020606),
(2, '20190123_A05_019T01_9000002672_level2_17964', 'A05_019T01_9000002672', 'savithri', '1H 0323+342', 51.17125, 34.17944, 4042.58700201, 2018020607),
(3, '20170302_G06_064T01_9000001066_level2_07760', 'T03_080T01_9000002686', 'vivek', '4U 1705-44', 257.227, -44.10204, 1141.52802623, 2018020606),
(4, '20170325_A02_055T01_9000001114_level2_08096', 'A02_055T01_9000001114', 'veeresh', 'B3 1702+457', 255.8767, 45.67972, 6595.85980133, 2018020606),
(5, '20170712_A02_198T01_9000001376_level2_09674', 'A02_198T01_9000001376', 'varun', '4U 1538-52', 235.5973, -52.386, 5388.64630764, 2018020606),
(6, '20160519_G05_211T01_9000000464_level2_03487', 'G05_211T01_9000000464', 'rohit', '1ES1218+304', 185.341, 30.177, 4731.81452873, 2018020606),
(7, '20190205_T03_014T01_9000002704_level2_18165', 'T03_014T01_9000002704', 'aoma', 'UGC9273', 217.0453, 13.55158, 3467.13166071, 2018020607);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `dqrreport_countrate`
--
ALTER TABLE `dqrreport_countrate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dqrreport_dph`
--
ALTER TABLE `dqrreport_dph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dqrreport_dqrstats`
--
ALTER TABLE `dqrreport_dqrstats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dqrreport_housekeeping`
--
ALTER TABLE `dqrreport_housekeeping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dqrreport_obsinfo`
--
ALTER TABLE `dqrreport_obsinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iucaaapp_summary`
--
ALTER TABLE `iucaaapp_summary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `dqrreport_countrate`
--
ALTER TABLE `dqrreport_countrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dqrreport_dph`
--
ALTER TABLE `dqrreport_dph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dqrreport_dqrstats`
--
ALTER TABLE `dqrreport_dqrstats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dqrreport_housekeeping`
--
ALTER TABLE `dqrreport_housekeeping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dqrreport_obsinfo`
--
ALTER TABLE `dqrreport_obsinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `iucaaapp_summary`
--
ALTER TABLE `iucaaapp_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
