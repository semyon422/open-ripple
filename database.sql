-- --------------------------------------------------------
-- Хост:                         194.87.93.63
-- Версия сервера:               10.0.36-MariaDB-0ubuntu0.16.04.1 - Ubuntu 16.04
-- Операционная система:         debian-linux-gnu
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица open-ripple.2fa_telegram
CREATE TABLE IF NOT EXISTS `2fa_telegram` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `1` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.2fa_telegram: ~0 rows (приблизительно)
DELETE FROM `2fa_telegram`;
/*!40000 ALTER TABLE `2fa_telegram` DISABLE KEYS */;
/*!40000 ALTER TABLE `2fa_telegram` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.2fa_totp
CREATE TABLE IF NOT EXISTS `2fa_totp` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `enabled` int(11) NOT NULL DEFAULT '0',
  `2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.2fa_totp: ~0 rows (приблизительно)
DELETE FROM `2fa_totp`;
/*!40000 ALTER TABLE `2fa_totp` DISABLE KEYS */;
/*!40000 ALTER TABLE `2fa_totp` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.achievements
CREATE TABLE IF NOT EXISTS `achievements` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.achievements: ~0 rows (приблизительно)
DELETE FROM `achievements`;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.badges
CREATE TABLE IF NOT EXISTS `badges` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.badges: ~19 rows (приблизительно)
DELETE FROM `badges`;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
INSERT INTO `badges` (`id`, `name`, `icon`) VALUES
	(4, 'Community Manager', 'red fa-bolt'),
	(2, 'Developer', 'blue fa-code'),
	(30, 'Chat Moderator', 'purple fa-star'),
	(5, 'BAT', 'orange fa-music'),
	(1, 'Beta tester 1.5', 'fa-gift'),
	(0, 'None', ''),
	(6, 'Restricted', 'fa-ban'),
	(10, 'Beta tester 1.0', 'fa-clock-o'),
	(11, 'Bot', 'fa-cogs'),
	(14, 'Donor', 'fa-money'),
	(15, 'Streamer', 'fa-video-camera'),
	(18, 'Ban Hammer', 'fa-gavel'),
	(23, 'Ripple Alumni', 'fa-graduation-cap'),
	(24, 'Verified Player', 'blue fa-check-circle'),
	(25, 'RCT #1 - First Place', 'fa-trophy'),
	(26, 'RCT #1 - Second Place', 'fa-trophy'),
	(27, 'RCT #1 - Third Place', 'fa-trophy'),
	(31, 'Translator', 'fa-globe'),
	(40, 'Garbage banned player', 'fa-trash-o');
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.bancho_channels
CREATE TABLE IF NOT EXISTS `bancho_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public_read` tinyint(4) NOT NULL DEFAULT '0',
  `public_write` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы open-ripple.bancho_channels: ~4 rows (приблизительно)
DELETE FROM `bancho_channels`;
/*!40000 ALTER TABLE `bancho_channels` DISABLE KEYS */;
INSERT INTO `bancho_channels` (`id`, `name`, `description`, `public_read`, `public_write`, `status`) VALUES
	(1, '#osu', 'Main Ripple channel', 1, 1, 1),
	(2, '#announce', 'Announce channel', 1, 0, 1),
	(3, '#admin', 'Admin only channel', 0, 0, 1),
	(5, '#english', 'English speaking channel', 1, 1, 1);
/*!40000 ALTER TABLE `bancho_channels` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.bancho_settings
CREATE TABLE IF NOT EXISTS `bancho_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_int` int(11) NOT NULL DEFAULT '0',
  `value_string` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы open-ripple.bancho_settings: ~8 rows (приблизительно)
DELETE FROM `bancho_settings`;
/*!40000 ALTER TABLE `bancho_settings` DISABLE KEYS */;
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

