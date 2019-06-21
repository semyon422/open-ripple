-- --------------------------------------------------------
-- Хост:                         osu.aestival.space
-- Версия сервера:               10.1.38-MariaDB-0+deb9u1 - Debian 9.8
-- Операционная система:         debian-linux-gnu
-- HeidiSQL Версия:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `2fa_telegram` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `1` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `2fa_totp` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `enabled` int(11) NOT NULL DEFAULT '0',
  `2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `achievements` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `achievements` (`id`, `name`, `description`, `icon`, `version`) VALUES
	(1, '500 Combo (osu!std)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1),
	(2, '750 Combo (osu!std)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1),
	(3, '1000 Combo (osu!std)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1),
	(4, '2000 Combo (osu!std)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1),
	(5, '500 Combo (osu!taiko)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1),
	(6, '750 Combo (osu!taiko)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1),
	(7, '1000 Combo (osu!taiko)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1),
	(8, '2000 Combo (osu!taiko)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1),
	(9, '500 Combo (osu!ctb)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1),
	(10, '750 Combo (osu!ctb)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1),
	(11, '1000 Combo (osu!ctb)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1),
	(12, '2000 Combo (osu!ctb)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1),
	(13, '500 Combo (osu!mania)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1),
	(14, '750 Combo (osu!mania)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1),
	(15, '1000 Combo (osu!mania)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1),
	(16, '2000 Combo (osu!mania)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1),
	(17, 'Rising Star', 'Can\'t go forward without the first steps.', 'osu-skill-pass-1', 2),
	(18, 'My First Don', 'Can\'t go forward without the first steps.', 'taiko-skill-pass-1', 2),
	(19, 'A Slice Of Life', 'Can\'t go forward without the first steps.', 'fruits-skill-pass-1', 2),
	(20, 'First Steps', 'Can\'t go forward without the first steps.', 'mania-skill-pass-1', 2),
	(21, 'Constellation Prize', 'Definitely not a consolation prize. Now things start getting hard!', 'osu-skill-pass-2', 2),
	(22, 'Katsu Katsu Katsu', 'Definitely not a consolation prize. Now things start getting hard!', 'taiko-skill-pass-2', 2),
	(23, 'Dashing Ever Forward', 'Definitely not a consolation prize. Now things start getting hard!', 'fruits-skill-pass-2', 2),
	(24, 'No Normal Player', 'Definitely not a consolation prize. Now things start getting hard!', 'mania-skill-pass-2', 2),
	(25, 'Building Confidence', 'Oh, you\'ve SO got this.', 'osu-skill-pass-3', 2),
	(26, 'Not Even Trying', 'Oh, you\'ve SO got this.', 'taiko-skill-pass-3', 2),
	(27, 'Zesty Disposition', 'Oh, you\'ve SO got this.', 'fruits-skill-pass-3', 2),
	(28, 'Impulse Drive', 'Oh, you\'ve SO got this.', 'mania-skill-pass-3', 2),
	(29, 'Insanity Approaches', 'You\'re not twitching, you\'re just ready.', 'osu-skill-pass-4', 2),
	(30, 'Face Your Demons', 'You\'re not twitching, you\'re just ready.', 'taiko-skill-pass-4', 2),
	(31, 'Hyperdash ON!', 'You\'re not twitching, you\'re just ready.', 'fruits-skill-pass-4', 2),
	(32, 'Hyperspeed', 'You\'re not twitching, you\'re just ready.', 'mania-skill-pass-4', 2),
	(33, 'These Clarion Skies', 'Everything seems so clear now.', 'osu-skill-pass-5', 2),
	(34, 'The Demon Within', 'Everything seems so clear now.', 'taiko-skill-pass-5', 2),
	(35, 'It\'s Raining Fruit', 'Everything seems so clear now.', 'fruits-skill-pass-5', 2),
	(36, 'Ever Onwards', 'Everything seems so clear now.', 'mania-skill-pass-5', 2),
	(37, 'Above and Beyond', 'A cut above the rest.', 'osu-skill-pass-6', 2),
	(38, 'Drumbreaker', 'A cut above the rest.', 'taiko-skill-pass-6', 2),
	(39, 'Fruit Ninja', 'A cut above the rest.', 'fruits-skill-pass-6', 2),
	(40, 'Another Surpassed', 'A cut above the rest.', 'mania-skill-pass-6', 2),
	(41, 'Supremacy', 'All marvel before your prowess.', 'osu-skill-pass-7', 2),
	(42, 'The Godfather', 'All marvel before your prowess.', 'taiko-skill-pass-7', 2),
	(43, 'Dreamcatcher', 'All marvel before your prowess.', 'fruits-skill-pass-7', 2),
	(44, 'Extra Credit', 'All marvel before your prowess.', 'mania-skill-pass-7', 2),
	(45, 'Absolution', 'My god, you\'re full of stars!', 'osu-skill-pass-8', 2),
	(46, 'Rhythm Incarnate', 'My god, you\'re full of stars!', 'taiko-skill-pass-8', 2),
	(47, 'Lord of the Catch', 'My god, you\'re full of stars!', 'fruits-skill-pass-8', 2),
	(48, 'Maniac', 'My god, you\'re full of stars!', 'mania-skill-pass-8', 2),
	(49, 'Totality', 'All the notes. Every single one.', 'osu-skill-fc-1', 3),
	(50, 'Keeping Time', 'All the notes. Every single one.', 'taiko-skill-fc-1', 3),
	(51, 'Sweet And Sour', 'All the notes. Every single one.', 'fruits-skill-fc-1', 3),
	(52, 'Keystruck', 'All the notes. Every single one.', 'mania-skill-fc-1', 3),
	(53, 'Business As Usual', 'Two to go, please.', 'osu-skill-fc-2', 3),
	(54, 'To Your Own Beat', 'Two to go, please.', 'taiko-skill-fc-2', 3),
	(55, 'Reaching The Core', 'Two to go, please.', 'fruits-skill-fc-2', 3),
	(56, 'Keying In', 'Two to go, please.', 'mania-skill-fc-2', 3),
	(57, 'Building Steam', 'Hey, this isn\'t so bad.', 'osu-skill-fc-3', 3),
	(58, 'Big Drums', 'Hey, this isn\'t so bad.', 'taiko-skill-fc-3', 3),
	(59, 'Clean Platter', 'Hey, this isn\'t so bad.', 'fruits-skill-fc-3', 3),
	(60, 'Hyperflow', 'Hey, this isn\'t so bad.', 'mania-skill-fc-3', 3),
	(61, 'Moving Forward', 'Bet you feel good about that.', 'osu-skill-fc-4', 3),
	(62, 'Adversity Overcome', 'Bet you feel good about that.', 'taiko-skill-fc-4', 3),
	(63, 'Between The Rain', 'Bet you feel good about that.', 'fruits-skill-fc-4', 3),
	(64, 'Breakthrough', 'Bet you feel good about that.', 'mania-skill-fc-4', 3),
	(65, 'Paradigm Shift', 'Surprisingly difficult.', 'osu-skill-fc-5', 3),
	(66, 'Demonslayer', 'Surprisingly difficult.', 'taiko-skill-fc-5', 3),
	(67, 'Addicted', 'Surprisingly difficult.', 'fruits-skill-fc-5', 3),
	(68, 'Everything Extra', 'Surprisingly difficult.', 'mania-skill-fc-5', 3),
	(69, 'Anguish Quelled', 'Don\'t choke.', 'osu-skill-fc-6', 3),
	(70, 'Rhythm\'s Call', 'Don\'t choke.', 'taiko-skill-fc-6', 3),
	(71, 'Quickening', 'Don\'t choke.', 'fruits-skill-fc-6', 3),
	(72, 'Level Breaker', 'Don\'t choke.', 'mania-skill-fc-6', 3),
	(73, 'Never Give Up', 'Excellence is its own reward.', 'osu-skill-fc-7', 3),
	(74, 'Time Everlasting', 'Excellence is its own reward.', 'taiko-skill-fc-7', 3),
	(75, 'Supersonic', 'Excellence is its own reward.', 'fruits-skill-fc-7', 3),
	(76, 'Step Up', 'Excellence is its own reward.', 'mania-skill-fc-7', 3),
	(77, 'Aberration', 'They said it couldn\'t be done. They were wrong.', 'osu-skill-fc-8', 3),
	(78, 'The Drummer\'s Throne', 'They said it couldn\'t be done. They were wrong.', 'taiko-skill-fc-8', 3),
	(79, 'Dashing Scarlet', 'They said it couldn\'t be done. They were wrong.', 'fruits-skill-fc-8', 3),
	(80, 'Behind The Veil', 'They said it couldn\'t be done. They were wrong.', 'mania-skill-fc-8', 3),
	(81, 'Finality', 'High stakes, no regrets.', 'all-intro-suddendeath', 4),
	(82, 'Perfectionist', 'Accept nothing but the best.', 'all-intro-perfect', 4),
	(83, 'Rock Around The Clock', 'You can\'t stop the rock.', 'all-intro-hardrock', 4),
	(84, 'Time And A Half', 'Having a right ol\' time. One and a half of them, almost.', 'all-intro-doubletime', 4),
	(85, 'Sweet Rave Party', 'Founded in the fine tradition of changing things that were just fine as they were.', 'all-intro-nightcore', 4),
	(86, 'Blindsight', 'I can see just perfectly.', 'all-intro-hidden', 4),
	(87, 'Are You Afraid Of The Dark?', 'Harder than it looks, probably because it\'s hard to look.', 'all-intro-flashlight', 4),
	(88, 'Dial It Right Back', 'Sometimes you just want to take it easy.', 'all-intro-easy', 4),
	(89, 'Risk Averse', 'Safety nets are fun!', 'all-intro-nofail', 4),
	(90, 'Slowboat', 'You got there. Eventually.', 'all-intro-halftime', 4),
	(91, 'Burned Out', 'One cannot always spin to win.', 'all-intro-spunout', 4),
	(92, '5,000 Plays', 'There\'s a lot more where that came from.', 'osu-plays-5000', 5),
	(93, '15,000 Plays', 'Must.. click.. circles..', 'osu-plays-15000', 5),
	(94, '25,000 Plays', 'There\'s no going back.', 'osu-plays-25000', 5),
	(95, '50,000 Plays', 'You\'re here forever.', 'osu-plays-50000', 5),
	(96, 'A meganekko approaches', 'Congratulations, you met Maria!', 'mania-secret-meganekko', 6),
	(97, 'Don\'t let the bunny distract you!', 'The order was indeed, not a rabbit.', 'all-secret-bunny', 6);
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `badges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

