-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:57152
-- Generation Time: Nov 25, 2017 at 10:40 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add contato', 7, 'add_contato'),
(20, 'Can change contato', 7, 'change_contato'),
(21, 'Can delete contato', 7, 'delete_contato'),
(25, 'Can add log entry', 9, 'add_logentry'),
(26, 'Can change log entry', 9, 'change_logentry'),
(27, 'Can delete log entry', 9, 'delete_logentry'),
(28, 'Can add usuario', 10, 'add_usuario'),
(29, 'Can change usuario', 10, 'change_usuario'),
(30, 'Can delete usuario', 10, 'delete_usuario');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$24000$l8r5qx9XKYNa$xyVl8yCS1IScZue9cFJbndzL2rigSi9Boo5GQSW836k=', '2017-11-25 01:53:41.506000', 1, 'admin', '', '', 'yan.santosf@gmail.com', 1, 1, '2017-11-23 15:24:01.026078');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'admin', 'logentry'),
(7, 'app', 'contato'),
(2, 'auth', 'group'),
(1, 'auth', 'permission'),
(3, 'auth', 'user'),
(4, 'contenttypes', 'contenttype'),
(10, 'main', 'usuario'),
(5, 'sessions', 'session'),
(6, 'sites', 'site');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(17, 'main', '0001_initial', '2017-11-25 14:59:02.921000'),
(18, 'contenttypes', '0001_initial', '2017-11-25 15:09:04.358000'),
(19, 'auth', '0001_initial', '2017-11-25 15:09:04.389000'),
(20, 'admin', '0001_initial', '2017-11-25 15:09:04.421000'),
(21, 'admin', '0002_logentry_remove_auto_add', '2017-11-25 15:09:04.452000'),
(22, 'contenttypes', '0002_remove_content_type_name', '2017-11-25 15:09:04.483000'),
(23, 'auth', '0002_alter_permission_name_max_length', '2017-11-25 15:09:04.500000'),
(24, 'auth', '0003_alter_user_email_max_length', '2017-11-25 15:09:04.530000'),
(25, 'auth', '0004_alter_user_username_opts', '2017-11-25 15:09:04.577000'),
(26, 'auth', '0005_alter_user_last_login_null', '2017-11-25 15:09:04.593000'),
(27, 'auth', '0006_require_contenttypes_0002', '2017-11-25 15:09:04.624000'),
(28, 'auth', '0007_alter_validators_add_error_messages', '2017-11-25 15:09:04.655000'),
(29, 'sessions', '0001_initial', '2017-11-25 15:09:04.673000'),
(30, 'sites', '0001_initial', '2017-11-25 15:09:04.702000'),
(31, 'sites', '0002_alter_domain_unique', '2017-11-25 15:09:04.718000');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0rltocs6cas2ny8fwgf0bb0jsm2z4kt5', 'OGY0YTIyODI4NzZhNmNmODdiMmZiOGNiOTZjNDVmNTIzZmNiYzk1Mjp7InVzZXJuYW1lIjoiTHVjYXMgQWxtZWlkYSIsInVzZXJfcmEiOiIxNzAwMTk1IiwidXNlcl9pZCI6M30=', '2017-12-09 15:50:26.368000'),
('8nnie2re4ar5aftzf5cm8b4vwjy8q3b1', 'OWIyYWJmY2MyMzVlMDczODMyNGVkYTQ5Yzk3NGU0ZTliOWY1N2Y4ZDp7InVzZXJuYW1lIjoiTGVhbmRybyBNYXRhZG9yIGRlIG9uXHUwMGU3YSIsInVzZXJfcmEiOiIxNzAwNjMxIiwidXNlcl9pZCI6NCwidXNlcl9sZXZlbCI6IjEiLCJ1c2VyX2VtYWlsIjoibGVhbmRyb0Bob3RtYWlsLmNvbSJ9', '2017-12-09 17:49:54.735000'),
('j8ebokm93upv44bf6depfb2rq42qzxnr', 'ZWZiNjQxYTI1ZWQ3OThiZTAxMjc4MmNhYTYwMjJlZDQ5YzlmZjNkYTp7fQ==', '2017-12-09 15:53:35.154000'),
('s8491t59ab173xbdlykklnw6m1n7c37l', 'MTcyNzIzMDkwZTUwM2Q3MzFkMDNlZTVmNDg3NjYwYWE1OWI2ZTU4MTp7InVzZXJuYW1lIjoiWWFuIFNhbnRvcyBTaWx2YSIsInVzZXJfaWQiOjIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJ1c3VhcmlvX2lkIjoyLCJ1c2VyX2xldmVsIjoiMSIsInVzZXJfcmEiOiIxNjAwMTQyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzEwMTA3ZTJiN2VjNjRlNTdjMDM0NjY5MzI0NzUyM2QxYWQ3OGE5MCIsInVzZXJfZW1haWwiOiJ5eWFuZ3RvdUBnbWFpbC5jb20ifQ==', '2017-12-09 18:32:29.364000'),
('tvqebf1liyois74itigv0ocvpjzwt90w', 'NmI4OWU1OTViM2MwM2Q2OTBmYTFlYjU0YjhjNGIzZDVlOWZkMzVlOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMxMDEwN2UyYjdlYzY0ZTU3YzAzNDY2OTMyNDc1MjNkMWFkNzhhOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-12-08 00:39:26.090000');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `main_usuario`
--

CREATE TABLE `main_usuario` (
  `usuario_id` int(11) UNSIGNED NOT NULL,
  `usuario_ra` varchar(50) NOT NULL,
  `usuario_nome` varchar(50) NOT NULL,
  `usuario_nascimento` date NOT NULL,
  `usuario_sexo` varchar(50) NOT NULL,
  `usuario_estado_civil` varchar(50) NOT NULL,
  `usuario_email` varchar(50) NOT NULL,
  `usuario_nivel` varchar(50) NOT NULL,
  `usuario_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main_usuario`
--

INSERT INTO `main_usuario` (`usuario_id`, `usuario_ra`, `usuario_nome`, `usuario_nascimento`, `usuario_sexo`, `usuario_estado_civil`, `usuario_email`, `usuario_nivel`, `usuario_password`) VALUES
(2, '1600142', 'Yan Santos Silva', '2017-11-13', 'masculino', 'solteiro', 'yyangtou@gmail.com', '1', '123456'),
(3, '1700195', 'Lucas Almeida', '2017-11-13', 'masculino', 'solteiro', 'lucasfalmeida1998@hotmail.com', '1', '123456'),
(4, '1700631', 'LEANDRO S SILVA', '2017-11-13', 'masculino', 'solteiro', 'leossone@gmail.com', '1', '123456');

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `main_usuario`
--
ALTER TABLE `main_usuario`
  ADD PRIMARY KEY (`usuario_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
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
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `main_usuario`
--
ALTER TABLE `main_usuario`
  MODIFY `usuario_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

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
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