-- Дамп структуры для таблица open-ripple.beatmaps
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.beatmaps: ~0 rows (приблизительно)
DELETE FROM `beatmaps`;
/*!40000 ALTER TABLE `beatmaps` DISABLE KEYS */;
/*!40000 ALTER TABLE `beatmaps` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.discord_roles
CREATE TABLE IF NOT EXISTS `discord_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `discordid` varchar(64) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.discord_roles: ~0 rows (приблизительно)
DELETE FROM `discord_roles`;
/*!40000 ALTER TABLE `discord_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `discord_roles` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.hw_user
CREATE TABLE IF NOT EXISTS `hw_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `unique_id` varchar(32) NOT NULL DEFAULT '',
  `disk_id` varchar(32) NOT NULL DEFAULT '',
  `occurencies` int(11) NOT NULL DEFAULT '0',
  `activated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Индекс 1` (`mac`,`unique_id`,`disk_id`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.hw_user: ~0 rows (приблизительно)
DELETE FROM `hw_user`;
/*!40000 ALTER TABLE `hw_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `hw_user` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.identity_tokens
CREATE TABLE IF NOT EXISTS `identity_tokens` (
  `userid` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.identity_tokens: ~0 rows (приблизительно)
DELETE FROM `identity_tokens`;
/*!40000 ALTER TABLE `identity_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `identity_tokens` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.ip_user
CREATE TABLE IF NOT EXISTS `ip_user` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `occurencies` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `Индекс 1` (`userid`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.ip_user: ~0 rows (приблизительно)
DELETE FROM `ip_user`;
/*!40000 ALTER TABLE `ip_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_user` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.irc_tokens
CREATE TABLE IF NOT EXISTS `irc_tokens` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.irc_tokens: ~0 rows (приблизительно)
DELETE FROM `irc_tokens`;
/*!40000 ALTER TABLE `irc_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `irc_tokens` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.main_menu_icons
CREATE TABLE IF NOT EXISTS `main_menu_icons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file_id` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_current` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.main_menu_icons: ~0 rows (приблизительно)
DELETE FROM `main_menu_icons`;
/*!40000 ALTER TABLE `main_menu_icons` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_menu_icons` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.osin_access
CREATE TABLE IF NOT EXISTS `osin_access` (
  `scope` varchar(255) NOT NULL DEFAULT '',
  `extra` tinyint(4) NOT NULL DEFAULT '0',
  `client` varchar(255) NOT NULL DEFAULT '0',
  `access_token` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.osin_access: ~0 rows (приблизительно)
DELETE FROM `osin_access`;
/*!40000 ALTER TABLE `osin_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `osin_access` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.osin_client
CREATE TABLE IF NOT EXISTS `osin_client` (
  `id` int(11) NOT NULL,
  `secret` varchar(255) NOT NULL DEFAULT '',
  `extra` varchar(255) NOT NULL DEFAULT '',
  `redirect_uri` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.osin_client: ~0 rows (приблизительно)
DELETE FROM `osin_client`;
/*!40000 ALTER TABLE `osin_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `osin_client` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.osin_client_user
CREATE TABLE IF NOT EXISTS `osin_client_user` (
  `id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.osin_client_user: ~0 rows (приблизительно)
DELETE FROM `osin_client_user`;
/*!40000 ALTER TABLE `osin_client_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `osin_client_user` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.privileges_groups
CREATE TABLE IF NOT EXISTS `privileges_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `privileges` int(11) NOT NULL,
  `color` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы open-ripple.privileges_groups: ~5 rows (приблизительно)
DELETE FROM `privileges_groups`;
/*!40000 ALTER TABLE `privileges_groups` DISABLE KEYS */;
INSERT INTO `privileges_groups` (`id`, `name`, `privileges`, `color`) VALUES
	(1, 'none', 0, ''),
	(2, 'super admin', 7340031, 'info'),
	(3, 'chat mod', 0, ''),
	(4, 'community manager', 0, ''),
	(5, 'developer', 0, '');