INSERT INTO `badges` (`id`, `name`, `icon`) VALUES
	(1, 'Beta tester 1.5', 'fa-gift'),
	(2, 'Developer', 'blue fa-code'),
	(4, 'Community Manager', 'red fa-bolt'),
	(5, 'BAT', 'orange fa-music'),
	(6, 'Restricted', 'fa-ban'),
	(10, 'Beta tester 1.0', 'fa-clock-o'),
	(11, 'Bot', 'fa-cogs'),
	(14, 'Donor', 'fa-money'),
	(15, 'Streamer', 'fa-youtube-play'),
	(18, 'Ban Hammer', 'fa-gavel'),
	(23, 'Ripple Alumni', 'fa-graduation-cap'),
	(24, 'Verified Player', 'blue fa-check-circle'),
	(25, 'RCT #1 - First Place', 'fa-trophy'),
	(26, 'RCT #1 - Second Place', 'fa-trophy'),
	(27, 'RCT #1 - Third Place', 'fa-trophy'),
	(30, 'Chat Moderator', 'purple fa-star'),
	(31, 'Translator', 'fa-globe'),
	(40, 'Garbage banned player', 'fa-trash-o'),
	(50, 'O2JAM', 'fa-qq'),
	(60, 'None', ''),
	(70, 'literally idiot', 'fa-odnoklassniki');
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `bancho_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public_read` tinyint(4) NOT NULL DEFAULT '0',
  `public_write` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `bancho_channels` (`id`, `name`, `description`, `public_read`, `public_write`, `status`) VALUES
	(1, '#osu', 'Main Ripple channel', 1, 1, 1),
	(2, '#announce', 'Announce channel', 1, 0, 1),
	(3, '#admin', 'Admin only channel', 0, 0, 1),
	(5, '#english', 'English speaking channel', 1, 1, 1);
/*!40000 ALTER TABLE `bancho_channels` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `bancho_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_int` int(11) NOT NULL DEFAULT '0',
  `value_string` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `bancho_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
	(1, 'bancho_maintenance', 0, ''),
	(2, 'free_direct', 0, ''),
	(3, 'menu_icon', 0, 'http://y.zxq.co/mpyxts.png|http://ripple.moe'),
	(4, 'login_messages', 0, ''),
	(5, 'restricted_joke', 0, ''),
	(6, 'login_notification', 0, 'Welcome!'),
	(7, 'osu_versions', 0, ''),
	(8, 'osu_md5s', 0, '');
/*!40000 ALTER TABLE `bancho_settings` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `beatmaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_id` int(11) NOT NULL DEFAULT '0',
  `beatmapset_id` int(11) NOT NULL DEFAULT '0',
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `song_name` varchar(128) NOT NULL DEFAULT '',
  `ar` float NOT NULL DEFAULT '0',
  `od` float NOT NULL DEFAULT '0',
  `difficulty_std` float NOT NULL DEFAULT '0',
  `difficulty_taiko` float NOT NULL DEFAULT '0',
  `difficulty_ctb` float NOT NULL DEFAULT '0',
  `difficulty_mania` float NOT NULL DEFAULT '0',
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `hit_length` int(11) NOT NULL DEFAULT '0',
  `bpm` float NOT NULL DEFAULT '0',
  `ranked` int(11) NOT NULL DEFAULT '0',
  `latest_update` int(11) NOT NULL DEFAULT '0',
  `ranked_status_freezed` int(11) NOT NULL DEFAULT '0',
  `playcount` int(11) NOT NULL DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `pp_100` float NOT NULL DEFAULT '0',
  `pp_99` float NOT NULL DEFAULT '0',
  `pp_98` float NOT NULL DEFAULT '0',
  `pp_95` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `beatmap_md5` (`beatmap_md5`),
  KEY `beatmap_id` (`beatmap_id`),
  KEY `beatmapset_id` (`beatmapset_id`),
  KEY `song_name` (`song_name`)
) ENGINE=InnoDB AUTO_INCREMENT=119170 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `cakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `score_id` int(11) NOT NULL,
  `processes` text NOT NULL,
  `detected` text NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `discord_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `discordid` varchar(64) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `eggs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('hash','path','file','title') NOT NULL DEFAULT 'hash',
  `value` varchar(128) NOT NULL,
  `tag` varchar(128) NOT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `is_regex` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `hw_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `unique_id` varchar(32) NOT NULL DEFAULT '',
  `disk_id` varchar(32) NOT NULL DEFAULT '',
  `occurencies` int(11) NOT NULL DEFAULT '0',
  `activated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index1` (`mac`,`unique_id`,`disk_id`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2876 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `identity_tokens` (
  `userid` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `ip_user` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `occurencies` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `Индекс 1` (`userid`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `irc_tokens` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `main_menu_icons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file_id` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_current` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `osin_access` (
  `scope` varchar(255) NOT NULL DEFAULT '',
  `extra` tinyint(4) NOT NULL DEFAULT '0',
  `client` varchar(255) NOT NULL DEFAULT '0',
  `access_token` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `osin_client` (
  `id` int(11) NOT NULL,
  `secret` varchar(255) NOT NULL DEFAULT '',
  `extra` varchar(255) NOT NULL DEFAULT '',
  `redirect_uri` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `osin_client_user` (
  `id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `privileges_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `privileges` int(11) NOT NULL,
  `color` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `privileges_groups` (`id`, `name`, `privileges`, `color`) VALUES
	(1, 'none', 0, ''),
	(2, 'super admin', 7340031, 'success'),
	(3, 'chat mod', 60, 'danger'),
	(4, 'community manager', 80, 'info'),
	(5, 'developer', 100, 'primary'),
	(6, 'BAT', 11, 'warning'),
	(7, 'Qat', 267, 'warning'),
	(8, 'Spectator', 528491, 'danger');
/*!40000 ALTER TABLE `privileges_groups` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `profile_backgrounds` (
  `uid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `value` varchar(256) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `rank_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `blacklisted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `rap_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `text` varchar(128) NOT NULL DEFAULT '',
  `datetime` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `through` varchar(32) NOT NULL DEFAULT '',
  `discord` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1984 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) NOT NULL DEFAULT '0',
  `to_uid` int(11) NOT NULL DEFAULT '0',
  `reason` varchar(1024) NOT NULL DEFAULT '',
  `chatlog` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `play_mode` int(11) NOT NULL DEFAULT '0',
  `mods` int(11) NOT NULL DEFAULT '0',
  `accuracy` float NOT NULL DEFAULT '0',
  `300_count` int(11) NOT NULL DEFAULT '0',
  `100_count` int(11) NOT NULL DEFAULT '0',
  `50_count` int(11) NOT NULL DEFAULT '0',
  `gekis_count` int(11) NOT NULL DEFAULT '0',
  `katus_count` int(11) NOT NULL DEFAULT '0',
  `misses_count` int(11) NOT NULL DEFAULT '0',
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `full_combo` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `completed` int(11) NOT NULL DEFAULT '0',
  `pp` int(11) NOT NULL DEFAULT '0',
  `time` varchar(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `score` (`score`),
  KEY `pp` (`pp`),
  KEY `userid` (`userid`),
  KEY `play_mode` (`play_mode`),
  KEY `completed` (`completed`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=6780 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_int` int(11) NOT NULL DEFAULT '0',
  `value_string` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `system_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
	(1, 'registrations_enabled', 1, ''),
	(2, 'game_maintenance', 0, ''),
	(3, 'website_maintenance', 0, ''),
	(4, 'website_global_alert', 0, ''),
	(5, 'website_home_alert', 0, '');
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `privileges` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL DEFAULT '0',
  `private` int(11) NOT NULL DEFAULT '0',
  `last_updated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username_safe` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flags` int(11) NOT NULL DEFAULT '0',
  `privileges` bigint(20) NOT NULL DEFAULT '0',
  `password_md5` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt` int(11) NOT NULL DEFAULT '0',
  `password_version` int(11) NOT NULL DEFAULT '0',
  `register_datetime` int(11) NOT NULL DEFAULT '0',
  `latest_activity` int(11) NOT NULL DEFAULT '0',
  `aqn` int(11) NOT NULL DEFAULT '0',
  `ban_datetime` int(11) NOT NULL DEFAULT '0',
  `silence_end` int(11) NOT NULL DEFAULT '0',
  `silence_reason` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notes` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `donor_expire` int(11) NOT NULL DEFAULT '0',
  `achievements_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `privileges` (`privileges`)
) ENGINE=InnoDB AUTO_INCREMENT=1458 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы ripple.users: ~457 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `username_safe`, `flags`, `privileges`, `password_md5`, `salt`, `password_version`, `register_datetime`, `latest_activity`, `aqn`, `ban_datetime`, `silence_end`, `silence_reason`, `notes`, `email`, `donor_expire`, `achievements_version`) VALUES
	(999, 'Hiragi', 'Hiragi', 0, 3145727, '', 0, 0, 0, 0, 0, 0, 1552497038, 'aa', '', '', 0, 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `users_achievements` (
  `achievement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `users_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user1` int(11) NOT NULL DEFAULT '0',
  `user2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `users_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username_aka` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_color` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_style` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'XX',
  `play_style` int(11) NOT NULL DEFAULT '0',
  `favourite_mode` int(11) NOT NULL DEFAULT '0',
  `custom_badge_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_badge_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `can_custom_badge` int(11) NOT NULL DEFAULT '0',
  `show_custom_badge` int(11) NOT NULL DEFAULT '0',
  `userpage_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ranked_score_std` int(11) NOT NULL DEFAULT '0',
  `ranked_score_taiko` int(11) NOT NULL DEFAULT '0',
  `ranked_score_ctb` int(11) NOT NULL DEFAULT '0',
  `ranked_score_mania` int(11) NOT NULL DEFAULT '0',
  `avg_accuracy_std` float NOT NULL DEFAULT '0',
  `avg_accuracy_taiko` float NOT NULL DEFAULT '0',
  `avg_accuracy_ctb` float NOT NULL DEFAULT '0',
  `avg_accuracy_mania` float NOT NULL DEFAULT '0',
  `playcount_std` int(11) NOT NULL DEFAULT '0',
  `playcount_taiko` int(11) NOT NULL DEFAULT '0',
  `playcount_ctb` int(11) NOT NULL DEFAULT '0',
  `playcount_mania` int(11) NOT NULL DEFAULT '0',
  `total_score_std` bigint(20) NOT NULL DEFAULT '0',
  `total_score_taiko` bigint(20) NOT NULL DEFAULT '0',
  `total_score_ctb` bigint(20) NOT NULL DEFAULT '0',
  `total_score_mania` bigint(20) NOT NULL DEFAULT '0',
  `pp_std` int(11) NOT NULL DEFAULT '0',
  `pp_taiko` int(11) NOT NULL DEFAULT '0',
  `pp_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_mania` int(11) NOT NULL DEFAULT '0',
  `level_std` int(11) NOT NULL DEFAULT '0',
  `level_taiko` int(11) NOT NULL DEFAULT '0',
  `level_ctb` int(11) NOT NULL DEFAULT '0',
  `level_mania` int(11) NOT NULL DEFAULT '0',
  `total_hits_std` int(11) NOT NULL DEFAULT '0',
  `total_hits_taiko` int(11) NOT NULL DEFAULT '0',
  `total_hits_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_mania` int(11) NOT NULL DEFAULT '0',
  `replays_watched_std` int(11) NOT NULL DEFAULT '0',
  `replays_watched_taiko` int(11) NOT NULL DEFAULT '0',
  `replays_watched_ctb` int(11) NOT NULL DEFAULT '0',
  `replays_watched_mania` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1458 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_stats` (`id`, `username`, `username_aka`, `user_color`, `user_style`, `country`, `play_style`, `favourite_mode`, `custom_badge_icon`, `custom_badge_name`, `can_custom_badge`, `show_custom_badge`, `userpage_content`, `ranked_score_std`, `ranked_score_taiko`, `ranked_score_ctb`, `ranked_score_mania`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_ctb`, `avg_accuracy_mania`, `playcount_std`, `playcount_taiko`, `playcount_ctb`, `playcount_mania`, `total_score_std`, `total_score_taiko`, `total_score_ctb`, `total_score_mania`, `pp_std`, `pp_taiko`, `pp_ctb`, `pp_mania`, `level_std`, `level_taiko`, `level_ctb`, `level_mania`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `replays_watched_std`, `replays_watched_taiko`, `replays_watched_ctb`, `replays_watched_mania`) VALUES
	(999, 'FokaBot', '', '', '', 'XX', 0, 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `users_stats` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `user_badges` (
  `badge` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