/*!40000 ALTER TABLE `privileges_groups` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.profile_backgrounds
CREATE TABLE IF NOT EXISTS `profile_backgrounds` (
  `uid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `value` varchar(256) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.profile_backgrounds: ~0 rows (приблизительно)
DELETE FROM `profile_backgrounds`;
/*!40000 ALTER TABLE `profile_backgrounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_backgrounds` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.rank_requests
CREATE TABLE IF NOT EXISTS `rank_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `blacklisted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.rank_requests: ~0 rows (приблизительно)
DELETE FROM `rank_requests`;
/*!40000 ALTER TABLE `rank_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `rank_requests` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.rap_logs
CREATE TABLE IF NOT EXISTS `rap_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `text` varchar(128) NOT NULL DEFAULT '',
  `datetime` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `through` varchar(32) NOT NULL DEFAULT '',
  `discord` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.rap_logs: ~0 rows (приблизительно)
DELETE FROM `rap_logs`;
/*!40000 ALTER TABLE `rap_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `rap_logs` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.reports
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) NOT NULL DEFAULT '0',
  `to_uid` int(11) NOT NULL DEFAULT '0',
  `reason` varchar(1024) NOT NULL DEFAULT '',
  `chatlog` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.reports: ~0 rows (приблизительно)
DELETE FROM `reports`;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.scores
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.scores: ~0 rows (приблизительно)
DELETE FROM `scores`;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.system_settings
CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_int` int(11) NOT NULL DEFAULT '0',
  `value_string` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы open-ripple.system_settings: ~5 rows (приблизительно)
DELETE FROM `system_settings`;
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
INSERT INTO `system_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
	(1, 'registrations_enabled', 1, ''),
	(2, 'game_maintenance', 0, ''),
	(3, 'website_maintenance', 0, ''),
	(4, 'website_global_alert', 0, ''),
	(5, 'website_home_alert', 0, '');
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.tokens
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `privileges` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL DEFAULT '0',
  `private` int(11) NOT NULL DEFAULT '0',
  `last_updated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.tokens: ~0 rows (приблизительно)
DELETE FROM `tokens`;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.users
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1511 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы open-ripple.users: ~1 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `username_safe`, `flags`, `privileges`, `password_md5`, `salt`, `password_version`, `register_datetime`, `latest_activity`, `aqn`, `ban_datetime`, `silence_end`, `silence_reason`, `notes`, `email`, `donor_expire`) VALUES
	(999, 'FokaBot', 'FokaBot', 0, 7340031, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.users_achievements
CREATE TABLE IF NOT EXISTS `users_achievements` (
  `achievement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.users_achievements: ~0 rows (приблизительно)
DELETE FROM `users_achievements`;
/*!40000 ALTER TABLE `users_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_achievements` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.users_relationships
CREATE TABLE IF NOT EXISTS `users_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user1` int(11) NOT NULL DEFAULT '0',
  `user2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы open-ripple.users_relationships: ~0 rows (приблизительно)
DELETE FROM `users_relationships`;
/*!40000 ALTER TABLE `users_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_relationships` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.users_stats
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
  `userpage_content` mediumtext NOT NULL DEFAULT '',
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
) ENGINE=InnoDB AUTO_INCREMENT=1511 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы open-ripple.users_stats: ~1 rows (приблизительно)
DELETE FROM `users_stats`;
/*!40000 ALTER TABLE `users_stats` DISABLE KEYS */;
INSERT INTO `users_stats` (`id`, `username`, `username_aka`, `user_color`, `user_style`, `country`, `play_style`, `favourite_mode`, `custom_badge_icon`, `custom_badge_name`, `can_custom_badge`, `show_custom_badge`, `userpage_content`, `ranked_score_std`, `ranked_score_taiko`, `ranked_score_ctb`, `ranked_score_mania`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_ctb`, `avg_accuracy_mania`, `playcount_std`, `playcount_taiko`, `playcount_ctb`, `playcount_mania`, `total_score_std`, `total_score_taiko`, `total_score_ctb`, `total_score_mania`, `pp_std`, `pp_taiko`, `pp_ctb`, `pp_mania`, `level_std`, `level_taiko`, `level_ctb`, `level_mania`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `replays_watched_std`, `replays_watched_taiko`, `replays_watched_ctb`, `replays_watched_mania`) VALUES
	(999, 'FokaBot', '', '', '', 'XX', 0, 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `users_stats` ENABLE KEYS */;

-- Дамп структуры для таблица open-ripple.user_badges
CREATE TABLE IF NOT EXISTS `user_badges` (
  `badge` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы open-ripple.user_badges: ~0 rows (приблизительно)
DELETE FROM `user_badges`;
/*!40000 ALTER TABLE `user_badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_badges` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
