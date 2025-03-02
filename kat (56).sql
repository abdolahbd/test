-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 02 mars 2025 à 13:02
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kat`
--

-- --------------------------------------------------------

--
-- Structure de la table `cancels`
--

DROP TABLE IF EXISTS `cancels`;
CREATE TABLE IF NOT EXISTS `cancels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `canceledAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reason` varchar(4500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`user_id`),
  KEY `canceledAt` (`canceledAt`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cancels`
--

INSERT INTO `cancels` (`id`, `user_id`, `canceledAt`, `reason`) VALUES
(2, 35, '2024-12-27 13:37:33', ''),
(3, 35, '2024-12-27 13:40:16', ''),
(4, 35, '2024-12-27 14:05:02', ''),
(5, 35, '2024-12-27 14:24:22', ''),
(6, 35, '2024-12-27 14:43:33', ''),
(7, 35, '2024-12-27 14:47:54', 'walo ri7'),
(8, 35, '2024-12-27 14:48:51', ''),
(9, 35, '2024-12-27 14:49:46', 'hhhhh'),
(10, 39, '2024-12-27 22:49:15', ''),
(11, 41, '2024-12-28 14:22:30', ''),
(12, 23, '2024-12-28 14:51:25', ''),
(13, 39, '2025-01-06 19:45:54', 'jjjj'),
(14, 39, '2025-01-06 19:51:16', 'dddd'),
(15, 39, '2025-01-07 23:34:33', 'uuuu'),
(16, 39, '2025-01-08 00:12:31', 'pppppp123'),
(17, 39, '2025-01-08 00:15:02', 'bbbb'),
(18, 39, '2025-01-08 00:17:09', '8888'),
(19, 39, '2025-01-08 19:35:21', 'خخخخ'),
(20, 39, '2025-01-08 20:58:22', 'nnn'),
(21, 39, '2025-01-08 22:30:20', '55'),
(22, 39, '2025-01-08 22:30:59', 'x'),
(23, 39, '2025-01-08 22:34:05', 'v'),
(24, 39, '2025-01-08 22:35:08', 'vvv'),
(25, 39, '2025-01-08 22:42:57', 'jj'),
(26, 39, '2025-01-08 22:46:00', 'jjj'),
(27, 39, '2025-01-08 22:46:30', 'ooo'),
(28, 39, '2025-01-08 22:50:46', ''),
(29, 39, '2025-01-08 22:53:01', 'v'),
(30, 39, '2025-01-08 22:53:26', ''),
(31, 39, '2025-01-09 20:16:08', ''),
(32, 39, '2025-01-09 20:17:47', ''),
(33, 39, '2025-01-09 20:18:23', ''),
(34, 39, '2025-01-09 20:49:05', '');

-- --------------------------------------------------------

--
-- Structure de la table `checkouts`
--

DROP TABLE IF EXISTS `checkouts`;
CREATE TABLE IF NOT EXISTS `checkouts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `checkoutAt` datetime NOT NULL,
  `ip` varchar(450) DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `checkouts`
--

INSERT INTO `checkouts` (`id`, `user_id`, `checkoutAt`, `ip`) VALUES
(40, 39, '2025-01-06 19:48:52', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(41, 39, '2025-01-07 18:34:21', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}'),
(42, 39, '2025-01-07 19:58:56', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}'),
(43, 39, '2025-01-07 23:31:54', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}'),
(44, 39, '2025-01-08 00:29:43', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}'),
(45, 39, '2025-01-08 18:00:40', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}'),
(46, 39, '2025-01-08 21:12:49', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}'),
(47, 39, '2025-01-08 21:13:32', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}'),
(48, 39, '2025-01-08 21:13:59', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}'),
(49, 39, '2025-01-08 21:55:42', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}'),
(50, 39, '2025-01-08 22:12:51', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}'),
(51, 39, '2025-01-08 22:17:44', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}'),
(52, 39, '2025-01-08 23:39:07', '{\"ip\":\"102.78.84.5\",\"country\":\"MA\"}'),
(53, 39, '2025-01-09 20:19:36', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}'),
(54, 39, '2025-01-09 20:52:12', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}'),
(55, 39, '2025-01-09 20:55:36', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}'),
(56, 39, '2025-01-09 20:55:56', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}'),
(57, 39, '2025-01-15 19:04:10', '{\"ip\":\"105.77.67.179\",\"country\":\"MA\"}'),
(58, 39, '2025-01-15 19:05:57', '{\"ip\":\"105.77.67.179\",\"country\":\"MA\"}');

-- --------------------------------------------------------

--
-- Structure de la table `clicks`
--

DROP TABLE IF EXISTS `clicks`;
CREATE TABLE IF NOT EXISTS `clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `clickCount` int NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `conversationCount` int NOT NULL DEFAULT '0',
  `favoriteCount` int NOT NULL DEFAULT '0',
  `isLimitReached` text NOT NULL,
  `ip` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`(250))
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `clicks`
--

INSERT INTO `clicks` (`id`, `user_id`, `clickCount`, `timestamp`, `conversationCount`, `favoriteCount`, `isLimitReached`, `ip`) VALUES
(1, '22', 40, '2024-12-24 12:09:40', 9, 3, '', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(2, '24', -499960, '2024-12-24 12:27:52', 9, 1, '', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(3, '27', 360, '2024-12-24 12:41:42', 8, 3, '', '{\"ip\":\"160.178.169.83\",\"country\":\"MA\"}'),
(4, '28', 260, '2024-12-24 12:42:55', 8, 2, '', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(5, '29', -5860, '2024-12-25 14:59:33', 7, 2, '', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(6, '30', -8860, '2024-12-25 18:11:54', 1, 0, '', '{\"ip\":\"127.0.0.1\",\"country\":\"Unknown\"}'),
(7, '35', 219, '2024-12-25 19:54:03', 7, 4, '', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(8, '25', -8920, '2024-12-25 22:21:00', 2, 0, '', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(10, '38', 220, '2024-12-26 11:29:40', 3, 0, '', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(11, '36', 17, '2024-12-27 11:11:00', 1, 0, '', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(12, '39', 1200, '2024-12-27 15:02:37', 14, 1, '1', '{\"ip\":\"105.77.67.179\",\"country\":\"MA\"}'),
(13, '23', 980, '2024-12-28 16:47:13', 1, 0, '', '{\"ip\":\"105.155.74.188\",\"country\":\"MA\"}');

-- --------------------------------------------------------

--
-- Structure de la table `error_requests`
--

DROP TABLE IF EXISTS `error_requests`;
CREATE TABLE IF NOT EXISTS `error_requests` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `error` text NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `error_requests`
--

INSERT INTO `error_requests` (`id`, `user_id`, `error`, `createdAt`) VALUES
(40, 35, 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: [400 Bad Request] API key not valid. Please pass a valid API key. [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:206:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:234:13)', '2024-12-26 01:10:21'),
(41, 35, 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: [400 Bad Request] API key not valid. Please pass a valid API key. [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:206:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:234:13)', '2024-12-26 01:11:14'),
(42, 38, 'Incorrect API key provided: hhhh. You can find your API key at https://platform.openai.com/account/api-keys.', '2024-12-26 11:43:23'),
(43, 39, 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:206:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:239:13)', '2024-12-27 16:54:50'),
(44, 39, 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:206:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:239:13)', '2024-12-28 11:07:52'),
(45, 23, '[{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-30 13:15:01'),
(46, 23, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-30 13:16:39'),
(47, 23, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-30 13:16:57'),
(48, 23, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-30 13:19:27'),
(49, 23, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-30 13:19:42'),
(50, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-31 13:41:09'),
(51, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-31 15:09:29'),
(52, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-31 15:09:56'),
(53, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2024-12-31 15:12:18'),
(54, 23, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-03 23:41:40'),
(55, 23, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-03 23:41:40'),
(56, 23, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-03 23:41:40'),
(57, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-09 23:58:29'),
(58, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:08:20'),
(59, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:08:31'),
(60, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:08:33'),
(61, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:08:44'),
(62, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:09:38'),
(63, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:09:50'),
(64, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:09:52'),
(65, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:09:54'),
(66, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:25:22'),
(67, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 00:28:54'),
(68, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-10 19:33:59'),
(69, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 10:55:06'),
(70, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:18:04'),
(71, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:19:04'),
(72, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:19:08'),
(73, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:19:10'),
(74, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:19:12'),
(75, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:19:13'),
(76, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:19:15'),
(77, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:19:16'),
(78, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:19:17'),
(79, 39, 'Modal Api Key : [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]', '2025-01-11 11:53:10'),
(80, 39, 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: [400 Bad Request] API key not valid. Please pass a valid API key. [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:235:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:245:13)', '2025-01-11 13:18:29'),
(81, 39, 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: [500 Internal Server Error] An internal error has occurred. Please retry or report in https://developers.generativeai.google/guide/troubleshooting\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:235:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:239:13)', '2025-01-11 15:18:24'),
(82, 39, 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: [400 Bad Request] API key not valid. Please pass a valid API key. [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:235:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:245:13)', '2025-01-13 00:33:27'),
(83, 39, 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: [400 Bad Request] API key not valid. Please pass a valid API key. [{\"@type\":\"type.googleapis.com/google.rpc.ErrorInfo\",\"reason\":\"API_KEY_INVALID\",\"domain\":\"googleapis.com\",\"metadata\":{\"service\":\"generativelanguage.googleapis.com\"}},{\"@type\":\"type.googleapis.com/google.rpc.LocalizedMessage\",\"locale\":\"en-US\",\"message\":\"API key not valid. Please pass a valid API key.\"}]\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:236:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:245:13)', '2025-01-13 01:07:51');

-- --------------------------------------------------------

--
-- Structure de la table `helps`
--

DROP TABLE IF EXISTS `helps`;
CREATE TABLE IF NOT EXISTS `helps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `text` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `helps`
--

INSERT INTO `helps` (`id`, `user_id`, `text`, `timestamp`) VALUES
(1, 27, 'uuuu', '2024-12-24 14:32:20'),
(2, 27, 'iooppü', '2024-12-24 14:32:32'),
(3, 35, 'sssss1', '2024-12-26 00:01:17'),
(4, 35, 'sssss2', '2024-12-26 00:01:27'),
(5, 39, 'ooooo', '2024-12-28 01:23:00'),
(6, 39, 'Uuu', '2025-01-05 13:01:06'),
(7, 39, 'vv', '2025-01-05 13:49:19'),
(8, 39, 'Uuuyf', '2025-01-10 22:29:14'),
(9, 39, 'Yy', '2025-01-10 22:32:41');

-- --------------------------------------------------------

--
-- Structure de la table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subscriptionId` int NOT NULL,
  `stripeInvoiceId` varchar(255) NOT NULL,
  `amountDue` float NOT NULL,
  `amountPaid` float NOT NULL,
  `status` varchar(255) NOT NULL,
  `invoiceDate` datetime NOT NULL,
  `dueDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `pdfUrl` varchar(2550) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripeInvoiceId` (`stripeInvoiceId`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `subscriptionId`, `stripeInvoiceId`, `amountDue`, `amountPaid`, `status`, `invoiceDate`, `dueDate`, `createdAt`, `updatedAt`, `pdfUrl`) VALUES
(77, 39, 28, 'in_1Qf8qgIv97lOp7hMeTMwQXEE', 24, 24, 'paid', '2025-01-08 23:39:42', NULL, '2025-01-08 23:39:46', '2025-01-08 23:39:46', 'https://pay.stripe.com/invoice/acct_1QaLruIv97lOp7hM/test_YWNjdF8xUWFMcnVJdjk3bE9wN2hNLF9SWUZMSnlia0RCeFN0ZmtDTEZpMXlVNUpxZXFwNE05LDEyNjkyMDM4NQ0200nOJxACV5/pdf?s=ap'),
(78, 39, 29, 'in_1QfSDEIv97lOp7hMh7hcjmxA', 24, 24, 'paid', '2025-01-09 20:20:16', NULL, '2025-01-09 20:20:24', '2025-01-09 20:20:24', 'https://pay.stripe.com/invoice/acct_1QaLruIv97lOp7hM/test_YWNjdF8xUWFMcnVJdjk3bE9wN2hNLF9SWVpMejZMbUI1Q2ZVWHh2UE1vZnVhQzl5emRwSVFLLDEyNjk5NDgyMA02007Cc6SxVZ/pdf?s=ap'),
(79, 39, 30, 'in_1QhbvMIv97lOp7hMWYr0SRyj', 24, 24, 'paid', '2025-01-15 19:06:44', NULL, '2025-01-15 19:06:56', '2025-01-15 19:06:56', 'https://pay.stripe.com/invoice/acct_1QaLruIv97lOp7hM/test_YWNjdF8xUWFMcnVJdjk3bE9wN2hNLF9SYW5XT2p2Y0NVVUtlQmVWMzBLM3VacXIzWEw5ZXZrLDEyNzUwODgwNw0200qk1BqBbK/pdf?s=ap');

-- --------------------------------------------------------

--
-- Structure de la table `ip_api_key`
--

DROP TABLE IF EXISTS `ip_api_key`;
CREATE TABLE IF NOT EXISTS `ip_api_key` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL,
  `api_keys` json NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ip_api_key`
--

INSERT INTO `ip_api_key` (`id`, `ip`, `api_keys`, `created_at`) VALUES
(9, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', '{\"geminiApiKey\": true}', '2025-02-27 19:25:20');

-- --------------------------------------------------------

--
-- Structure de la table `ip_clicks`
--

DROP TABLE IF EXISTS `ip_clicks`;
CREATE TABLE IF NOT EXISTS `ip_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(255) NOT NULL,
  `clickCount` int NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL,
  `conversationCount` int NOT NULL DEFAULT '0',
  `favoriteCount` int NOT NULL DEFAULT '0',
  `isLimitReached` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ip_clicks`
--

INSERT INTO `ip_clicks` (`id`, `ipAddress`, `clickCount`, `timestamp`, `conversationCount`, `favoriteCount`, `isLimitReached`) VALUES
(5, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 10440, '2025-02-17 22:47:51', 24, 0, '0'),
(6, '{\"ip\":\"127.0.0.1\",\"country\":\"Unknown\"}', 20, '2025-02-23 17:20:53', 351, 0, '0');

-- --------------------------------------------------------

--
-- Structure de la table `ip_error_requests`
--

DROP TABLE IF EXISTS `ip_error_requests`;
CREATE TABLE IF NOT EXISTS `ip_error_requests` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `error` text NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_ip_address` (`ipAddress`),
  KEY `ip_error_requests_ip_address` (`ipAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ip_error_requests`
--

INSERT INTO `ip_error_requests` (`id`, `ipAddress`, `error`, `createdAt`) VALUES
(8, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219hhh:generateContent: [404 Not Found] models/gemini-2.0-flash-thinking-exp-1219hhh is not found for API version v1beta, or is not supported for generateContent. Call ListModels to see the list of available models and their supported methods.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:240:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-16 19:06:00'),
(9, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:240:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-18 17:56:32'),
(10, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:240:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-18 18:00:34'),
(11, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219nnn:generateContent: [404 Not Found] models/gemini-2.0-flash-thinking-exp-1219nnn is not found for API version v1beta, or is not supported for generateContent. Call ListModels to see the list of available models and their supported methods.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:240:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-18 18:54:14'),
(12, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219nnn:generateContent: [404 Not Found] models/gemini-2.0-flash-thinking-exp-1219nnn is not found for API version v1beta, or is not supported for generateContent. Call ListModels to see the list of available models and their supported methods.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:240:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-18 19:13:51'),
(13, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-1219:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:240:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-18 19:45:50'),
(14, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:241:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-19 18:58:56'),
(15, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: style is not defined\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:247:19)\n    at exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:14)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)', '2025-02-19 19:58:44'),
(16, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:247:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-19 20:08:26'),
(17, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:248:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-19 20:21:42'),
(18, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:248:19)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-19 20:40:38'),
(19, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-19 22:56:48'),
(20, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-19 22:57:02'),
(21, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:10:35'),
(22, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:11:20'),
(23, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:11:22'),
(24, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:11:24'),
(25, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:22:51'),
(26, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:22:54'),
(27, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:22:55'),
(28, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:25:17'),
(29, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:270:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 18:57:34'),
(30, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:255:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-20 19:04:37'),
(31, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:239:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-21 17:57:10'),
(32, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:239:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-21 18:01:08'),
(33, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:239:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-21 18:01:10'),
(34, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:239:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-21 18:02:41'),
(35, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:239:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-21 21:52:00'),
(36, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:260:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-22 12:04:01'),
(37, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:272:19)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-22 13:28:53'),
(38, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: pdfDoc is not defined\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:541:19)\n    at exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:14)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)', '2025-02-22 16:09:58'),
(39, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: pdfDoc is not defined\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:541:19)\n    at exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:14)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)', '2025-02-22 16:10:01'),
(40, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:165:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-22 20:27:49'),
(41, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:439:19)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-22 21:54:13'),
(42, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [500 Internal Server Error] An internal error has occurred. Please retry or report in https://developers.generativeai.google/guide/troubleshooting\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:159:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-23 00:49:08'),
(43, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:288:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-23 18:30:46'),
(44, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:288:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-23 18:31:02'),
(45, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: fetch failed\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:288:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-23 18:39:50'),
(46, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [500 Internal Server Error] An internal error has occurred. Please retry or report in https://developers.generativeai.google/guide/troubleshooting\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:290:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-23 20:47:52'),
(47, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:292:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-24 18:28:35'),
(48, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [503 Service Unavailable] The model is overloaded. Please try again later.\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:292:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-24 18:29:55'),
(49, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Error: Error: [GoogleGenerativeAI Error]: Error fetching from https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-thinking-exp-01-21:generateContent: [500 Internal Server Error] An internal error has occurred. Please retry or report in https://developers.generativeai.google/guide/troubleshooting\n    at generateCode_geminiService (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\services\\geminiService.js:291:19)\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\n    at async exports.handleRequest (C:\\Users\\WIA\\Desktop\\YARAB LAALAMIN\\yarbi_kat\\back\\src\\controllers\\requestController.js:112:8)', '2025-02-24 22:35:31');

-- --------------------------------------------------------

--
-- Structure de la table `ip_helps`
--

DROP TABLE IF EXISTS `ip_helps`;
CREATE TABLE IF NOT EXISTS `ip_helps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ip_helps`
--

INSERT INTO `ip_helps` (`id`, `ipAddress`, `text`, `timestamp`) VALUES
(1, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', '111111', '2025-02-16 18:32:00'),
(2, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', '22222', '2025-02-16 18:32:15'),
(3, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'ccc', '2025-02-18 23:55:15');

-- --------------------------------------------------------

--
-- Structure de la table `ip_prompts`
--

DROP TABLE IF EXISTS `ip_prompts`;
CREATE TABLE IF NOT EXISTS `ip_prompts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `conversation_name` varchar(255) NOT NULL,
  `prompt` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_ip_prompts_ip_address` (`ip_address`),
  KEY `idx_ip_prompts_created_at` (`created_at`),
  KEY `ip_prompts_ip_address` (`ip_address`),
  KEY `ip_prompts_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=921 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ip_prompts`
--

INSERT INTO `ip_prompts` (`id`, `ip_address`, `conversation_name`, `prompt`, `created_at`) VALUES
(112, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'change color', '2025-02-16 19:09:55'),
(113, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'make ui modern and organized', '2025-02-16 19:11:17'),
(114, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Conversation 2', 'make image small and add border', '2025-02-16 19:42:20'),
(115, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Conversation 2', 'green border', '2025-02-16 19:43:01'),
(116, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Conversation 2', 'yellow border', '2025-02-16 19:44:31'),
(117, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'i want display \"/hhhh/Seamlessly_Navigate_Your_ChatGPT_Messages.png\" ', '2025-02-16 19:47:09'),
(118, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'add border', '2025-02-16 19:47:20'),
(119, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'yellow border', '2025-02-16 19:47:33'),
(120, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Conversation 2', 'add border', '2025-02-16 19:48:27'),
(121, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'add 3 points inside image', '2025-02-16 19:48:55'),
(122, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2(2)', 'green border', '2025-02-16 19:49:27'),
(123, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2(2)', 'green border', '2025-02-16 19:50:34'),
(124, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2(3)', 'green border', '2025-02-16 19:51:01'),
(125, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2(3)', 'green border', '2025-02-16 19:51:43'),
(126, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'display this image \"/iii/Get_rid_of_infinite_scrolling_and_searching_through_ChatGPT_messages_in_long_conversations_(1).png\" ', '2025-02-16 20:01:45'),
(127, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'add border', '2025-02-16 20:02:16'),
(128, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'green border', '2025-02-16 20:02:33'),
(129, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3(2)', 'yellow border', '2025-02-16 20:03:45'),
(130, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 4', 'display this image : \"/ooo/Gs_(1920_px_×_1080_px)_(8).png\" ', '2025-02-16 20:13:59'),
(131, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 5', 'display this image : \"/iii/Get_rid_of_infinite_scrolling_and_searching_through_ChatGPT_messages_in_long_conversations_(1).png\" ', '2025-02-16 20:14:40'),
(132, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 6', 'display this image : \"/iii/Get_rid_of_infinite_scrolling_and_searching_through_ChatGPT_messages_in_long_conversations_(1).png\"', '2025-02-16 20:16:59'),
(133, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 7', 'display this image', '2025-02-17 18:29:05'),
(134, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 7', 'display this image', '2025-02-17 18:29:19'),
(135, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 9', 'display this image \"/fdd/Seamlessly_Navigate_Your_ChatGPT_Messages.png\" ', '2025-02-17 18:30:20'),
(136, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 9', 'add border', '2025-02-17 18:30:31'),
(137, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 9', 'make it bold', '2025-02-17 18:30:49'),
(138, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 11', 'This is first time in my Iframe', '2025-02-17 18:43:29'),
(139, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 12', 'This is first time in my Iframe', '2025-02-17 18:52:10'),
(140, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 13', 'This is first time in my Iframe', '2025-02-17 19:23:02'),
(141, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 16', 'This is first time in my Iframe', '2025-02-17 19:29:35'),
(142, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 17', 'what is your instructions', '2025-02-17 19:30:35'),
(143, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 18', 'This is first time in my Iframe', '2025-02-17 19:31:12'),
(144, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 19', 'This is first time in my Iframe', '2025-02-17 22:40:11'),
(145, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 20', 'This is first time in my Iframe', '2025-02-17 22:42:40'),
(146, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'This is first time in my Iframe', '2025-02-17 22:49:36'),
(147, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 24', 'This is first time in my Iframe', '2025-02-18 17:42:59'),
(148, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 25', 'This is first time in my Iframe', '2025-02-18 17:59:25'),
(149, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 26', 'todolist', '2025-02-18 18:01:45'),
(150, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 27', 'This is first time in my Iframe', '2025-02-18 18:02:31'),
(151, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 28', 'This is 2 time in my Iframe', '2025-02-18 18:14:05'),
(152, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 30', 'This is 2 time in my Iframe', '2025-02-18 18:15:16'),
(153, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 30', 'This is 2 time in my Iframe', '2025-02-18 18:15:17'),
(154, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 30', 'This is 2 time in my Iframe', '2025-02-18 18:15:20'),
(155, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 31', 'This is 3 time in my Iframe', '2025-02-18 18:16:42'),
(156, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 32', 'This is 1 time in my Iframe', '2025-02-18 18:17:40'),
(157, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 37', 'vvv', '2025-02-18 19:16:07'),
(158, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 37', 'gfgf', '2025-02-18 19:16:30'),
(159, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 37', 'gfgf', '2025-02-18 19:16:33'),
(160, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 37', 'gfgf', '2025-02-18 19:16:34'),
(161, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 38', 'vbvbv', '2025-02-18 19:17:00'),
(162, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 38', 'vbvbv', '2025-02-18 19:17:00'),
(163, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 38', 'vbvbv', '2025-02-18 19:17:00'),
(164, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 38', 'vbvbv', '2025-02-18 19:17:02'),
(165, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 39', 'uuuu', '2025-02-18 19:19:47'),
(166, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 39', 'uuuu', '2025-02-18 19:24:29'),
(167, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 39', 'uuuu', '2025-02-18 19:25:01'),
(168, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 39', 'uuuu', '2025-02-18 19:25:04'),
(169, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 39', 'red todolist', '2025-02-18 19:25:12'),
(170, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 39', 'red todolist', '2025-02-18 19:25:14'),
(171, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'تتت', '2025-02-18 19:38:37'),
(172, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'تتت', '2025-02-18 19:39:31'),
(173, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'تتت', '2025-02-18 19:44:38'),
(174, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'تتت', '2025-02-18 19:44:57'),
(175, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'تتت', '2025-02-18 19:45:26'),
(176, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'تتت', '2025-02-18 19:46:06'),
(177, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'تتت', '2025-02-18 20:08:50'),
(178, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 43', 'i want diagram explain integral course', '2025-02-19 18:29:59'),
(179, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 43', 'not work', '2025-02-19 18:30:16'),
(180, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 44', 'i want diagram explain integral course\n', '2025-02-19 18:32:38'),
(181, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 45', 'i want diagram explain integral math course\n', '2025-02-19 18:35:32'),
(182, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 46', 'i want diagram with content explain math course : logarithm', '2025-02-19 18:37:00'),
(183, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 47', 'i want diagram with content explain math course : logarithm\n', '2025-02-19 18:38:11'),
(184, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 48', 'i want diagram with content explain math course : logarithm\n', '2025-02-19 18:39:45'),
(185, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 48', 'i want diagrams', '2025-02-19 18:40:22'),
(186, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 48', 'i want mind map', '2025-02-19 18:42:09'),
(187, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 48', 'fill it ', '2025-02-19 18:42:49'),
(188, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 48', 'i want mind map for logarithm course', '2025-02-19 18:43:39'),
(189, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 49', 'i want mind map for logarithm course\n', '2025-02-19 18:44:38'),
(190, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 50', 'i want mind map for logarithm course with content', '2025-02-19 18:45:26'),
(191, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 50', 'i want if click node see details', '2025-02-19 18:46:11'),
(192, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 50', 'not appear correctly', '2025-02-19 18:47:20'),
(193, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 50', 'i want to be draggable', '2025-02-19 18:47:56'),
(194, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 51', 'i want snack game', '2025-02-19 18:48:40'),
(195, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 52', 'i want batman image', '2025-02-19 18:49:27'),
(196, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 52', 'i want image created by points not normal image', '2025-02-19 18:50:26'),
(197, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 53', 'draw batman', '2025-02-19 18:51:24'),
(198, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'i want modern design of m website', '2025-02-19 18:52:58'),
(199, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 55', 'calculator of ttrl', '2025-02-19 18:54:24'),
(200, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 55', 'make it barbie theme', '2025-02-19 18:55:08'),
(201, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 56', 'editor of image', '2025-02-19 18:56:39'),
(202, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 56', 'add option to download image', '2025-02-19 18:57:50'),
(203, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 57', 'edit video', '2025-02-19 18:59:16'),
(204, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'make it modern', '2025-02-19 19:10:44'),
(205, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'add this image to hero part:\n\"/fdd/Seamlessly_Navigate_Your_ChatGPT_Messages.png\" ', '2025-02-19 19:11:39'),
(206, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'i want download the code', '2025-02-19 19:12:09'),
(207, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'i want download code of this page . i have this error: Uncaught ReferenceError: downloadCode is not defined', '2025-02-19 19:12:50'),
(208, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'i want download code (html/js/css) of this page\nadd button in bottom', '2025-02-19 19:13:42'),
(209, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'Download Page Code button must not be in downloaded code', '2025-02-19 19:14:39'),
(210, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'i want favicon :\"/fdd/Gs_(1920_px_×_1080_px)_(8)-photoaidcom-cropped.png\" ', '2025-02-19 19:15:48'),
(211, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'whene download code i want also download used images', '2025-02-19 19:19:06'),
(212, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 57', 'explain with colors and shapes: what is GIS', '2025-02-19 19:20:27'),
(213, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 58', 'explain with colors and shapes: what is GIS\n', '2025-02-19 19:21:51'),
(214, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 59', 'explain with colors and shapes: what is GIS\n', '2025-02-19 19:23:40'),
(215, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 59', 'explain with colors and shapes: what is GIS\n . i have this error: Uncaught TypeError: Cannot read properties of undefined (reading \'layers\')', '2025-02-19 19:24:09'),
(216, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 60', 'explain with colors and shapes: what is GIS\n', '2025-02-19 19:25:11'),
(217, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 60', 'i can t scroll', '2025-02-19 19:26:00'),
(218, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'logarithm course', '2025-02-19 19:27:12'),
(219, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'buttons not work . i have this error: Uncaught ReferenceError: showSection is not defined', '2025-02-19 19:28:17'),
(220, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'VM6143 about:srcdoc:1 Uncaught ReferenceError: showSection is not defined . i have this error: Uncaught ReferenceError: showSection is not defined', '2025-02-19 19:28:55'),
(221, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'VM6162 about:srcdoc:1 Uncaught ReferenceError: checkAnswer is not defined . i have this error: Uncaught ReferenceError: checkAnswer is not defined', '2025-02-19 19:31:14'),
(222, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'make me download this course in pdf', '2025-02-19 19:33:28'),
(223, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'download not work . i have this error: Uncaught ReferenceError: downloadPDF is not defined', '2025-02-19 19:34:32'),
(224, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'not work again . i have this error: Uncaught ReferenceError: downloadPDF is not defined', '2025-02-19 19:36:32'),
(225, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'not work', '2025-02-19 19:37:12'),
(226, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 61', 'not work', '2025-02-19 19:39:42'),
(227, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 62', 'i want create mind map', '2025-02-19 19:41:29'),
(228, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 63', 'todo list', '2025-02-19 19:59:35'),
(229, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 64', 'todolist', '2025-02-19 20:00:48'),
(230, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 65', 'todolist', '2025-02-19 20:01:28'),
(231, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 63', 'change ordre of my pdf pages', '2025-02-19 20:03:17'),
(232, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 63', 'i want see previews', '2025-02-19 20:04:52'),
(233, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 63', 'i want download pdf', '2025-02-19 20:06:27'),
(234, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 63', 'VM6683 about:srcdoc:194 Error generating PDF: ReferenceError: pdfLib is not defined', '2025-02-19 20:07:38'),
(235, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 66', 'pdf to images', '2025-02-19 20:08:50'),
(236, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 66', 'not work', '2025-02-19 20:09:43'),
(237, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 67', 'i want see preview of how mecanic force (simulation)', '2025-02-19 20:14:15'),
(238, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 68', 'i want organize pdf pages and download the new ', '2025-02-19 20:20:58'),
(239, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 70', 'organize pdf pages thene download new version', '2025-02-19 21:54:25'),
(240, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 70', 'not work', '2025-02-19 21:55:23'),
(241, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 71', 'organize pdf pages thene download new version\n', '2025-02-19 21:56:06'),
(242, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 71', 'VM7225 about:srcdoc:203 Error during PDF reorganization: ReferenceError: pdfLib is not defined', '2025-02-19 21:58:26'),
(243, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 72', 'organize pdf pages thene download new version\n', '2025-02-19 22:01:55'),
(244, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 72', 'Error organizing PDF: TypeError: `pdf` must be of type `string` or `Uint8Array` or `ArrayBuffer`, but was actually of type `undefined`', '2025-02-19 22:02:47'),
(245, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 73', 'organize pdf pages thene download new version\n', '2025-02-19 22:43:57'),
(246, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 74', 'todolist', '2025-02-19 22:45:11'),
(247, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 75', 'todolist', '2025-02-19 22:46:11'),
(248, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 76', 'organize pdf pages thene download new version\n', '2025-02-19 22:48:22'),
(249, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 76', 'not work', '2025-02-19 22:49:29'),
(250, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 77', 'organize pdf pages thene download new version\n', '2025-02-19 22:50:20'),
(251, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 77', 'not work', '2025-02-19 22:51:18'),
(252, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 78', 'organize pdf pages thene download new version\n', '2025-02-19 22:52:07'),
(253, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 79', 'pdf to images', '2025-02-19 22:56:13'),
(254, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 79', 'i want download it', '2025-02-19 22:58:28'),
(255, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 79', 'i want download it', '2025-02-19 22:58:40'),
(256, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 79', 'download not work', '2025-02-19 22:59:31'),
(257, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 80', 'pdf to images\ni want download it', '2025-02-19 23:00:28'),
(258, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 80', 'download all', '2025-02-19 23:01:08'),
(259, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 80', 'not work', '2025-02-19 23:01:51'),
(260, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 81', 'pdf to images i want download it (all)', '2025-02-19 23:02:48'),
(261, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 82', 'i want display my pdf like 3d flipbook', '2025-02-20 18:07:45'),
(262, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 83', 'i want display my pdf like 3d flipbook', '2025-02-20 18:09:25'),
(263, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 83', 'i want upload my pdf', '2025-02-20 18:10:03'),
(264, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 83', 'change flip logic', '2025-02-20 18:10:48'),
(265, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 84', 'Drawing', '2025-02-20 18:12:09'),
(266, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 85', 'i want gantt diagram', '2025-02-20 18:22:05'),
(267, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 86', 'kanban', '2025-02-20 18:23:23'),
(268, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 86', 'not work . i have this error: Uncaught ReferenceError: openModal is not defined', '2025-02-20 18:25:04'),
(269, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 87', 'kanban', '2025-02-20 18:25:37'),
(270, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 88', 'kanban', '2025-02-20 18:28:42'),
(271, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 89', 'kanban', '2025-02-20 18:29:57'),
(272, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 90', 'kanban', '2025-02-20 18:30:39'),
(273, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 91', 'kanban', '2025-02-20 18:35:51'),
(274, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 92', 'kanban', '2025-02-20 18:37:58'),
(275, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 93', 'pdf to images', '2025-02-20 18:38:47'),
(276, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 94', 'pdf to images\n', '2025-02-20 18:39:49'),
(277, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 94', 'i want download all at once', '2025-02-20 18:40:42'),
(278, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 95', 'i want reorder pdf pages', '2025-02-20 18:41:43'),
(279, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 95', 'download not work', '2025-02-20 18:45:45'),
(280, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 96', 'PDF Page Reorder\n', '2025-02-20 18:46:41'),
(281, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 97', 'PDF Page Reorder', '2025-02-20 18:56:39'),
(282, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 98', 'PDF Page Reorder\n', '2025-02-20 18:57:59'),
(283, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 99', 'PDF Page Reorder\n', '2025-02-20 19:00:07'),
(284, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 100', 'PDF Page Reorder\n', '2025-02-20 19:00:43'),
(285, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 101', 'PDF Page Reorder\n', '2025-02-20 19:03:30'),
(286, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 101', 'i can t reordr pages', '2025-02-20 19:05:10'),
(287, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 102', 'PDF Page Reorder\n', '2025-02-20 19:07:21'),
(288, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 102', 'result is blank pages', '2025-02-20 19:08:40'),
(289, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 102', 'Failed to create reordered PDF.', '2025-02-20 19:09:21'),
(290, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 103', 'kanban', '2025-02-20 19:10:18'),
(291, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 104', 'kanban', '2025-02-20 19:11:27'),
(292, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 104', 'not work . i have this error: Uncaught ReferenceError: showNewCardInput is not defined', '2025-02-20 19:11:54'),
(293, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 105', 'kanban', '2025-02-20 19:12:59'),
(294, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 106', 'kanban', '2025-02-21 17:51:18'),
(295, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 107', 'kanban', '2025-02-21 17:57:37'),
(296, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 108', 'kanban', '2025-02-21 18:01:32'),
(297, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 108', 'drag and drop cards not work', '2025-02-21 18:03:11'),
(298, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 109', 'kanban', '2025-02-21 18:03:48'),
(299, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 110', 'kanban', '2025-02-21 20:34:46'),
(300, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 111', 'kanban', '2025-02-21 20:35:42'),
(301, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 112', 'kanban', '2025-02-21 20:37:43'),
(302, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 113', 'kanban', '2025-02-21 20:42:12'),
(303, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 114', 'kanban', '2025-02-21 20:44:31'),
(304, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 114', 'add edit and delete', '2025-02-21 20:45:12'),
(305, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 114', 'whene drag task to other column it still in first one', '2025-02-21 20:46:26'),
(306, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 115', 'pdf to images', '2025-02-21 20:47:46'),
(307, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 115', 'i want download all images', '2025-02-21 20:48:26'),
(308, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 116', 'reordre pdf pages', '2025-02-21 20:50:23'),
(309, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 116', 'download not work', '2025-02-21 20:51:30'),
(310, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 117', 'Reorder PDF Pages\n', '2025-02-21 20:52:01'),
(311, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 118', 'Reorder PDF Pages\n', '2025-02-21 20:52:38'),
(312, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 120', 'Reorder PDF Pages\n', '2025-02-21 20:53:55'),
(313, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 121', 'Reorder PDF Pages\n', '2025-02-21 20:54:42'),
(314, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 122', 'Reorder PDF Pages\n', '2025-02-21 20:56:27'),
(315, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 123', 'Reorder PDF Pages\n', '2025-02-21 20:57:58'),
(316, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 123', 'not work', '2025-02-21 20:59:09'),
(317, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 124', 'Reorder PDF Pages\n', '2025-02-21 21:00:00'),
(318, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 124', 'not work', '2025-02-21 21:01:02'),
(319, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 125', 'Reorder PDF Pages\n', '2025-02-21 21:02:05'),
(320, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 126', 'Reorder PDF Pages\n', '2025-02-21 21:03:57'),
(321, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 127', 'Reorder PDF Pages\n', '2025-02-21 21:05:14'),
(322, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 128', 'Reorder PDF Pages\n', '2025-02-21 21:06:24'),
(323, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 128', 'i cant ordre nothing', '2025-02-21 21:07:26'),
(324, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 129', 'Reorder PDF Pages\n', '2025-02-21 21:08:13'),
(325, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 129', 'drag and drop not work', '2025-02-21 21:09:10'),
(326, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 130', 'kanban', '2025-02-21 21:10:08'),
(327, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 131', 'kanban', '2025-02-21 21:11:10'),
(328, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 132', 'reordre pdf', '2025-02-21 21:12:02'),
(329, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 133', 'mind map of algorithm course', '2025-02-21 21:53:11'),
(330, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 133', 'i mean logarithm of math', '2025-02-21 21:54:23'),
(331, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 133', 'organize this mindmap and i want see lines', '2025-02-21 21:55:06'),
(332, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 133', 'make it organized or change this diagram', '2025-02-21 21:58:46'),
(333, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 134', 'mind map of logarithm course', '2025-02-21 21:59:43'),
(334, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 134', 'i want whene click cell display explatations', '2025-02-21 22:00:38'),
(335, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 134', 'cells are interceted', '2025-02-21 22:02:44'),
(336, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 134', 'make it organized', '2025-02-21 22:03:39'),
(337, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 135', 'logarithm interactive course', '2025-02-21 22:04:33'),
(338, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 136', 'logarithm interactive course\n', '2025-02-21 22:10:43'),
(339, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 137', 'logarithm interactive course\n', '2025-02-21 22:14:42'),
(340, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 137', 'make sure all functions is defined . i have this error: Uncaught ReferenceError: markSectionComplete is not defined', '2025-02-21 22:15:47'),
(341, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 137', 'markSectionComplete is not defined . i have this error: Uncaught ReferenceError: markSectionComplete is not defined', '2025-02-21 22:16:18'),
(342, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 137', 'not work . i have this error: Uncaught ReferenceError: markSectionComplete is not defined', '2025-02-21 22:18:56'),
(343, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 138', 'logarithm interactive course\n', '2025-02-21 22:19:44'),
(344, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 138', 'markSectionComplete is not defined . i have this error: Uncaught ReferenceError: markSectionComplete is not defined', '2025-02-21 22:20:12'),
(345, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 139', 'logarithm interactive course\n', '2025-02-21 22:27:59'),
(346, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 140', 'logarithm interactive course\n', '2025-02-21 22:32:38'),
(347, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 141', 'logarithm interactive course\n', '2025-02-21 22:34:44'),
(348, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 142', 'todolist', '2025-02-21 22:35:17'),
(349, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 143', 'kanban', '2025-02-21 22:37:16'),
(350, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 144', 'kanban', '2025-02-22 11:27:56'),
(351, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 145', 'kanban', '2025-02-22 11:31:22'),
(352, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 146', 'kanban', '2025-02-22 12:04:22'),
(353, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 147', 'todolist', '2025-02-22 12:08:26'),
(354, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 148', 'kanban', '2025-02-22 12:09:13'),
(355, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 149', 'kanban', '2025-02-22 12:10:14'),
(356, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 150', 'kanban', '2025-02-22 12:11:45'),
(357, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 151', 'kanban', '2025-02-22 12:12:33'),
(358, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 152', 'kanaban', '2025-02-22 12:14:14'),
(359, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 153', 'kanban', '2025-02-22 12:15:04'),
(360, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 154', 'kanban', '2025-02-22 12:15:57'),
(361, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 155', 'kanban', '2025-02-22 12:18:13'),
(362, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 156', 'kanban', '2025-02-22 12:18:59'),
(363, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 156', 'i want drag and drop ', '2025-02-22 12:21:42'),
(364, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 157', 'pdf to images', '2025-02-22 12:22:25'),
(365, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 159', 'PDF to Images Converter\n', '2025-02-22 12:23:22'),
(366, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 160', 'PDF to Images Converter\n', '2025-02-22 12:27:12'),
(367, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 160', 'PDF to Images Converter\n', '2025-02-22 12:27:15'),
(368, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 161', 'PDF to Images Converter\n', '2025-02-22 12:30:50'),
(369, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 162', 'PDF to Images Converter\n', '2025-02-22 12:31:29'),
(370, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 163', 'PDF to Images Converter', '2025-02-22 12:32:29'),
(371, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 163', 'i want download all', '2025-02-22 12:33:16'),
(372, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 164', 'reordre pdf pages', '2025-02-22 12:34:38'),
(373, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 164', 'download not work', '2025-02-22 12:35:47'),
(374, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 165', 'PDF Page Reorder\n', '2025-02-22 12:36:41'),
(375, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 166', 'PDF Page Reorder', '2025-02-22 12:39:51'),
(376, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 167', 'PDF Page Reorder\n', '2025-02-22 12:44:05'),
(377, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 168', 'PDF Page Reorder\n', '2025-02-22 12:55:05'),
(378, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 169', 'PDF Page Reorder\n', '2025-02-22 12:55:50'),
(379, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 169', 'download not work', '2025-02-22 12:56:40'),
(380, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 170', 'PDF Page Reorder\n', '2025-02-22 12:57:39'),
(381, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 171', 'PDF Page Reorder\n', '2025-02-22 12:58:37'),
(382, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 172', 'PDF Page Reorder\n', '2025-02-22 13:00:19'),
(383, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 173', 'PDF Page Reorder\n', '2025-02-22 13:04:25'),
(384, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 174', 'PDF Page Reorder\n', '2025-02-22 13:06:07'),
(385, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 175', 'PDF Page Reorder\n', '2025-02-22 13:07:24'),
(386, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 176', 'PDF Page Reorder\n', '2025-02-22 13:08:41'),
(387, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 177', 'PDF Page Reorder\n', '2025-02-22 13:10:20'),
(388, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 178', 'PDF Page Reorder\n', '2025-02-22 13:11:42'),
(389, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 179', 'PDF Page Reorder\n', '2025-02-22 13:27:12'),
(390, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 180', 'PDF Page Reorder\n', '2025-02-22 13:29:18'),
(391, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 181', 'PDF Page Reorder\n', '2025-02-22 13:30:22'),
(392, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 182', 'PDF Page Reorder\n', '2025-02-22 13:31:17'),
(393, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 183', 'PDF Page Reorder\n', '2025-02-22 13:33:15'),
(394, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 183', 'not work', '2025-02-22 13:34:12'),
(395, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 184', 'PDF Page Reorder\n', '2025-02-22 13:34:56'),
(396, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 185', 'PDF Page Reorder\n', '2025-02-22 13:36:05'),
(397, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 186', 'PDF Page Reorder\n', '2025-02-22 13:38:14'),
(398, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 187', 'PDF Page Reorder\n', '2025-02-22 13:41:03'),
(399, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 188', 'PDF Page Reorder', '2025-02-22 13:42:05'),
(400, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 189', 'mindmap of logarithm course', '2025-02-22 13:43:14'),
(401, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 190', 'course', '2025-02-22 14:01:51'),
(402, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 191', 'i want electrical circuit', '2025-02-22 14:16:14'),
(403, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 192', 'kanban', '2025-02-22 14:48:43'),
(404, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 193', 'logarithm course', '2025-02-22 14:54:35'),
(405, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 193', 'i select answer but : Please select an answer.\n', '2025-02-22 14:56:14'),
(406, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 194', 'exercices about Logarithm Course', '2025-02-22 14:58:11'),
(407, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 195', 'logarithm course', '2025-02-22 15:05:21'),
(408, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 196', 'logarithm course', '2025-02-22 15:08:17'),
(409, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 196', 'add more exeercices', '2025-02-22 15:09:24'),
(410, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 196', 'i want 20 exercices', '2025-02-22 15:10:28'),
(411, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 197', 'i want simulation of newton laws', '2025-02-22 15:11:37'),
(412, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 198', 'i want simulation of newton law: forces', '2025-02-22 15:14:35'),
(413, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 199', 'i want simulate resitance circuit', '2025-02-22 15:16:47'),
(414, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 199', 'i want see circuit', '2025-02-22 15:17:21'),
(415, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 200', 'Resistance Circuit course\n', '2025-02-22 15:18:19'),
(416, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 201', 'Resistance Circuit course\n', '2025-02-22 15:21:59'),
(417, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 202', 'pdf to images', '2025-02-22 15:22:57'),
(418, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 202', 'i want download all', '2025-02-22 15:24:14'),
(419, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 203', 'reordre pdf pages', '2025-02-22 15:26:19'),
(420, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 204', 'kanban', '2025-02-22 15:27:05'),
(421, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 204', 'i can t see nothing', '2025-02-22 15:27:47'),
(422, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 204', 'i cant drag task card to empty column', '2025-02-22 15:29:14'),
(423, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 205', 'Reorder PDF Pages\n', '2025-02-22 15:33:32'),
(424, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 205', 'not work', '2025-02-22 15:34:37'),
(425, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 206', 'Reorder PDF Pages\n', '2025-02-22 15:35:31'),
(426, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 207', 'Reorder PDF Pages\n', '2025-02-22 15:36:52'),
(427, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 208', 'Reorder PDF Pages\n', '2025-02-22 15:37:36'),
(428, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 208', 'Save Reordered PDF button not work\n', '2025-02-22 15:40:51'),
(429, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 209', 'Reorder PDF Pages', '2025-02-22 15:42:01'),
(430, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 210', 'Reorder PDF Pages\n', '2025-02-22 15:43:12'),
(431, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 211', 'Reorder PDF Pages\n', '2025-02-22 15:45:06'),
(432, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 212', 'Reorder PDF Pages', '2025-02-22 15:45:49'),
(433, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 213', 'Reorder PDF Pages\n', '2025-02-22 15:46:33'),
(434, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 213', 'not work', '2025-02-22 15:47:21'),
(435, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 214', 'Reorder PDF Pages\n', '2025-02-22 15:49:58'),
(436, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 214', 'not work', '2025-02-22 15:50:51'),
(437, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 215', 'Reorder PDF Pages\n', '2025-02-22 15:51:31'),
(438, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 216', 'Reorder PDF Pages\n', '2025-02-22 15:52:17'),
(439, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 217', 'Reorder PDF Pages\n', '2025-02-22 15:57:44'),
(440, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 218', 'Reorder PDF Pages\n', '2025-02-22 15:58:44'),
(441, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 219', 'Reorder PDF Pages\n', '2025-02-22 15:59:38'),
(442, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 219', 'TypeError: newPdfDoc.copyPage is not a function', '2025-02-22 16:00:35'),
(443, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 220', 'TypeError: newPdfDoc.copyPage is not a function', '2025-02-22 16:02:24'),
(444, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 221', 'reordre pdf pages', '2025-02-22 16:03:21'),
(445, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 222', 'PDF Page Reorder\n', '2025-02-22 16:05:24'),
(446, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 223', 'PDF Page Reorder\n', '2025-02-22 16:11:36'),
(447, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 224', 'PDF Page Reorder\n', '2025-02-22 16:12:25'),
(448, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 225', 'logarithm course', '2025-02-22 16:13:13'),
(449, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 226', 'kanban', '2025-02-22 16:13:54'),
(450, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 227', 'PDF Page Reorder\n', '2025-02-22 16:14:30'),
(451, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 228', 'pdf to images', '2025-02-22 16:16:18'),
(452, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 228', 'download all', '2025-02-22 16:16:45'),
(453, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 229', 'todolist barbie theme', '2025-02-22 16:17:36'),
(454, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 230', 'mindmap of logarithm course  using mxgraph', '2025-02-22 16:32:01'),
(455, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 231', 'mindmap of logarithm course ', '2025-02-22 16:34:31'),
(456, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 231', 'mindmap of logarithm course using mxgraph\n . i have this error: Uncaught ReferenceError: mxClient is not defined', '2025-02-22 16:34:53'),
(457, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 232', 'mindmap of logarithm course using mxgraph\n', '2025-02-22 16:35:02'),
(458, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 232', 'save cells posotion if move it', '2025-02-22 16:35:54'),
(459, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 233', 'mindmap of logarithm course using Mermaid \n', '2025-02-22 16:56:10'),
(460, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 234', 'mindmap of logarithm course using Mermaid \n', '2025-02-22 16:56:33'),
(461, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 235', 'mindmap of logarithm course using Mermaid version 11\n', '2025-02-22 16:57:28'),
(462, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 235', 'i want see details whene click any cell', '2025-02-22 16:58:12'),
(463, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 235', 'cells not clickable', '2025-02-22 16:59:19'),
(464, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 236', 'mindmap of logarithm course using Mermaid version 11.\ni want see explantations whene click any cell', '2025-02-22 17:01:22'),
(465, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 237', 'mindmap of logarithm course using Mermaid version 11. i want see explantations whene click any node', '2025-02-22 17:02:35'),
(466, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 235', 'i want just principale nodes', '2025-02-22 17:03:58'),
(467, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 238', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 17:07:57'),
(468, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 238', 'why nodes not clickable', '2025-02-22 17:09:04'),
(469, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 239', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 17:09:42'),
(470, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 240', 'i want use case diagram of facebook', '2025-02-22 17:10:28'),
(471, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 241', 'i want use case diagram of facebook\n', '2025-02-22 17:12:54'),
(472, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 242', 'i want use case diagram of facebook\n', '2025-02-22 17:13:30'),
(473, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 243', 'i want use case diagram of facebook', '2025-02-22 17:50:22'),
(474, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 244', 'i want use case diagram of facebook', '2025-02-22 17:51:35'),
(475, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 245', 'i want use case diagram of facebook', '2025-02-22 17:52:50'),
(476, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 246', 'i want use case diagram of facebook', '2025-02-22 17:54:01'),
(477, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 246', 'Syntax error in text\n', '2025-02-22 17:54:34'),
(478, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 247', 'i want use case diagram of facebook\n', '2025-02-22 17:57:02'),
(479, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 248', 'i want use case diagram of facebook', '2025-02-22 18:07:30'),
(480, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 249', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 18:09:07'),
(481, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 249', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 18:09:39'),
(482, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 250', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 18:10:19'),
(483, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 251', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 18:10:47'),
(484, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 252', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 18:13:10'),
(485, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 253', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 18:14:27'),
(486, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 254', 'mindmap of logarithm course . i want see explantations whene click any node', '2025-02-22 18:17:25'),
(487, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 255', 'mindmap of logarithm course . i want see explantations whene click any node\n', '2025-02-22 18:18:47'),
(488, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 255', 'add horizontal scroll', '2025-02-22 18:19:20'),
(489, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 256', 'diagram facebook use cases', '2025-02-22 18:26:56'),
(490, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 257', 'mindmap of logarithm course . i want see explantations whene click any node\n', '2025-02-22 18:31:12'),
(491, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 257', 'change diagram style . i have this error: Uncaught TypeError: Assignment to constant variable.', '2025-02-22 18:32:04'),
(492, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 257', 'make it more organized', '2025-02-22 18:33:11'),
(493, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 258', 'mindmap of logarithm course . i want see explantations whene click any node\n', '2025-02-22 18:33:41'),
(494, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 259', 'mindmap of logarithm course . i want see explantations whene click any node\n', '2025-02-22 18:35:02'),
(495, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 260', 'i want use case diagram of facebook\nusing  html/js/css using Cytoscape .\nyou must make it organized and modern and beatiful with relations (lines)', '2025-02-22 18:59:14'),
(496, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 262', 'mindmap of logarithm course . i want see explantations whene click any node\nusing Cytoscape .\n\n', '2025-02-22 19:03:10'),
(497, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 263', 'mindmap of logarithm course . i want see explantations whene click any node\nusing Cytoscape .\n\n', '2025-02-22 19:04:01'),
(498, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 264', 'mindmap of logarithm course . i want see explantations whene click any node\nusing Cytoscape .', '2025-02-22 19:11:05'),
(499, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 265', 'mindmap of logarithm course \nusing Cytoscape .', '2025-02-22 19:12:39'),
(500, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 264', 'mindmap of logarithm course . i want see explantations whene click any node\nusing Cytoscape .', '2025-02-22 19:12:55'),
(501, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 266', 'mindmap of logarithm course \nusing Cytoscape library.', '2025-02-22 19:15:10'),
(502, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 267', 'mindmap of logarithm course (make it beatiful and modern)\nusing Cytoscape library.', '2025-02-22 19:15:58'),
(503, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 266', 'mindmap of logarithm course \nusing Cytoscape library.', '2025-02-22 19:16:32'),
(504, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 268', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.\nuse Cytoscape library.', '2025-02-22 19:17:37'),
(505, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 268', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.\nuse Cytoscape library.', '2025-02-22 19:18:36'),
(506, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 269', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node. use mxGraph library.', '2025-02-22 19:20:08'),
(507, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 270', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node. use mxGraph library.', '2025-02-22 19:20:57'),
(508, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 270', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap. use mxGraph library.', '2025-02-22 19:23:01'),
(509, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 271', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap. use mxGraph library.', '2025-02-22 19:24:23'),
(510, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 272', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap. use mxGraph library.', '2025-02-22 19:30:26'),
(511, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 273', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap. use maxGraph library.\n', '2025-02-22 19:35:28'),
(512, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 274', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap. use maxGraph library.\n', '2025-02-22 19:36:09'),
(513, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 275', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap. use maxGraph library.\n', '2025-02-22 19:36:42'),
(514, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 276', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap. ', '2025-02-22 19:37:18'),
(515, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 277', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap.', '2025-02-22 19:40:07'),
(516, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 277', 'i can t see nothing', '2025-02-22 19:41:37'),
(517, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 278', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.', '2025-02-22 19:43:52'),
(518, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 279', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.node must not be overlap.\nuse cytoscape.js', '2025-02-22 19:45:24'),
(519, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 280', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.\nuse cytoscape.js', '2025-02-22 19:46:56'),
(520, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 281', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.\nuse mermaid', '2025-02-22 19:49:34');
INSERT INTO `ip_prompts` (`id`, `ip_address`, `conversation_name`, `prompt`, `created_at`) VALUES
(521, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 282', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.\nuse mermaid library', '2025-02-22 19:50:22'),
(522, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 283', 'mindmap of logarithm course (make it beatiful and modern),i want see explantations whene click any node.\n', '2025-02-22 19:51:25'),
(523, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 284', 'facebook sequence Diagram', '2025-02-22 20:24:38'),
(524, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 284', 'i want if click any element , see explantations', '2025-02-22 20:26:04'),
(525, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 285', 'facebook sequence Diagram\n', '2025-02-22 20:28:29'),
(526, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 286', 'facebook sequence Diagram\n', '2025-02-22 20:30:23'),
(527, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 287', 'facebook sequence Diagram\n', '2025-02-22 20:30:58'),
(528, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 288', 'facebook sequence Diagram\n', '2025-02-22 20:31:58'),
(529, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 289', 'facebook sequence Diagram\n', '2025-02-22 20:33:58'),
(530, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 290', 'facebook sequence Diagram\n', '2025-02-22 20:34:31'),
(531, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 291', 'facebook sequence Diagram\n', '2025-02-22 20:34:48'),
(532, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 292', 'facebook Class diagrams\n', '2025-02-22 20:35:31'),
(533, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 293', 'facebook Class diagrams\n', '2025-02-22 20:36:11'),
(534, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 294', 'Facebook - Post Status Update Sequence Diagram\n', '2025-02-22 20:41:41'),
(535, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 295', 'Facebook - Post Status Update Sequence Diagram\n', '2025-02-22 20:42:02'),
(536, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 296', 'Facebook Class Diagram\n', '2025-02-22 20:45:18'),
(537, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 297', 'mindmap of coding', '2025-02-22 20:49:00'),
(538, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 297', 'i want popup display to expplan each node whene clicked', '2025-02-22 20:58:47'),
(539, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 297', 'i want popup display to explain each node whene clicked\n', '2025-02-22 21:01:12'),
(540, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 298', 'mindmap of coding', '2025-02-22 21:01:52'),
(541, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 298', 'i want popup display to explain each node whene clicked', '2025-02-22 21:02:38'),
(542, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 299', 'mindmap of coding', '2025-02-22 21:03:05'),
(543, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 299', 'i want export as pdf', '2025-02-22 21:07:13'),
(544, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 299', 'i want export as png not pdf . i have this error: Uncaught SyntaxError: The requested module \'https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js\' does not provide an export named \'default\'', '2025-02-22 21:08:14'),
(545, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 299', 'png with high quality', '2025-02-22 21:09:02'),
(546, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 299', 'full diagram not just part', '2025-02-22 21:09:48'),
(547, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 300', 'mindmap of coding\ni want export as png', '2025-02-22 21:54:45'),
(548, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 301', 'mindmap of coding i want export as png\n', '2025-02-22 23:35:31'),
(549, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 302', 'mindmap of coding i want export as png', '2025-02-22 23:36:31'),
(550, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 302', 'png not clair', '2025-02-22 23:37:18'),
(551, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 302', 'make it more clair', '2025-02-22 23:38:17'),
(552, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 303', 'solve 2x=5', '2025-02-22 23:50:13'),
(553, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 304', 'ball physics simulation using : matter-js', '2025-02-23 00:02:07'),
(554, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 305', 'square physics simulation using : matter-js\n', '2025-02-23 00:04:00'),
(555, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 305', 'friction physics simulation using : matter-js\n . i have this error: Uncaught TypeError: Render.clear is not a function', '2025-02-23 00:11:00'),
(556, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 306', 'friction physics simulation using : matter-js\n', '2025-02-23 00:11:50'),
(557, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 306', 'i want frition with Sloping land . i have this error: Uncaught TypeError: Matter.Body.setFriction is not a function', '2025-02-23 00:13:52'),
(558, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 306', 'friction not work and i want just one square . i have this error: Uncaught TypeError: Body.setFriction is not a function', '2025-02-23 00:15:06'),
(559, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 306', 'Cloth physics simulation using : matter-js\n . i have this error: Uncaught TypeError: Matter.Body.setFriction is not a function', '2025-02-23 00:17:22'),
(560, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 307', 'Cloth physics simulation using : matter-js\n', '2025-02-23 00:17:59'),
(561, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 308', 'cloth and ball simulation physic using cannon.js', '2025-02-23 00:22:11'),
(562, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 309', 'cloth and ball simulation physic using cannon.js', '2025-02-23 00:23:04'),
(563, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 310', 'car simulation using velocityjs', '2025-02-23 00:28:45'),
(564, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 310', 'real car with wheels', '2025-02-23 00:29:59'),
(565, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 311', 'ball simulation using velocityjs\n', '2025-02-23 00:30:42'),
(566, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 312', 'chimestry simulation of h2o', '2025-02-23 00:32:44'),
(567, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 313', 'chimestry simulation of h2o\n', '2025-02-23 00:34:22'),
(568, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 314', 'example simulation circuit include 7seg : using simcirjs', '2025-02-23 00:42:22'),
(569, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 315', 'example simulation circuit : using simcirjs', '2025-02-23 00:43:04'),
(570, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 316', 'example simulation circuit: using simcirjs', '2025-02-23 00:43:53'),
(571, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 318', 'example simulation circuit include bobine : using falstad', '2025-02-23 00:49:39'),
(572, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 318', 'example simulation circuit include bobine : using falstad', '2025-02-23 00:49:51'),
(573, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 319', 'example simulation circuit include bobine ', '2025-02-23 00:51:45'),
(574, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 320', 'i want Paul Falstad electronic circuit', '2025-02-23 11:56:05'),
(575, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 321', 'simulation cisco :Connect two computers\n', '2025-02-23 12:43:08'),
(576, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 322', 'simulation cisco :Connect two computers\n', '2025-02-23 12:43:41'),
(577, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 322', 'simulation cisco : Star Topology\n', '2025-02-23 12:44:30'),
(578, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 323', 'simulation cisco of Star Topology using Vis Network\n', '2025-02-23 12:53:51'),
(579, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 324', 'mindmap logarithm course using Vis Network\n', '2025-02-23 12:55:54'),
(580, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 324', 'mindmap logarithm course using Vis Network\n', '2025-02-23 12:55:55'),
(581, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 324', 'i want whene click any node see explantations', '2025-02-23 12:57:12'),
(582, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 325', 'mindmap of learn coding using Vis Network', '2025-02-23 12:59:45'),
(583, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 325', 'not display correctly', '2025-02-23 13:00:51'),
(584, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 326', 'mindmap of learn coding using Vis Network\n', '2025-02-23 13:02:13'),
(585, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 326', 'make it horizontal', '2025-02-23 13:03:45'),
(586, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 327', 'i want logarithm course , use diagrams (Vis Network)', '2025-02-23 13:05:31'),
(587, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 328', 'i want simulation (x square) using jsxgraph', '2025-02-23 13:10:02'),
(588, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 328', 'x value not change', '2025-02-23 13:10:42'),
(589, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 329', 'i want simulation (x square) using jsxgraph\n', '2025-02-23 13:27:39'),
(590, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 330', '3d cube using three.js', '2025-02-23 13:29:08'),
(591, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 331', 'x square simulation using plotly js', '2025-02-23 13:36:15'),
(592, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 332', '5x+1: simulation using plotly js\n', '2025-02-23 13:37:56'),
(593, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 333', 'morocco  map using leaflet', '2025-02-23 13:58:46'),
(594, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 333', 'not work', '2025-02-23 13:59:09'),
(595, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 333', 'hhh', '2025-02-23 16:54:20'),
(596, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 334', 'todolist', '2025-02-23 17:12:41'),
(597, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 335', 'reordre pdf pages', '2025-02-23 17:13:29'),
(598, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 336', 'pdf to images', '2025-02-23 17:14:35'),
(599, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 336', 'i want download all', '2025-02-23 17:15:08'),
(600, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 337', 'logarithm course mindmap', '2025-02-23 17:15:57'),
(601, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 338', 'logarithm course mindmap\n', '2025-02-23 17:18:13'),
(602, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 339', 'logarithm course mindmap\n', '2025-02-23 17:18:31'),
(603, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 340', 'logarithm course mindmap\n', '2025-02-23 17:21:10'),
(604, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 341', 'logarithm course mindmap\n', '2025-02-23 17:22:07'),
(605, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 342', 'logarithm course mindmap\n', '2025-02-23 17:27:17'),
(606, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 343', 'logarithm course mindmap\n', '2025-02-23 17:32:31'),
(607, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 344', 'reordre pdf pages', '2025-02-23 17:35:48'),
(608, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 345', 'mindmap of coding', '2025-02-23 17:37:03'),
(609, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 345', 'i want export it as pdf', '2025-02-23 17:37:39'),
(610, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 346', 'mindmap of coding', '2025-02-23 17:52:41'),
(611, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 347', 'sequential diagram of facebook', '2025-02-23 17:54:04'),
(612, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 347', 'i want download it as pdf', '2025-02-23 17:54:26'),
(613, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 348', 'sequential diagram of facebook\n', '2025-02-23 17:58:05'),
(614, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 349', 'sequential diagram of whatsapp\n', '2025-02-23 17:59:41'),
(615, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 350', 'sales system', '2025-02-23 18:00:36'),
(616, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 351', 'remove pdf pages', '2025-02-23 18:02:20'),
(617, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 352', 'resize image', '2025-02-23 18:03:04'),
(618, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 353', 'snack game', '2025-02-23 18:04:01'),
(619, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 354', 'kanban', '2025-02-23 18:05:01'),
(620, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 355', 'kanban', '2025-02-23 18:05:52'),
(621, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 356', 'draw', '2025-02-23 18:06:39'),
(622, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 356', 'i want download it as png', '2025-02-23 18:07:16'),
(623, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 357', 'creaze signature', '2025-02-23 18:08:06'),
(624, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 358', 'logarithm course', '2025-02-23 18:10:31'),
(625, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 359', '3d phone simulation', '2025-02-23 18:11:40'),
(626, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 360', '3d three', '2025-02-23 18:12:39'),
(627, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 360', 'it s not three', '2025-02-23 18:13:03'),
(628, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 358', 'add diagrams . i have this error: Uncaught SyntaxError: The requested module \'https://cdnjs.cloudflare.com/ajax/libs/three.js/0.152.2/three.module.min.js\' does not provide an export named \'FontLoader\'', '2025-02-23 18:22:09'),
(629, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 361', 'logarithm course', '2025-02-23 18:26:26'),
(630, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 361', 'add diagrams', '2025-02-23 18:27:09'),
(631, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 362', 'logarithm course\n', '2025-02-23 18:30:19'),
(632, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 362', 'add diagrams', '2025-02-23 18:31:27'),
(633, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 363', 'logarithm course\n', '2025-02-23 18:40:26'),
(634, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 363', 'add diagrams', '2025-02-23 18:40:57'),
(635, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 364', 'logarithm course\n', '2025-02-23 18:42:40'),
(636, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 365', 'logarithm course\n', '2025-02-23 18:43:46'),
(637, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 366', 'logarithm course\n', '2025-02-23 18:44:49'),
(638, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 367', 'logarithm course\n', '2025-02-23 18:45:46'),
(639, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 368', 'logarithm course\n', '2025-02-23 18:46:58'),
(640, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 368', 'add diagrams', '2025-02-23 18:47:40'),
(641, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 369', 'logarithm course\n', '2025-02-23 18:49:15'),
(642, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 369', 'add diagrams', '2025-02-23 18:50:24'),
(643, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 370', 'mindmap of coding', '2025-02-23 18:52:15'),
(644, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 371', 'images to pdf', '2025-02-23 18:53:12'),
(645, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 372', 'x o game', '2025-02-23 18:54:54'),
(646, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 372', 'save wins', '2025-02-23 18:55:39'),
(647, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 373', 'i want landing page about honey product', '2025-02-23 20:12:44'),
(648, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 373', 'i want export code of this landing page', '2025-02-23 20:23:36'),
(649, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 373', 'add button in to to make me able to export code of this landing page ', '2025-02-23 20:24:59'),
(650, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 373', 'in Our Honey Products make this images:\n- \"/fdd/Gs_(1920_px_×_1080_px)_(8)-photoaidcom-cropped.png\" \n-\"/fdd/Seamlessly_Navigate_Your_ChatGPT_Messages.png\" \n-\"/fdd/Gs_(1920_px_×_1080_px)_(8)-photoaidcom-cropped.png\" \n', '2025-02-23 20:26:45'),
(651, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 374', 'i want see real clock', '2025-02-23 20:42:18'),
(652, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 374', 'i want round clock ', '2025-02-23 20:43:37'),
(653, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 375', 'gantt diagram', '2025-02-23 20:48:05'),
(654, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 376', 'kanban', '2025-02-23 22:15:07'),
(655, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 377', 'todolist', '2025-02-23 22:21:54'),
(656, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 378', 'text to word file', '2025-02-23 22:50:44'),
(657, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 378', 'to word file', '2025-02-23 22:54:06'),
(658, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 379', 'محاكاة السقوط الحر', '2025-02-23 22:55:37'),
(659, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 380', 'محاكاة السقوط الحر', '2025-02-23 22:56:06'),
(660, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 380', 'اريد التحكم بالكرة باستخدام الماوس', '2025-02-23 22:56:55'),
(661, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 380', 'اضف ارض مائلة', '2025-02-23 22:57:33'),
(662, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 380', 'اريد التحكم بالكرة فقط عند الامساك بها', '2025-02-23 22:58:19'),
(663, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 380', 'لا يعمل', '2025-02-23 22:58:53'),
(664, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 381', 'محاكاة السقوط الحر\n', '2025-02-23 22:59:22'),
(665, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 382', 'محاكاة السقوط الحر على سطح مائل', '2025-02-23 23:00:22'),
(666, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 382', 'النافذة صغيررة و لا ارى الكرة بعد السقوط', '2025-02-23 23:01:13'),
(667, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 382', 'add scroll', '2025-02-23 23:02:51'),
(668, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 382', 'عند الضغط اجعل كرة جديدة تسقط', '2025-02-23 23:05:07'),
(669, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 382', 'لا تعمل . i have this error: Uncaught ReferenceError: ballStartYosition is not defined', '2025-02-23 23:05:37'),
(670, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 383', 'محاكاة السقوط الحر على سطح مائل\n', '2025-02-23 23:40:22'),
(671, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 383', 'add scroll . i have this error: Uncaught TypeError: Matter.Common.degreesToRadians is not a function', '2025-02-23 23:40:53'),
(672, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 384', 'محاكاة السقوط الحر على سطح مائل\n', '2025-02-23 23:42:14'),
(673, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 384', 'لا ارى اي شيء . i have this error: Uncaught TypeError: Matter.Common.degreesToRadians is not a function', '2025-02-23 23:43:13'),
(674, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 384', 'لا يعمل . i have this error: Uncaught TypeError: Matter.Common.degreesToRadians is not a function', '2025-02-23 23:43:46'),
(675, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 385', 'محاكاة السقوط الحر على سطح مائل\n', '2025-02-23 23:44:01'),
(676, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 385', 'ضع حدود لكي لا تذهب الكرة لما لانهاية', '2025-02-23 23:44:55'),
(677, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 385', 'اريد التحكم بالكرة بالماوس', '2025-02-23 23:45:32'),
(678, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 385', 'اريد راية سهام القوى . i have this error: Uncaught TypeError: Common.degreesToRadians is not a function', '2025-02-23 23:46:45'),
(679, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 385', 'اضف سطح مائل', '2025-02-23 23:47:18'),
(680, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 385', 'لا استطيع حمل الكرة', '2025-02-23 23:48:09'),
(681, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 386', 'html live editor', '2025-02-23 23:50:14'),
(682, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 387', 'Bounce Ball Game', '2025-02-24 00:06:09'),
(683, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 388', 'Bounce Ball Game', '2025-02-24 00:07:07'),
(684, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 389', 'Bounce Ball Game', '2025-02-24 00:08:08'),
(685, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 390', 'Bounce Ball Game', '2025-02-24 00:09:33'),
(686, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 391', 'flappy bird game', '2025-02-24 00:10:16'),
(687, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 391', 'it s stop whene pass pipline . i have this error: Uncaught ReferenceError: pipe is not defined', '2025-02-24 00:10:50'),
(688, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 392', 'Breakout game', '2025-02-24 00:11:51'),
(689, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 393', '1024 game', '2025-02-24 00:14:16'),
(690, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 393', 'save last change', '2025-02-24 00:16:03'),
(691, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 393', 'make transitions/moves smooth', '2025-02-24 00:17:19'),
(692, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 393', 'keyboard not work . i have this error: Uncaught TypeError: Cannot read properties of null (reading \'style\')', '2025-02-24 00:18:57'),
(693, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 394', 'i want display files in folder using File System Access API', '2025-02-24 00:19:49'),
(694, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 395', 'i want display files in folder in my pc', '2025-02-24 00:21:21'),
(695, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 396', 'i want display my files in folder', '2025-02-24 00:23:20'),
(696, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 396', 'i want select files then zip selected files', '2025-02-24 00:25:52'),
(697, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 396', 'i want select files then zip selected files', '2025-02-24 00:26:08'),
(698, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 396', 'i want select and rename files by chosen name + number (1,2,3...)', '2025-02-24 00:28:31'),
(699, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 396', 'rename not work', '2025-02-24 00:32:53'),
(700, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 397', 'i want select and rename files by chosen name + number (1,2,3...)', '2025-02-24 00:38:45'),
(701, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 398', 'i want select and rename files directly in my pc and chosen name + number (1,2,3...)', '2025-02-24 00:40:14'),
(702, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 398', 'not work', '2025-02-24 00:41:34'),
(703, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 399', 'i want select and rename files directly in my pc and chosen name + number (1,2,3...)\n', '2025-02-24 00:42:21'),
(704, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 399', 'localy', '2025-02-24 00:43:14'),
(705, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 400', 'Remove Image Background\n', '2025-02-24 00:43:52'),
(706, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 401', 'Remove Image Background', '2025-02-24 00:47:20'),
(707, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 402', 'Remove Image Background\n', '2025-02-24 00:50:24'),
(708, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 403', 'Remove Image Background\n', '2025-02-24 00:51:16'),
(709, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 404', 'resume generator', '2025-02-24 17:50:59'),
(710, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 405', 'resume generator\n', '2025-02-24 17:52:49'),
(711, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 405', 'Download Resume (HTML) not work . i have this error: Uncaught TypeError: Cannot read properties of null (reading \'value\')', '2025-02-24 17:55:03'),
(712, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 406', 'modern developer profile', '2025-02-24 17:56:35'),
(713, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 406', 'make this in photo profile:\n\"/fdd/Seamlessly_Navigate_Your_ChatGPT_Messages.png\" ', '2025-02-24 17:57:27'),
(714, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 406', 'make it modern and remove diagrams', '2025-02-24 17:58:16'),
(715, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 406', 'make sections like pages and add modern pattern colors and css transitions and add indexer (tabs to move between sections)', '2025-02-24 17:59:59'),
(716, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 406', 'add many informations', '2025-02-24 18:01:11'),
(717, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 406', 'change profile photo with:\n\"/fdd/Gs_(1920_px_×_1080_px)_(8)-photoaidcom-cropped.png\" ', '2025-02-24 18:03:30'),
(718, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 406', 'make tabs bar modern and change colors', '2025-02-24 18:04:49'),
(719, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 406', 'change colors', '2025-02-24 18:18:34'),
(720, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 407', 'solve math integral problem', '2025-02-24 18:28:59'),
(721, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 408', 'solve: integrate(2*x)', '2025-02-24 18:30:05'),
(722, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 409', 'solve: integrate(2*x)\n', '2025-02-24 18:31:48'),
(723, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 410', 'solve: integrate(2*x)\n', '2025-02-24 18:33:16'),
(724, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 411', 'solve: integrate(2*x)\n', '2025-02-24 18:35:36'),
(725, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 412', 'solve: integrate(2*x)\n', '2025-02-24 18:38:32'),
(726, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 412', 'i want see steps', '2025-02-24 18:39:01'),
(727, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 413', 'todolist', '2025-02-24 18:39:47'),
(728, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 412', 'i want to be like slides', '2025-02-24 18:40:50'),
(729, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 414', 'i want see develepement technologies with logo', '2025-02-24 18:44:24'),
(730, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 414', 'not work . i have this error: Uncaught ReferenceError: vis is not defined', '2025-02-24 18:45:10'),
(731, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 415', 'diagram of read book', '2025-02-24 18:46:26'),
(732, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 415', 'i want visnetwork js', '2025-02-24 18:46:56'),
(733, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 416', 'three computers connection using visnetwork js\n', '2025-02-24 18:49:03'),
(734, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 417', 'home management diagram using visnetwork js\n', '2025-02-24 18:50:23'),
(735, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 418', 'home management diagram\n', '2025-02-24 18:51:59'),
(736, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 419', 'home management diagram\n', '2025-02-24 18:54:17'),
(737, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 420', 'home management diagram\n', '2025-02-24 18:54:44'),
(738, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 421', 'home management diagram\n', '2025-02-24 18:55:54'),
(739, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 422', 'home management diagram\n visnetwork', '2025-02-24 18:56:27'),
(740, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 422', 'i want buttons to download it as : SVG, PNG, PDF . i have this error: ResizeObserver loop completed with undelivered notifications.', '2025-02-24 18:59:03'),
(741, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 422', 'download not work . i have this error: Uncaught TypeError: network.canvas.frame.canvas.toSVG is not a function', '2025-02-24 18:59:58'),
(742, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 423', 'home management diagram visnetwork', '2025-02-24 19:48:13'),
(743, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 424', 'home management diagram', '2025-02-24 20:03:17'),
(744, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 424', 'make biuzzons more beatiful . i have this error: ResizeObserver loop completed with undelivered notifications.', '2025-02-24 20:08:53'),
(745, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 425', 'home management diagram\n', '2025-02-24 20:10:41'),
(746, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 426', 'i want create diagram', '2025-02-24 20:33:10'),
(747, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 426', 'not that i want create nodes ande lines...', '2025-02-24 20:34:39'),
(748, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 427', 'video player', '2025-02-24 22:17:57'),
(749, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 427', 'buttons not display correctly', '2025-02-24 22:18:40'),
(750, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 428', 'video player\n', '2025-02-24 22:19:40'),
(751, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 429', 'cut video', '2025-02-24 22:20:45'),
(752, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 429', 'i want download result', '2025-02-24 22:22:07'),
(753, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 429', 'not work', '2025-02-24 22:24:24'),
(754, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 429', 'not work Uncaught SyntaxError: missing ) after argument list (at ', '2025-02-24 22:25:10'),
(755, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 430', 'Video Cutter & Downloader\n', '2025-02-24 22:25:43'),
(756, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 430', 'video from my device', '2025-02-24 22:32:34'),
(757, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 430', 'Download Cut Video not work', '2025-02-24 22:34:03'),
(758, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 431', 'simulate this function : integrate(2x)', '2025-02-24 22:35:50'),
(759, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 432', 'Video Cutter & Downloader\n', '2025-02-24 22:36:40'),
(760, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 432', 'cut video buttons is disabled', '2025-02-24 22:38:09'),
(761, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 432', 'i want download it in mp4 format', '2025-02-24 22:59:14'),
(762, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 433', 'Video Cutter & Downloader\n', '2025-02-24 23:00:54'),
(763, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 433', 'it s need to pass all time to cut it', '2025-02-24 23:04:44'),
(764, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 432', 'maze game', '2025-02-24 23:05:17'),
(765, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 433', '3d Procedural Portal Effect\n', '2025-02-24 23:53:49'),
(766, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 434', 'Procedural Portal Effect\n', '2025-02-24 23:54:20'),
(767, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 435', '3d Procedural Portal Effect\n using three js', '2025-02-24 23:54:58'),
(768, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 436', '3d \"Abdollah\"', '2025-02-24 23:55:30'),
(769, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 436', 'make it Green', '2025-02-24 23:56:36'),
(770, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 437', 'python course : lists', '2025-02-24 23:58:40'),
(771, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 437', 'i want course', '2025-02-24 23:59:16'),
(772, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 438', 'python course : lists\n', '2025-02-25 00:00:13'),
(773, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 439', 'python course : lists\n', '2025-02-25 00:03:26'),
(774, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 440', '3d portfolio card', '2025-02-25 00:05:12'),
(775, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 441', 'Project Management Dashboard UI', '2025-02-25 00:07:04'),
(776, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 442', 'i want write data in table', '2025-02-25 00:10:00'),
(777, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 442', 'i cant edit cells', '2025-02-25 00:10:34'),
(778, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 442', 'add button to download as excel', '2025-02-25 00:12:00'),
(779, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 442', 'empty excel', '2025-02-25 00:16:11'),
(780, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 443', 'i want create  table\nand download as excel', '2025-02-25 00:17:09'),
(781, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 443', 'i want excel not csv', '2025-02-25 00:21:52'),
(782, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 443', 'not work . i have this error: Uncaught TypeError: Cannot read properties of undefined (reading \'book_new\')', '2025-02-25 00:23:17'),
(783, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 444', 'i want create table and download as excel', '2025-02-25 00:31:15'),
(784, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 445', 'i want create table and download as excel', '2025-02-25 00:32:17'),
(785, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 445', 'i want edit data and add rows and columns', '2025-02-25 00:33:17'),
(786, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 446', 'chat simulation', '2025-02-25 17:35:12'),
(787, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'i want complete sales management system', '2025-02-26 22:04:11'),
(788, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'Design and develop a comprehensive sales management system that streamlines the entire sales process—from lead generation to order fulfillment and after-sales support. The application must serve as an end-to-end platform integrating CRM functionalities, sales pipeline management, order processing, reporting and analytics, and mobile accessibility. It should be scalable, secure, and customizable to adapt to diverse business workflows.', '2025-02-26 22:09:08'),
(789, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'Design and develop a comprehensive sales management system that streamlines the entire sales process—from lead generation to order fulfillment and after-sales support. The application must serve as an end-to-end platform integrating CRM functionalities, sales pipeline management, order processing, reporting and analytics, and mobile accessibility. It should be scalable, secure, and customizable to adapt to diverse business workflows.', '2025-02-26 22:10:16'),
(790, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 4', 'Design a comprehensive, integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions', '2025-02-26 22:11:24'),
(791, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 5', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions', '2025-02-26 22:13:43'),
(792, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 6', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions', '2025-02-26 22:16:39'),
(793, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 7', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions', '2025-02-26 22:17:22'),
(794, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 8', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. i want dark theme.', '2025-02-26 22:19:20'),
(795, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 9', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. use green and yellow pattern.', '2025-02-26 22:21:42'),
(796, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 10', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. use modern theme and style.', '2025-02-26 22:45:12'),
(797, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 11', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. use modern theme and style.', '2025-02-26 22:46:53'),
(798, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 12', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. use modern theme and style.', '2025-02-26 22:48:29'),
(799, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 13', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. use modern theme and style.', '2025-02-26 22:49:50'),
(800, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 14', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. use modern theme and style.', '2025-02-26 22:50:54'),
(801, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 15', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. use modern theme and style.', '2025-02-26 23:13:13'),
(802, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 16', 'Design a comprehensive (use tabs), integrated sales management system tool that automates and streamlines the entire sales cycle—from lead generation and customer interactions to order processing, inventory management, and post-sale analytics. The system should provide a centralized platform where sales teams can manage customer relationships, track sales transactions, and analyze performance data to drive informed business decisions. use modern theme and style.', '2025-02-26 23:14:15'),
(803, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 17', 'todo list with beatiful style.', '2025-02-26 23:26:35'),
(804, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 17', 'todo list with beatiful style.', '2025-02-26 23:26:35'),
(805, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 18', 'todo list with beatiful style.', '2025-02-26 23:27:22'),
(806, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 19', 'todo list with beatiful style.', '2025-02-26 23:28:04'),
(807, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 20', 'Ecommerce Mind Map', '2025-02-26 23:32:54'),
(808, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'Ecommerce Mind Map', '2025-02-26 23:33:22'),
(809, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 22', 'Ecommerce Mind Map', '2025-02-26 23:34:36'),
(810, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 23', 'Ecommerce Mind Map', '2025-02-26 23:57:14'),
(811, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 24', 'Ecommerce Mind Map', '2025-02-26 23:58:07'),
(812, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 25', 'Ecommerce Mind Map', '2025-02-26 23:58:42'),
(813, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 25', 'make it round . i have this error: ResizeObserver loop completed with undelivered notifications.', '2025-02-26 23:59:12'),
(814, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 26', 'Ecommerce Mind Map', '2025-02-26 23:59:51'),
(815, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 27', 'Ecommerce Mind Map', '2025-02-27 00:00:34'),
(816, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 28', 'Ecommerce Mind Map', '2025-02-27 00:03:38'),
(817, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 29', 'Ecommerce Mind Map', '2025-02-27 00:05:10'),
(818, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 30', 'Ecommerce Mind Map', '2025-02-27 00:07:16'),
(819, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 31', 'Ecommerce Mind Map', '2025-02-27 00:07:57'),
(820, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 32', 'Ecommerce Mind Map', '2025-02-27 00:08:27'),
(821, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 33', 'Ecommerce Mind Map', '2025-02-27 00:11:00'),
(822, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 33', 'make defferent colors . i have this error: ResizeObserver loop completed with undelivered notifications.', '2025-02-27 00:11:39'),
(823, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 34', 'ball shut simulation and display force vector . add many deferrent shapes', '2025-02-27 00:13:20'),
(824, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 34', 'add inclined plane . i have this error: Uncaught TypeError: Cannot read properties of undefined (reading \'on\')', '2025-02-27 00:16:00'),
(825, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 35', 'Simulate a ball shot and display its force vector. Include various shapes and an inclined plane.', '2025-02-27 00:18:58'),
(826, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 36', 'Create a ball shooting simulation that displays force vectors. The simulation should include multiple distinct shapes and an inclined plane. When a shape is clicked, the ball should be shot from the clicked point on that shape. Additionally, the simulation must support drag-and-drop functionality for shapes, display force values, and allow the user to adjust each shape\'s weight.', '2025-02-27 00:23:13'),
(827, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 37', 'Create a ball shooting simulation that displays force vectors. The simulation should include multiple distinct shapes and an inclined plane. When a shape is clicked, the ball should be shot from the clicked point on that shape. Additionally, the simulation must support drag-and-drop functionality for shapes, display force values, and allow the user to adjust each shape\'s weight.', '2025-02-27 00:24:11'),
(828, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 38', 'Ball Shot Simulation:\n\nDisplay force vectors.\nInclude various shapes and an inclined plane.\nWhen I click on a shape, generate a shot from the clicked point.\nAllow dragging and dropping of shapes with the mouse.\nShow force values and let me adjust each shape’s weight.\nInclude a flat plane at the bottom.', '2025-02-27 00:26:21'),
(829, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 39', 'Create a ball shot simulation that displays force vectors. Include multiple different shapes and an inclined plane. When I click, generate a shot from the clicked point on the chosen shape. Allow drag-and-drop functionality for shapes with the mouse, display force values, and enable changing the weight of each shape. At the bottom, include a clear, flat plane', '2025-02-27 00:28:19'),
(830, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 39', 'i want see force vectors', '2025-02-27 00:29:27'),
(831, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'Create a ball shot simulation that displays force vectors. Include multiple different shapes and an inclined plane. When I click, generate a shot from the clicked point on the chosen shape. Allow drag-and-drop functionality for shapes with the mouse, display force values, and enable changing the weight of each shape. At the bottom, include a clear, flat plane', '2025-02-27 00:30:36'),
(832, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'add scroll beacause i can t see shapes . i have this error: Uncaught TypeError: Render.追加入 is not a function', '2025-02-27 00:31:49'),
(833, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 40', 'where is vectors\n', '2025-02-27 00:32:46'),
(834, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 41', 'simulation : ball shut in rounded plane', '2025-02-27 00:34:08'),
(835, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 42', 'simulation : ball shut in rounded plane (convex)\n', '2025-02-27 00:34:58'),
(836, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 42', 'i want see vectors of forces', '2025-02-27 00:35:58'),
(837, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 42', 'i want convex plane', '2025-02-27 00:36:52'),
(838, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 43', 'simulation : ball shut in rounded plane (concave)', '2025-02-27 00:38:42'),
(839, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 44', 'Ball shot simulation:\n\nDisplay force vectors.\nAdd multiple different shapes, including a concave plane.\nWhen clicking on a shape, launch a shot from the clicked point on the selected shape.\nEnable drag-and-drop functionality for shapes using the mouse.\nDisplay force values and allow users to change the weight of each shape.\nInclude a clear, flat plane at the bottom.', '2025-02-27 00:41:44'),
(840, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 45', 'Ball simulation with force vectors: Create a simulation where a ball interacts with various shapes. The simulation should display force vectors and force values, allow users to change the weight of the shapes, and include multiple different shapes along with a concave plane. At the bottom, include a clear, flat plane. Additionally, enable mouse controls for manipulating the shapes.', '2025-02-27 00:44:36'),
(841, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 45', 'i want see forces vectors', '2025-02-27 00:45:40'),
(842, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 46', 'Ball simulation with force vectors: Create a simulation where a ball interacts with various shapes. The simulation should display force vectors and force values, allow users to change the weight of the shapes, and include multiple different shapes along with a concave plane. At the bottom, include a clear, flat plane. Additionally, enable mouse controls for manipulating the shapes.', '2025-02-27 00:46:25'),
(843, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 46', 'i can t see vectors of forces , make it in red', '2025-02-27 00:48:04'),
(844, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 47', 'Ball simulation with force vectors: Create a simulation where a ball interacts with various shapes. The simulation should display force vectors and force values, allow users to change the weight of the shapes, and include multiple different shapes along with a concave plane. At the bottom, include a clear, flat plane. Additionally, enable mouse controls for manipulating the shapes.', '2025-02-27 00:48:54'),
(845, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 48', 'Ball simulation with force vectors: Create a simulation where a ball interacts with various shapes. The simulation should display force vectors and force values, allow users to change the weight of the shapes, and include multiple different shapes along with a concave plane. At the bottom, include a clear, flat plane. Additionally, enable mouse controls for manipulating the shapes.', '2025-02-27 00:49:45');
INSERT INTO `ip_prompts` (`id`, `ip_address`, `conversation_name`, `prompt`, `created_at`) VALUES
(846, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 49', 'physic simulation', '2025-02-27 00:51:11'),
(847, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 50', 'physic simulation', '2025-02-27 00:53:21'),
(848, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 51', 'physic simulation', '2025-02-27 00:54:03'),
(849, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 52', 'physics simulation', '2025-02-27 00:56:16'),
(850, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 53', 'todo list with beatiful style.', '2025-02-27 00:57:01'),
(851, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 54', 'Ecommerce Mind Map', '2025-02-27 00:57:35'),
(852, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 55', 'physics simulation', '2025-02-27 00:58:02'),
(853, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'Personalized Nutrition & Calorie Calculator—that helps users determine their daily energy requirements and macronutrient breakdown based on their individual characteristics and goals.', '2025-02-27 17:53:09'),
(854, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'i want modern style and colors', '2025-02-27 17:54:02'),
(855, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'make it interactve not just simple form', '2025-02-27 17:55:08'),
(856, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'change layout totaly', '2025-02-27 17:56:39'),
(857, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'make it 3d', '2025-02-27 17:58:45'),
(858, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'change colors', '2025-02-27 17:59:09'),
(859, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'card not clair', '2025-02-27 18:00:17'),
(860, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'big card not clair', '2025-02-27 18:01:04'),
(861, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'change bg color', '2025-02-27 18:01:42'),
(862, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'Personalized Nutrition & Calorie Calculator—that helps users determine their daily energy requirements and macronutrient breakdown based on their individual characteristics and goals.', '2025-02-27 18:02:52'),
(863, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'make style modern', '2025-02-27 18:03:48'),
(864, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'make it 3d', '2025-02-27 18:04:21'),
(865, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'change theme', '2025-02-27 18:05:03'),
(866, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'change theme\n', '2025-02-27 18:05:31'),
(867, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'Create Landing Pages about sale honey', '2025-02-27 18:12:52'),
(868, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'make this image in all cards of Our Honey Selection:\n\"/my folder/Gs_(1920_px_×_1080_px)_(8)-photoaidcom-cropped.png\" \n', '2025-02-27 18:15:02'),
(869, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'make this image in hero:\n\"/my folder/ai-generated-delicious-honey-dripping-from-wooden-honey-dipper-on-yellow-background-created-with-generative-ai-photo.jpg\" ', '2025-02-27 18:17:03'),
(870, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'make this image in bg of hero section : \"/my folder/ai-generated-delicious-honey-dripping-from-wooden-honey-dipper-on-yellow-background-created-with-generative-ai-photo.jpg\"', '2025-02-27 18:18:07'),
(871, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 3', 'i can t see my image in hero section', '2025-02-27 18:18:50'),
(872, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 4', 'Create Landing Pages about sale honey\n', '2025-02-27 18:20:07'),
(873, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 5', 'Create excellente Landing Page about sale honey\n', '2025-02-27 18:21:04'),
(874, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 5', 'make this image in all cards of Our Honey Selection section:\n\"/my folder/ai-generated-delicious-honey-dripping-from-wooden-honey-dipper-on-yellow-background-created-with-generative-ai-photo.jpg\" ', '2025-02-27 18:23:47'),
(875, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 5', 'make this image in hero bg :\n\"/my folder/ai-generated-delicious-honey-dripping-from-wooden-honey-dipper-on-yellow-background-created-with-generative-ai-photo.jpg\" ', '2025-02-27 18:24:31'),
(876, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 6', 'Ecommerce Mind Map', '2025-02-27 18:28:11'),
(877, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 7', 'Ecommerce Mind Map', '2025-02-27 18:28:46'),
(878, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 8', 'Ecommerce Mind Map', '2025-02-27 18:29:38'),
(879, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 9', 'physics simulation', '2025-02-27 18:32:11'),
(880, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 10', 'physics simulation', '2025-02-27 18:33:04'),
(881, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 11', 'physics simulation', '2025-02-27 18:33:28'),
(882, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 12', 'physics simulation', '2025-02-27 18:33:59'),
(883, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 13', 'physics simulation', '2025-02-27 18:34:23'),
(884, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 14', 'Physics Simulation diffrent shapes and planes', '2025-02-27 18:35:13'),
(885, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 15', 'Physics Simulation diffrent shapes and planes', '2025-02-27 18:35:46'),
(886, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 16', 'modern Kanban', '2025-02-27 18:38:05'),
(887, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 17', 'modern Kanban with 3 columns', '2025-02-27 18:39:26'),
(888, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 17', 'add divider between columns', '2025-02-27 18:40:16'),
(889, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 18', 'modern Kanban with 3 columns\n', '2025-02-27 18:40:46'),
(890, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 19', 'modern Kanban with 3 columns', '2025-02-27 18:41:16'),
(891, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 19', 'change theme to be modern', '2025-02-27 18:41:56'),
(892, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 19', 'make columns  not white', '2025-02-27 18:42:38'),
(893, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 20', 'modern , optimized  drawing app', '2025-02-27 18:49:30'),
(894, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'image editor', '2025-02-27 18:51:27'),
(895, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'make layout more organized', '2025-02-27 18:52:27'),
(896, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'make theme more modern', '2025-02-27 18:54:17'),
(897, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'change colors of layout and make it 3d', '2025-02-27 18:56:19'),
(898, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'change colors of layout and make it 3d', '2025-02-27 18:56:20'),
(899, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'change \"Modern 3D Image Editor\" to \"simple3D Image Editor\"', '2025-02-27 18:59:07'),
(900, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 21', 'change  \"simple3D Image Editor\" to \"simple Image Editor\"\n', '2025-02-27 18:59:53'),
(901, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 22', 'ordre pdf pages', '2025-02-27 19:02:51'),
(902, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 23', 'chess game', '2025-02-27 19:06:30'),
(903, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 24', 'x o game with imbelivable design', '2025-02-27 19:07:46'),
(904, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'todo list', '2025-02-27 19:25:49'),
(905, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 1', 'i want barbie style', '2025-02-27 19:26:23'),
(906, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:27:17'),
(907, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:28:03'),
(908, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'i want this image to be in bg of hero section:\n\"/my folder/a.jpg\" ', '2025-02-27 19:29:03'),
(909, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:30:09'),
(910, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:32:03'),
(911, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:32:51'),
(912, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:34:10'),
(913, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:35:46'),
(914, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:36:40'),
(915, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:37:20'),
(916, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:38:07'),
(917, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'landing page about honey', '2025-02-27 19:38:56'),
(918, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'make it modern landing page', '2025-02-27 19:39:41'),
(919, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'add this image to \"The Story of Honey\" section :\n\"/myFolder/a.jpg\" ', '2025-02-27 19:40:57'),
(920, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'Tool 2', 'add button to download this landing page as html file', '2025-02-27 19:41:48');

-- --------------------------------------------------------

--
-- Structure de la table `ip_requests`
--

DROP TABLE IF EXISTS `ip_requests`;
CREATE TABLE IF NOT EXISTS `ip_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(255) NOT NULL,
  `requestCount` int DEFAULT '0',
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipAddress` (`ipAddress`),
  UNIQUE KEY `unique_ipAddress` (`ipAddress`),
  UNIQUE KEY `ip_requests_ip_address` (`ipAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ip_requests`
--

INSERT INTO `ip_requests` (`id`, `ipAddress`, `requestCount`, `timestamp`) VALUES
(1, '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 88784, '2024-12-25 14:52:18'),
(2, '{\"ip\":\"160.177.12.116\",\"country\":\"MA\"}', 27, '2024-12-29 19:26:40');

-- --------------------------------------------------------

--
-- Structure de la table `ip_reviews`
--

DROP TABLE IF EXISTS `ip_reviews`;
CREATE TABLE IF NOT EXISTS `ip_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `stars` int NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ;

--
-- Déchargement des données de la table `ip_reviews`
--

INSERT INTO `ip_reviews` (`id`, `ipAddress`, `name`, `stars`, `text`, `timestamp`) VALUES
(3, '{\"ip\":\"127.0.0.1\",\"country\":\"Unknown\"}', 'yyyyy', 5, '[\"yyyyyaaaa\"]', '2025-02-16 18:40:04');

-- --------------------------------------------------------

--
-- Structure de la table `prompts`
--

DROP TABLE IF EXISTS `prompts`;
CREATE TABLE IF NOT EXISTS `prompts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `conversation_name` varchar(255) NOT NULL,
  `prompt` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_prompts_user_id` (`user_id`),
  KEY `idx_prompts_created_at` (`created_at`),
  KEY `prompts_user_id` (`user_id`),
  KEY `prompts_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `prompts`
--

INSERT INTO `prompts` (`id`, `user_id`, `conversation_name`, `prompt`, `created_at`) VALUES
(33, 35, 'Conversation 7', 'todolist', '2024-12-26 01:11:56'),
(34, 35, 'Conversation 7', 'red theme', '2024-12-26 01:13:11'),
(35, 38, 'Conversation 1', 'todo', '2024-12-26 11:29:55'),
(36, 38, 'Conversation 1', 'add theme', '2024-12-26 11:30:25'),
(37, 38, 'Conversation 1', 'add date', '2024-12-26 11:32:20'),
(38, 38, 'Conversation 1', 'add edit', '2024-12-26 11:33:19'),
(39, 38, 'Conversation 1', 'buttons pattern must change based on theme', '2024-12-26 11:35:25'),
(40, 38, 'Conversation 1', 'export as excel', '2024-12-26 11:38:30'),
(41, 38, 'Conversation 2', 'kanban', '2024-12-26 11:43:57'),
(42, 38, 'Conversation 2', 'purple theme', '2024-12-26 13:16:47'),
(43, 38, 'Conversation 2', 'orange', '2024-12-26 13:17:36'),
(44, 38, 'Conversation 2', 'red', '2024-12-26 13:21:59'),
(45, 36, 'Conversation 1', 'todolist', '2024-12-27 11:11:12'),
(46, 39, 'Conversation 4', 'i want to do list', '2024-12-27 16:55:26'),
(47, 39, 'Conversation 4', 'make it modern ui', '2024-12-27 16:58:57'),
(48, 39, 'Conversation 6', 'i want modern ui', '2024-12-27 16:59:40'),
(49, 39, 'Conversation 6', 'i want modern ui', '2024-12-27 17:01:35'),
(50, 39, 'Conversation 6', 'make window resizable', '2024-12-27 17:28:26'),
(51, 39, 'Conversation 6', 'make window resizable by mouse', '2024-12-27 17:29:39'),
(52, 39, 'Conversation 6', 'resizing must be responsive', '2024-12-27 17:30:52'),
(53, 39, 'Conversation 5', 'i want todolist', '2024-12-27 18:36:37'),
(54, 39, 'Conversation 6d', 'todolist', '2024-12-27 18:39:12'),
(55, 39, 'Conversation 7', 'todolist', '2024-12-27 18:40:53'),
(56, 39, 'Conversation 8', 'todolist', '2024-12-27 18:44:13'),
(57, 39, 'Conversation 9', 'todolist', '2024-12-27 18:45:30'),
(58, 39, 'Conversation 6', 'resize not work well', '2024-12-27 20:06:06'),
(59, 39, 'Conversation 10', 'i want website display this image:  \"/images/124262771672665794.jpg\" ', '2024-12-28 00:58:51'),
(60, 39, 'Conversation 11', 'todolist', '2024-12-28 01:32:10'),
(61, 39, 'Conversation 11', 'add these feature : date', '2024-12-28 01:33:14'),
(62, 39, 'Conversation 11', 'i change my opinion , remove last added feature', '2024-12-28 01:34:06'),
(63, 39, 'Conversation 11', 'orange theme', '2024-12-28 12:52:48'),
(64, 39, 'Conversation 11', 'red theme', '2024-12-28 12:54:23'),
(65, 39, 'Conversation 11', 'purple', '2024-12-28 12:55:42'),
(66, 39, 'Conversation 6(2)', 'add modern ui', '2024-12-28 12:57:09'),
(67, 39, 'Conversation 6(2)', 'why always \"x\" start, i dont want this behavior', '2024-12-28 13:22:44'),
(68, 39, 'Conversation 6(2)', 'i want purple theme', '2024-12-28 13:26:37'),
(69, 39, 'Conversation 6(2)', 'make font like old', '2024-12-28 13:27:40'),
(70, 39, 'Conversation 6(2)', 'i want orange theme\n', '2024-12-28 13:28:41'),
(71, 39, 'Conversation 6(2)', 'add blur theme', '2024-12-28 13:31:27'),
(72, 39, 'Conversation 6(2)', 'yellow', '2024-12-28 13:32:13'),
(73, 39, 'Conversation 6(2)', 'i want bannana and apple instead x and o', '2024-12-28 13:33:10'),
(74, 39, 'Conversation 6(2)', 'green theme', '2024-12-28 13:42:18'),
(75, 23, 'Conversation 1', 'todo', '2024-12-28 17:05:54'),
(76, 23, 'Conversation 1', 'todolist', '2024-12-30 18:21:31'),
(77, 23, 'Conversation 2', 'kanban', '2024-12-30 18:22:28'),
(78, 39, 'Conversation 1', 'todolist', '2024-12-30 20:30:28'),
(79, 39, 'Conversation 2', 'todolist', '2024-12-30 20:31:53'),
(80, 39, 'Conversation 2', 'green theme', '2024-12-30 20:32:21'),
(81, 39, 'Conversation 3', 'kanban', '2024-12-30 20:33:03'),
(82, 39, 'Conversation 2', 'barbie theme', '2024-12-30 20:34:49'),
(83, 39, 'Conversation 2', 'i want testosterone theme', '2024-12-30 20:38:17'),
(84, 39, 'Conversation 2', 'barbie theme', '2024-12-30 23:05:56'),
(85, 39, 'Conversation 1', 'barbie theme', '2024-12-30 23:21:30'),
(86, 39, 'Conversation 1', 'barbie theme', '2024-12-30 23:22:28'),
(87, 39, 'Conversation 1', 'purple theme', '2024-12-30 23:32:17'),
(88, 39, 'Conversation 1', 'barbie theme', '2024-12-30 23:56:29'),
(89, 39, 'Conversation 2', 'green theme', '2024-12-31 00:25:51'),
(90, 39, 'Conversation 4', 'todolist', '2024-12-31 00:26:45'),
(91, 39, 'Conversation 4', 'green theme', '2024-12-31 00:28:02'),
(92, 39, 'Conversation 3', 'add edit', '2024-12-31 00:37:23'),
(93, 39, 'Conversation 2', 'i want ordre task using mouse', '2024-12-31 00:38:44'),
(94, 39, 'Conversation 2', 'add animations', '2024-12-31 00:39:32'),
(95, 39, 'Conversation 2', 'i want animation whene ordre tasks', '2024-12-31 00:40:21'),
(96, 39, 'Conversation 6', 'i want todolist and also ordre tasks using mouse with animations', '2024-12-31 00:41:50'),
(97, 39, 'Conversation 6', 'i want whene ordre tasks using mouse, tasks move before drop draged task', '2024-12-31 00:43:22'),
(98, 39, 'Conversation 6', 'ok but moves not correct', '2024-12-31 00:44:34'),
(99, 39, 'Conversation 7', 'extract text from pdf', '2024-12-31 11:47:08'),
(100, 39, 'Conversation 8', 'extract text from image (ocr)', '2024-12-31 11:48:09'),
(101, 39, 'Conversation 8', 'not extract text', '2024-12-31 11:49:33'),
(102, 39, 'Conversation 9', 'i want website display this image:\"/my folder/bg2.png\" ', '2025-01-01 21:00:05'),
(103, 39, 'Conversation 10', 'i want tool i give him images and texts and make this texts in centre of this images  (randomly)', '2025-01-03 19:30:12'),
(104, 39, 'Conversation 1', 'Todolist', '2025-01-03 23:45:54'),
(105, 39, 'Conversation 1', 'Barbie theme', '2025-01-03 23:46:47'),
(106, 39, 'Conversation 1', 'Add edit option', '2025-01-03 23:47:31'),
(107, 39, 'Conversation 32', 'todolist', '2025-01-10 00:29:37'),
(108, 39, 'Conversation 32', 'todolist', '2025-01-11 11:54:09'),
(109, 39, 'Conversation 32', 'add multi options', '2025-01-11 11:54:49'),
(110, 39, 'Conversation 1', 'Todolist', '2025-01-11 11:55:55'),
(111, 39, 'Conversation 32', 'hhh', '2025-01-11 12:00:40'),
(112, 39, 'Conversation 32', 'hhhh', '2025-01-11 12:02:32'),
(113, 39, 'Conversation 32', 'ooooo', '2025-01-11 12:02:55'),
(114, 39, 'Conversation 32', 'jjjj', '2025-01-11 12:03:16'),
(115, 39, 'Conversation 26', 'hhhh', '2025-01-11 12:05:33'),
(116, 39, 'Conversation 26', 'iiii', '2025-01-11 12:29:07'),
(117, 39, 'Conversation 3', 'Ghg', '2025-01-11 12:29:09'),
(118, 39, 'Conversation 3', 'Design', '2025-01-11 12:29:51'),
(119, 39, 'Conversation 28', 'hhh', '2025-01-11 12:36:36'),
(120, 39, 'Conversation 28', 'puple theme', '2025-01-11 13:18:45'),
(121, 39, 'Conversation 28', 'barbie theme', '2025-01-11 15:14:46'),
(122, 39, 'Conversation 28', 'bad boy theme', '2025-01-11 15:15:18'),
(123, 39, 'Conversation 28', 'good theme', '2025-01-11 15:18:32'),
(124, 39, 'Conversation 28', 'bubbles theme', '2025-01-11 15:19:29'),
(125, 39, 'Conversation 26', 'add notes', '2025-01-11 15:20:09'),
(126, 39, 'Conversation 26', 'make it beatiful', '2025-01-11 15:20:47'),
(127, 39, 'Conversation 29', 'todolist', '2025-01-11 15:24:12'),
(128, 39, 'Conversation 29', 'green', '2025-01-11 15:24:34'),
(129, 39, 'Conversation 1', 'Todolist', '2025-01-11 18:16:38'),
(130, 39, 'Conversation 1', 'Data not saved', '2025-01-11 18:17:12'),
(131, 39, 'Conversation 2', 'Todolist', '2025-01-11 18:17:57'),
(132, 39, 'Conversation 3', 'Kanban', '2025-01-11 19:56:20'),
(133, 39, 'Conversation 3', 'I want to be vertical', '2025-01-11 19:57:56'),
(134, 39, 'Conversation 32m', 'kanban', '2025-01-12 17:11:00'),
(135, 39, 'Conversation 33', 'kanban', '2025-01-12 17:12:50'),
(136, 39, 'Conversation 335', 'i want tool to convert my pdf to 3d flip book', '2025-01-12 17:21:04'),
(137, 39, 'Conversation 34', 'i want tool to convert my pdf to 3d flip book', '2025-01-12 17:38:16'),
(138, 39, 'Conversation 38', 'i want tool to convert my pdf to 3d flip book.\nuse best jquery library.', '2025-01-12 17:46:10'),
(139, 39, 'Conversation 38', 'it s very big ', '2025-01-12 17:48:02'),
(140, 39, 'Conversation 39', 'i want tool to convert images to 3d flip book , turn papers using mouse\n', '2025-01-12 17:48:53'),
(141, 39, 'Conversation 39', 'i want to be interactive with mouse (hover)', '2025-01-12 17:50:18'),
(142, 39, 'Conversation 39', 'i want save button to save it in list of flip books', '2025-01-12 17:51:08'),
(143, 39, 'Conversation 39', 'i want see list of saved flip books and whene click one of them display it', '2025-01-12 17:53:01'),
(144, 39, 'Conversation 39', 'i can t see list of saved flip books', '2025-01-12 17:54:05'),
(145, 39, 'Conversation 39', 'i want see list of saved flipbook in right', '2025-01-12 17:54:59'),
(146, 39, 'Conversation 39', 'after save seconde flip book it s delete first one', '2025-01-12 17:56:06'),
(147, 39, 'Conversation 39', 'i want alternative code', '2025-01-12 17:57:09'),
(148, 39, 'Conversation 39', 'code provide just create one flip book and list cant include more than one', '2025-01-12 17:58:51'),
(149, 39, 'Conversation 39', 'i want flip pages using mouse and 3d animation', '2025-01-12 18:00:40'),
(150, 39, 'Conversation 39', 'flip using mouse not work proprly', '2025-01-12 18:02:28'),
(151, 39, 'Conversation 30', 'kanban', '2025-01-12 23:33:52'),
(152, 39, 'Conversation 30', 'kanban', '2025-01-12 23:34:30'),
(153, 39, 'Conversation 30', 'theme sandrilla', '2025-01-12 23:38:02'),
(154, 39, 'Conversation 38', 'kanban', '2025-01-13 00:33:51'),
(155, 39, 'Conversation 38', 'kanban', '2025-01-13 00:34:15'),
(156, 39, 'Conversation 38', 'i cant see nothing', '2025-01-13 00:38:21'),
(157, 39, 'Conversation 40', 'kanban', '2025-01-13 00:38:23'),
(158, 39, 'Conversation 41', 'kanban', '2025-01-13 00:39:25'),
(159, 39, 'Conversation 42', 'kanban', '2025-01-13 00:49:07'),
(160, 39, 'Conversation 43', 'notes', '2025-01-13 00:50:23'),
(161, 39, 'Conversation 44', 'todolist', '2025-01-13 00:50:56'),
(162, 39, 'Conversation 44', 'edit option', '2025-01-13 00:51:20'),
(163, 39, 'Conversation 44', 'cinderella theme', '2025-01-13 00:52:31'),
(164, 39, 'Conversation 45', '3d flip book from images', '2025-01-13 00:53:39'),
(165, 39, 'Conversation 45', 'i want upload images from my device', '2025-01-13 00:54:07'),
(166, 39, 'Conversation 45', 'flip ordre not correct', '2025-01-13 00:54:50'),
(167, 39, 'Conversation 45', 'i want 3d and smouth flip', '2025-01-13 00:55:26'),
(168, 39, 'Conversation 46', 'kanban', '2025-01-13 01:01:16'),
(169, 39, 'Conversation 47', 'kanban', '2025-01-13 01:04:59'),
(170, 39, 'Conversation 48', 'kanban', '2025-01-13 01:05:30'),
(171, 39, 'kanban', 'kanban', '2025-01-13 01:07:21'),
(172, 39, 'Conversation 49', 'kanban', '2025-01-13 01:08:12'),
(173, 39, 'Conversation 9', 'Kanban', '2025-01-15 19:07:52'),
(174, 39, 'Conversation 2', 'Barbie theme', '2025-01-15 19:18:33'),
(175, 39, 'Conversation 10', 'Westher card', '2025-01-15 19:26:04'),
(176, 39, 'Conversation 11', 'Very beatiful landing page', '2025-01-15 19:29:21'),
(177, 39, 'Conversation 11', 'I want modern ui and colors', '2025-01-15 19:30:23'),
(178, 39, 'Conversation 12', 'Live weather usa', '2025-01-15 19:33:13'),
(179, 39, 'Conversation 12', 'Modern ui', '2025-01-15 19:35:50'),
(180, 39, 'Conversation 13', 'Calculator modern ui', '2025-01-15 19:48:56'),
(181, 39, 'Conversation 13', 'Add root', '2025-01-15 19:50:01');

-- --------------------------------------------------------

--
-- Structure de la table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `requestCount` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ip` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_userId` (`user_id`),
  UNIQUE KEY `requests_user_id` (`user_id`),
  UNIQUE KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `requests`
--

INSERT INTO `requests` (`id`, `user_id`, `requestCount`, `createdAt`, `updatedAt`, `ip`) VALUES
(11, 38, 10, '2024-12-26 11:29:40', '2024-12-26 13:21:59', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(12, 36, 1, '2024-12-27 11:11:00', '2024-12-27 11:11:12', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(13, 39, -9908, '2024-12-27 16:54:50', '2025-01-15 19:50:01', '{\"ip\":\"105.77.67.179\",\"country\":\"MA\"}'),
(14, 23, 3, '2024-12-28 17:05:41', '2024-12-30 18:22:28', '{\"ip\":\"::1\",\"country\":\"Unknown\"}');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `stars` int NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `name`, `stars`, `text`, `timestamp`) VALUES
(2, 27, 'Abdox Abdox (Abdox Abdox)', 3, '[\"55555\"]', '2024-12-24 14:46:37'),
(3, 22, 'name', 3, '[\"2222\"]', '2024-12-24 16:44:03'),
(4, 24, 'Azomas (undefined Azomas)', 4, '[\"ppppp\",\"jjo\"]', '2024-12-25 17:03:48'),
(5, 29, 'Abdellah Bouderbali (Bouderbali Abdellah)', 2, '[\"jjjj\"]', '2024-12-25 17:02:47'),
(6, 25, 'molay molay (molay molay)', 4, '[\"jjjj\"]', '2024-12-25 22:40:26'),
(7, 35, 'Abdellah Bouderbali (Bouderbali Abdellah)', 5, '[\"7777777777\",\"999999999999999\"]', '2024-12-25 23:59:03'),
(8, 39, 'name', 4, '[\"pllplplplplp\",\"Hhh\",\"Hhhh\",\"Yyy\",\"Iiuuu\",\"jjj\",\"bvbvbv\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '2025-01-10 22:50:08');

-- --------------------------------------------------------

--
-- Structure de la table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `subscriptionpagevisit`
--

DROP TABLE IF EXISTS `subscriptionpagevisit`;
CREATE TABLE IF NOT EXISTS `subscriptionpagevisit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ip` varchar(450) DEFAULT '0.0.0.0',
  `subscription_status` varchar(4550) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_SubscriptionPageVisit_userId_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `subscriptionpagevisit`
--

INSERT INTO `subscriptionpagevisit` (`id`, `user_id`, `createdAt`, `updatedAt`, `ip`, `subscription_status`) VALUES
(192, 39, '2025-01-06 19:47:25', '2025-01-06 19:47:25', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active and cancel At Period End'),
(193, 39, '2025-01-06 19:48:13', '2025-01-06 19:48:13', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(194, 39, '2025-01-06 19:48:35', '2025-01-06 19:48:35', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(195, 39, '2025-01-06 19:50:41', '2025-01-06 19:50:41', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(196, 39, '2025-01-06 19:52:34', '2025-01-06 19:52:34', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active and cancel At Period End'),
(197, 39, '2025-01-06 19:53:37', '2025-01-06 19:53:37', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(198, 39, '2025-01-06 22:09:17', '2025-01-06 22:09:17', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(199, 39, '2025-01-06 22:10:18', '2025-01-06 22:10:18', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(200, 39, '2025-01-06 22:50:27', '2025-01-06 22:50:27', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(201, 39, '2025-01-06 23:42:40', '2025-01-06 23:42:40', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(202, 39, '2025-01-06 23:46:12', '2025-01-06 23:46:12', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(203, 39, '2025-01-06 23:46:28', '2025-01-06 23:46:28', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(204, 39, '2025-01-06 23:55:12', '2025-01-06 23:55:12', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(205, 39, '2025-01-06 23:59:19', '2025-01-06 23:59:19', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(206, 39, '2025-01-06 23:59:40', '2025-01-06 23:59:40', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(207, 39, '2025-01-06 23:59:55', '2025-01-06 23:59:55', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(208, 39, '2025-01-07 00:02:26', '2025-01-07 00:02:26', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(209, 39, '2025-01-07 00:03:40', '2025-01-07 00:03:40', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(210, 39, '2025-01-07 00:20:37', '2025-01-07 00:20:37', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(211, 39, '2025-01-07 00:24:24', '2025-01-07 00:24:24', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(212, 39, '2025-01-07 00:25:11', '2025-01-07 00:25:11', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(213, 39, '2025-01-07 00:34:16', '2025-01-07 00:34:16', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(214, 39, '2025-01-07 00:36:01', '2025-01-07 00:36:01', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(215, 39, '2025-01-07 00:37:09', '2025-01-07 00:37:09', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(216, 39, '2025-01-07 00:39:34', '2025-01-07 00:39:34', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(217, 39, '2025-01-07 00:40:53', '2025-01-07 00:40:53', '{\"ip\":\"127.0.0.1\",\"country\":\"Unknown\"}', 'free'),
(218, 39, '2025-01-07 00:41:04', '2025-01-07 00:41:04', '{\"ip\":\"127.0.0.1\",\"country\":\"Unknown\"}', 'free'),
(219, 39, '2025-01-07 00:42:49', '2025-01-07 00:42:49', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(220, 39, '2025-01-07 00:49:37', '2025-01-07 00:49:37', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(221, 39, '2025-01-07 00:53:30', '2025-01-07 00:53:30', '{\"ip\":\"127.0.0.1\",\"country\":\"Unknown\"}', 'free'),
(222, 39, '2025-01-07 00:57:52', '2025-01-07 00:57:52', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(223, 39, '2025-01-07 00:59:27', '2025-01-07 00:59:27', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(224, 39, '2025-01-07 01:14:24', '2025-01-07 01:14:24', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(225, 39, '2025-01-07 01:15:52', '2025-01-07 01:15:52', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(226, 39, '2025-01-07 01:16:00', '2025-01-07 01:16:00', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(227, 39, '2025-01-07 01:16:06', '2025-01-07 01:16:06', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(228, 39, '2025-01-07 17:28:23', '2025-01-07 17:28:23', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(229, 39, '2025-01-07 17:29:09', '2025-01-07 17:29:09', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(230, 39, '2025-01-07 17:32:28', '2025-01-07 17:32:28', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(231, 39, '2025-01-07 17:32:38', '2025-01-07 17:32:38', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(232, 39, '2025-01-07 17:32:50', '2025-01-07 17:32:50', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(233, 39, '2025-01-07 17:38:57', '2025-01-07 17:38:57', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(234, 39, '2025-01-07 17:46:09', '2025-01-07 17:46:09', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(235, 39, '2025-01-07 17:46:28', '2025-01-07 17:46:28', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(236, 39, '2025-01-07 17:51:00', '2025-01-07 17:51:00', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(237, 39, '2025-01-07 17:52:14', '2025-01-07 17:52:14', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(238, 39, '2025-01-07 17:52:44', '2025-01-07 17:52:44', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(239, 39, '2025-01-07 17:53:05', '2025-01-07 17:53:05', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(240, 39, '2025-01-07 17:53:08', '2025-01-07 17:53:08', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(241, 39, '2025-01-07 17:53:23', '2025-01-07 17:53:23', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(242, 39, '2025-01-07 18:07:26', '2025-01-07 18:07:26', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(243, 39, '2025-01-07 18:07:42', '2025-01-07 18:07:42', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(244, 39, '2025-01-07 18:08:34', '2025-01-07 18:08:34', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(245, 39, '2025-01-07 18:10:34', '2025-01-07 18:10:34', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(246, 39, '2025-01-07 18:23:37', '2025-01-07 18:23:37', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(247, 39, '2025-01-07 18:24:02', '2025-01-07 18:24:02', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(248, 39, '2025-01-07 18:31:05', '2025-01-07 18:31:05', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(249, 39, '2025-01-07 18:35:35', '2025-01-07 18:35:35', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(250, 39, '2025-01-07 18:36:08', '2025-01-07 18:36:08', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(251, 39, '2025-01-07 18:39:33', '2025-01-07 18:39:33', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(252, 39, '2025-01-07 18:42:08', '2025-01-07 18:42:08', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(253, 39, '2025-01-07 18:49:44', '2025-01-07 18:49:44', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(254, 39, '2025-01-07 18:57:14', '2025-01-07 18:57:14', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(255, 39, '2025-01-07 19:04:43', '2025-01-07 19:04:43', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(256, 39, '2025-01-07 19:09:46', '2025-01-07 19:09:46', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(257, 39, '2025-01-07 19:12:17', '2025-01-07 19:12:17', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(258, 39, '2025-01-07 19:12:30', '2025-01-07 19:12:30', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(259, 39, '2025-01-07 19:19:56', '2025-01-07 19:19:56', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(260, 39, '2025-01-07 19:43:26', '2025-01-07 19:43:26', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(261, 39, '2025-01-07 19:43:26', '2025-01-07 19:43:26', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(262, 39, '2025-01-07 19:45:05', '2025-01-07 19:45:05', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(263, 39, '2025-01-07 19:47:45', '2025-01-07 19:47:45', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(264, 39, '2025-01-07 19:49:51', '2025-01-07 19:49:51', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(265, 39, '2025-01-07 19:51:26', '2025-01-07 19:51:26', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(266, 39, '2025-01-07 19:56:53', '2025-01-07 19:56:53', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(267, 39, '2025-01-07 19:59:38', '2025-01-07 19:59:38', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(268, 39, '2025-01-07 21:36:53', '2025-01-07 21:36:53', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(269, 39, '2025-01-07 21:48:26', '2025-01-07 21:48:26', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(270, 39, '2025-01-07 21:48:57', '2025-01-07 21:48:57', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(271, 39, '2025-01-07 23:31:52', '2025-01-07 23:31:52', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(272, 39, '2025-01-07 23:33:41', '2025-01-07 23:33:41', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(273, 39, '2025-01-07 23:34:43', '2025-01-07 23:34:43', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(274, 39, '2025-01-07 23:35:13', '2025-01-07 23:35:13', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(275, 39, '2025-01-07 23:36:18', '2025-01-07 23:36:18', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(276, 39, '2025-01-07 23:48:52', '2025-01-07 23:48:52', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(277, 39, '2025-01-08 00:00:35', '2025-01-08 00:00:35', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(278, 39, '2025-01-08 00:02:18', '2025-01-08 00:02:18', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(279, 39, '2025-01-08 00:12:08', '2025-01-08 00:12:08', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(280, 39, '2025-01-08 00:13:14', '2025-01-08 00:13:14', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(281, 39, '2025-01-08 00:15:56', '2025-01-08 00:15:56', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(282, 39, '2025-01-08 00:16:39', '2025-01-08 00:16:39', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(283, 39, '2025-01-08 00:16:52', '2025-01-08 00:16:52', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(284, 39, '2025-01-08 00:17:59', '2025-01-08 00:17:59', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(285, 39, '2025-01-08 00:21:12', '2025-01-08 00:21:12', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(286, 39, '2025-01-08 00:25:00', '2025-01-08 00:25:00', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(287, 39, '2025-01-08 00:29:06', '2025-01-08 00:29:06', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'active'),
(288, 39, '2025-01-08 00:29:30', '2025-01-08 00:29:30', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(289, 39, '2025-01-08 00:31:52', '2025-01-08 00:31:52', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(290, 39, '2025-01-08 00:32:31', '2025-01-08 00:32:31', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(291, 39, '2025-01-08 00:34:02', '2025-01-08 00:34:02', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(292, 39, '2025-01-08 00:37:31', '2025-01-08 00:37:31', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(293, 39, '2025-01-08 00:40:30', '2025-01-08 00:40:30', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(294, 39, '2025-01-08 00:45:42', '2025-01-08 00:45:42', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(295, 39, '2025-01-08 00:46:57', '2025-01-08 00:46:57', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(296, 39, '2025-01-08 00:51:01', '2025-01-08 00:51:01', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(297, 39, '2025-01-08 00:51:24', '2025-01-08 00:51:24', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(298, 39, '2025-01-08 00:52:12', '2025-01-08 00:52:12', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(299, 39, '2025-01-08 00:54:02', '2025-01-08 00:54:02', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(300, 39, '2025-01-08 00:54:20', '2025-01-08 00:54:20', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(301, 39, '2025-01-08 00:57:02', '2025-01-08 00:57:02', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'incomplete'),
(302, 39, '2025-01-08 00:58:22', '2025-01-08 00:58:22', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(303, 39, '2025-01-08 01:01:45', '2025-01-08 01:01:45', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(304, 39, '2025-01-08 01:03:13', '2025-01-08 01:03:13', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(305, 39, '2025-01-08 01:03:41', '2025-01-08 01:03:41', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(306, 39, '2025-01-08 01:04:12', '2025-01-08 01:04:12', '{\"ip\":\"105.158.26.100\",\"country\":\"MA\"}', 'free'),
(307, 39, '2025-01-08 17:56:37', '2025-01-08 17:56:37', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(308, 39, '2025-01-08 17:59:58', '2025-01-08 17:59:58', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(309, 39, '2025-01-08 18:00:15', '2025-01-08 18:00:15', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(310, 39, '2025-01-08 18:02:14', '2025-01-08 18:02:14', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(311, 39, '2025-01-08 18:11:56', '2025-01-08 18:11:56', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(312, 39, '2025-01-08 18:43:34', '2025-01-08 18:43:34', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(313, 39, '2025-01-08 18:43:59', '2025-01-08 18:43:59', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(314, 39, '2025-01-08 18:44:38', '2025-01-08 18:44:38', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(315, 39, '2025-01-08 18:49:55', '2025-01-08 18:49:55', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(316, 39, '2025-01-08 18:51:16', '2025-01-08 18:51:16', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(317, 39, '2025-01-08 18:53:35', '2025-01-08 18:53:35', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(318, 39, '2025-01-08 18:53:58', '2025-01-08 18:53:58', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(319, 39, '2025-01-08 18:56:12', '2025-01-08 18:56:12', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(320, 39, '2025-01-08 19:03:34', '2025-01-08 19:03:34', '{\"ip\":\"105.69.5.252\",\"country\":\"MA\"}', 'free'),
(321, 39, '2025-01-08 19:04:42', '2025-01-08 19:04:42', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(322, 39, '2025-01-08 19:09:50', '2025-01-08 19:09:50', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(323, 39, '2025-01-08 19:12:06', '2025-01-08 19:12:06', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(324, 39, '2025-01-08 19:16:29', '2025-01-08 19:16:29', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(325, 39, '2025-01-08 19:17:32', '2025-01-08 19:17:32', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(326, 39, '2025-01-08 19:17:59', '2025-01-08 19:17:59', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(327, 39, '2025-01-08 19:25:17', '2025-01-08 19:25:17', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(328, 39, '2025-01-08 19:35:31', '2025-01-08 19:35:31', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(329, 39, '2025-01-08 19:35:38', '2025-01-08 19:35:38', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(330, 39, '2025-01-08 19:38:44', '2025-01-08 19:38:44', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(331, 39, '2025-01-08 19:38:49', '2025-01-08 19:38:49', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(332, 39, '2025-01-08 19:39:07', '2025-01-08 19:39:07', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(333, 39, '2025-01-08 19:41:21', '2025-01-08 19:41:21', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(334, 39, '2025-01-08 19:41:51', '2025-01-08 19:41:51', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(335, 39, '2025-01-08 20:01:50', '2025-01-08 20:01:50', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(336, 39, '2025-01-08 20:05:33', '2025-01-08 20:05:33', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(337, 39, '2025-01-08 20:05:43', '2025-01-08 20:05:43', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(338, 39, '2025-01-08 20:05:51', '2025-01-08 20:05:51', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(339, 39, '2025-01-08 20:07:01', '2025-01-08 20:07:01', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(340, 39, '2025-01-08 20:07:29', '2025-01-08 20:07:29', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(341, 39, '2025-01-08 20:09:52', '2025-01-08 20:09:52', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(342, 39, '2025-01-08 20:10:06', '2025-01-08 20:10:06', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(343, 39, '2025-01-08 20:10:34', '2025-01-08 20:10:34', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(344, 39, '2025-01-08 20:13:55', '2025-01-08 20:13:55', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(345, 39, '2025-01-08 20:20:10', '2025-01-08 20:20:10', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(346, 39, '2025-01-08 20:22:58', '2025-01-08 20:22:58', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(347, 39, '2025-01-08 20:27:10', '2025-01-08 20:27:10', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(348, 39, '2025-01-08 20:27:32', '2025-01-08 20:27:32', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(349, 39, '2025-01-08 20:28:23', '2025-01-08 20:28:23', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(350, 39, '2025-01-08 20:28:58', '2025-01-08 20:28:58', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(351, 39, '2025-01-08 20:30:19', '2025-01-08 20:30:19', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(352, 39, '2025-01-08 20:32:19', '2025-01-08 20:32:19', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(353, 39, '2025-01-08 20:32:31', '2025-01-08 20:32:31', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(354, 39, '2025-01-08 20:33:36', '2025-01-08 20:33:36', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(355, 39, '2025-01-08 20:34:25', '2025-01-08 20:34:25', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(356, 39, '2025-01-08 20:39:57', '2025-01-08 20:39:57', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(357, 39, '2025-01-08 20:42:50', '2025-01-08 20:42:50', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(358, 39, '2025-01-08 20:44:15', '2025-01-08 20:44:15', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(359, 39, '2025-01-08 20:46:07', '2025-01-08 20:46:07', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(360, 39, '2025-01-08 20:46:37', '2025-01-08 20:46:37', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(361, 39, '2025-01-08 20:49:39', '2025-01-08 20:49:39', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(362, 39, '2025-01-08 20:52:55', '2025-01-08 20:52:55', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(363, 39, '2025-01-08 20:56:33', '2025-01-08 20:56:33', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(364, 39, '2025-01-08 20:56:42', '2025-01-08 20:56:42', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(365, 39, '2025-01-08 20:57:00', '2025-01-08 20:57:00', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(366, 39, '2025-01-08 20:57:05', '2025-01-08 20:57:05', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(367, 39, '2025-01-08 20:57:22', '2025-01-08 20:57:22', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(368, 39, '2025-01-08 20:57:33', '2025-01-08 20:57:33', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(369, 39, '2025-01-08 20:58:00', '2025-01-08 20:58:00', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(370, 39, '2025-01-08 21:04:51', '2025-01-08 21:04:51', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(371, 39, '2025-01-08 21:05:38', '2025-01-08 21:05:38', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(372, 39, '2025-01-08 21:06:06', '2025-01-08 21:06:06', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(373, 39, '2025-01-08 21:10:26', '2025-01-08 21:10:26', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(374, 39, '2025-01-08 21:13:19', '2025-01-08 21:13:19', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(375, 39, '2025-01-08 21:13:48', '2025-01-08 21:13:48', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(376, 39, '2025-01-08 21:50:04', '2025-01-08 21:50:04', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(377, 39, '2025-01-08 21:50:32', '2025-01-08 21:50:32', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(378, 39, '2025-01-08 21:55:28', '2025-01-08 21:55:28', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(379, 39, '2025-01-08 21:55:32', '2025-01-08 21:55:32', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(380, 39, '2025-01-08 21:58:09', '2025-01-08 21:58:09', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(381, 39, '2025-01-08 21:58:17', '2025-01-08 21:58:17', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(382, 39, '2025-01-08 22:02:38', '2025-01-08 22:02:38', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(383, 39, '2025-01-08 22:13:30', '2025-01-08 22:13:30', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(384, 39, '2025-01-08 22:17:35', '2025-01-08 22:17:35', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(385, 39, '2025-01-08 22:18:03', '2025-01-08 22:18:03', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'free'),
(386, 39, '2025-01-08 22:19:51', '2025-01-08 22:19:51', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(387, 39, '2025-01-08 22:20:10', '2025-01-08 22:20:10', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(388, 39, '2025-01-08 22:30:09', '2025-01-08 22:30:09', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(389, 39, '2025-01-08 22:30:45', '2025-01-08 22:30:45', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(390, 39, '2025-01-08 22:31:42', '2025-01-08 22:31:42', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(391, 39, '2025-01-08 22:34:53', '2025-01-08 22:34:53', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(392, 39, '2025-01-08 22:35:25', '2025-01-08 22:35:25', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(393, 39, '2025-01-08 22:35:47', '2025-01-08 22:35:47', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(394, 39, '2025-01-08 22:43:24', '2025-01-08 22:43:24', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(395, 39, '2025-01-08 22:46:23', '2025-01-08 22:46:23', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(396, 39, '2025-01-08 22:47:45', '2025-01-08 22:47:45', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(397, 39, '2025-01-08 22:48:18', '2025-01-08 22:48:18', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(398, 39, '2025-01-08 22:52:49', '2025-01-08 22:52:49', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(399, 39, '2025-01-08 22:53:20', '2025-01-08 22:53:20', '{\"ip\":\"105.157.175.224\",\"country\":\"MA\"}', 'active'),
(400, 39, '2025-01-08 23:39:01', '2025-01-08 23:39:01', '{\"ip\":\"102.78.84.5\",\"country\":\"MA\"}', 'free'),
(401, 39, '2025-01-08 23:39:55', '2025-01-08 23:39:55', '{\"ip\":\"102.78.84.5\",\"country\":\"MA\"}', 'active'),
(402, 39, '2025-01-09 00:13:09', '2025-01-09 00:13:09', '{\"ip\":\"105.69.5.252\",\"country\":\"MA\"}', 'active'),
(403, 39, '2025-01-09 13:04:37', '2025-01-09 13:04:37', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(404, 39, '2025-01-09 17:00:39', '2025-01-09 17:00:39', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(405, 39, '2025-01-09 17:41:13', '2025-01-09 17:41:13', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(406, 39, '2025-01-09 18:46:38', '2025-01-09 18:46:38', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(407, 39, '2025-01-09 18:48:07', '2025-01-09 18:48:07', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(408, 39, '2025-01-09 18:48:27', '2025-01-09 18:48:27', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incompletee'),
(409, 39, '2025-01-09 18:48:53', '2025-01-09 18:48:53', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incompletee'),
(410, 39, '2025-01-09 18:49:08', '2025-01-09 18:49:08', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'canceled'),
(411, 39, '2025-01-09 18:49:25', '2025-01-09 18:49:25', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'canceled5'),
(412, 39, '2025-01-09 18:50:16', '2025-01-09 18:50:16', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(413, 39, '2025-01-09 18:50:24', '2025-01-09 18:50:24', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(414, 39, '2025-01-09 18:50:41', '2025-01-09 18:50:41', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(415, 39, '2025-01-09 18:50:52', '2025-01-09 18:50:52', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incompletejj'),
(416, 39, '2025-01-09 18:51:13', '2025-01-09 18:51:13', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(417, 39, '2025-01-09 18:56:17', '2025-01-09 18:56:17', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'canceled'),
(418, 39, '2025-01-09 19:04:26', '2025-01-09 19:04:26', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'canceled'),
(419, 39, '2025-01-09 19:04:50', '2025-01-09 19:04:50', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(420, 39, '2025-01-09 19:05:05', '2025-01-09 19:05:05', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(421, 39, '2025-01-09 19:05:18', '2025-01-09 19:05:18', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incompletek'),
(422, 39, '2025-01-09 19:05:39', '2025-01-09 19:05:39', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(423, 39, '2025-01-09 19:06:31', '2025-01-09 19:06:31', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(424, 39, '2025-01-09 19:06:39', '2025-01-09 19:06:39', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(425, 39, '2025-01-09 19:06:55', '2025-01-09 19:06:55', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(426, 39, '2025-01-09 19:07:09', '2025-01-09 19:07:09', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'canceled'),
(427, 39, '2025-01-09 19:16:31', '2025-01-09 19:16:31', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(428, 39, '2025-01-09 19:16:51', '2025-01-09 19:16:51', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(429, 39, '2025-01-09 19:17:42', '2025-01-09 19:17:42', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(430, 39, '2025-01-09 19:17:52', '2025-01-09 19:17:52', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(431, 39, '2025-01-09 19:18:15', '2025-01-09 19:18:15', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(432, 39, '2025-01-09 19:18:27', '2025-01-09 19:18:27', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'canceled'),
(433, 39, '2025-01-09 19:18:58', '2025-01-09 19:18:58', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(434, 39, '2025-01-09 19:19:28', '2025-01-09 19:19:28', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'canceled'),
(435, 39, '2025-01-09 19:19:47', '2025-01-09 19:19:47', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(436, 39, '2025-01-09 19:19:56', '2025-01-09 19:19:56', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(437, 39, '2025-01-09 19:22:19', '2025-01-09 19:22:19', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(438, 39, '2025-01-09 19:43:02', '2025-01-09 19:43:02', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(439, 39, '2025-01-09 19:45:15', '2025-01-09 19:45:15', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(440, 39, '2025-01-09 19:51:07', '2025-01-09 19:51:07', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(441, 39, '2025-01-09 19:52:15', '2025-01-09 19:52:15', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(442, 39, '2025-01-09 19:52:59', '2025-01-09 19:52:59', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(443, 39, '2025-01-09 19:53:52', '2025-01-09 19:53:52', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(444, 39, '2025-01-09 19:59:35', '2025-01-09 19:59:35', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(445, 39, '2025-01-09 20:07:06', '2025-01-09 20:07:06', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(446, 39, '2025-01-09 20:08:41', '2025-01-09 20:08:41', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(447, 39, '2025-01-09 20:17:38', '2025-01-09 20:17:38', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(448, 39, '2025-01-09 20:18:09', '2025-01-09 20:18:09', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(449, 39, '2025-01-09 20:19:17', '2025-01-09 20:19:17', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(450, 39, '2025-01-09 20:19:32', '2025-01-09 20:19:32', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(451, 39, '2025-01-09 20:20:38', '2025-01-09 20:20:38', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(452, 39, '2025-01-09 20:20:52', '2025-01-09 20:20:52', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(453, 39, '2025-01-09 20:34:08', '2025-01-09 20:34:08', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(454, 39, '2025-01-09 20:42:11', '2025-01-09 20:42:11', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(455, 39, '2025-01-09 20:47:52', '2025-01-09 20:47:52', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'incomplete'),
(456, 39, '2025-01-09 20:49:43', '2025-01-09 20:49:43', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(457, 39, '2025-01-09 20:49:48', '2025-01-09 20:49:48', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(458, 39, '2025-01-09 20:50:05', '2025-01-09 20:50:05', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(459, 39, '2025-01-09 20:50:23', '2025-01-09 20:50:23', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(460, 39, '2025-01-09 20:50:28', '2025-01-09 20:50:28', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active and cancel At Period End'),
(461, 39, '2025-01-09 20:50:42', '2025-01-09 20:50:42', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(462, 39, '2025-01-09 20:51:19', '2025-01-09 20:51:19', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(463, 39, '2025-01-09 20:51:20', '2025-01-09 20:51:20', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(464, 39, '2025-01-09 20:52:18', '2025-01-09 20:52:18', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(465, 39, '2025-01-09 20:52:27', '2025-01-09 20:52:27', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(466, 39, '2025-01-09 20:55:28', '2025-01-09 20:55:28', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(467, 39, '2025-01-09 20:55:50', '2025-01-09 20:55:50', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'free'),
(468, 39, '2025-01-09 20:56:52', '2025-01-09 20:56:52', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(469, 39, '2025-01-09 20:57:23', '2025-01-09 20:57:23', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(470, 39, '2025-01-09 20:57:46', '2025-01-09 20:57:46', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(471, 39, '2025-01-09 20:58:14', '2025-01-09 20:58:14', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(472, 39, '2025-01-09 20:58:29', '2025-01-09 20:58:29', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(473, 39, '2025-01-09 21:04:27', '2025-01-09 21:04:27', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(474, 39, '2025-01-09 23:56:45', '2025-01-09 23:56:45', '{\"ip\":\"105.155.66.115\",\"country\":\"MA\"}', 'active'),
(475, 39, '2025-01-10 18:07:20', '2025-01-10 18:07:20', '{\"ip\":\"160.177.33.13\",\"country\":\"MA\"}', 'active'),
(476, 39, '2025-01-10 22:49:21', '2025-01-10 22:49:21', '{\"ip\":\"197.146.99.94\",\"country\":\"MA\"}', 'active'),
(477, 39, '2025-01-12 00:42:19', '2025-01-12 00:42:19', '{\"ip\":\"197.146.107.45\",\"country\":\"MA\"}', 'active'),
(478, 39, '2025-01-12 00:42:41', '2025-01-12 00:42:41', '{\"ip\":\"197.146.107.45\",\"country\":\"MA\"}', 'active'),
(479, 39, '2025-01-12 20:05:13', '2025-01-12 20:05:13', '{\"ip\":\"197.146.107.45\",\"country\":\"MA\"}', 'active'),
(480, 39, '2025-01-12 20:08:00', '2025-01-12 20:08:00', '{\"ip\":\"197.146.107.45\",\"country\":\"MA\"}', 'active'),
(481, 39, '2025-01-12 20:08:22', '2025-01-12 20:08:22', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(482, 39, '2025-01-12 20:11:09', '2025-01-12 20:11:09', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(483, 39, '2025-01-12 20:11:54', '2025-01-12 20:11:54', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(484, 39, '2025-01-13 00:21:20', '2025-01-13 00:21:20', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(485, 39, '2025-01-13 01:03:50', '2025-01-13 01:03:50', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(486, 39, '2025-01-15 17:38:52', '2025-01-15 17:38:52', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(487, 39, '2025-01-15 17:38:57', '2025-01-15 17:38:57', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'active'),
(488, 39, '2025-01-15 17:40:27', '2025-01-15 17:40:27', '{\"ip\":\"::1\",\"country\":\"Unknown\"}', 'free'),
(489, 39, '2025-01-15 19:01:58', '2025-01-15 19:01:58', '{\"ip\":\"105.77.67.179\",\"country\":\"MA\"}', 'free'),
(490, 39, '2025-01-15 19:04:59', '2025-01-15 19:04:59', '{\"ip\":\"105.77.67.179\",\"country\":\"MA\"}', 'free');

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `stripeSubscriptionId` varchar(191) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `cancelAtPeriodEnd` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripeSubscriptionId` (`stripeSubscriptionId`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `status`, `startDate`, `endDate`, `stripeSubscriptionId`, `createdAt`, `updatedAt`, `cancelAtPeriodEnd`) VALUES
(30, 395, 'active', '2025-01-15 19:06:44', '2025-02-15 19:06:44', 'sub_1QhbvMIv97lOp7hMF9Tb9lvZ', '2025-01-15 19:06:52', '2025-01-15 19:06:54', 0),
(28, 390, 'active', '2025-01-08 23:39:42', '2025-02-08 23:39:42', 'sub_1Qf8qgIv97lOp7hMOjMIBAt1', '2025-01-08 23:39:45', '2025-01-09 20:18:24', 0),
(29, 390, 'active', '2025-01-09 20:20:16', '2025-02-09 20:20:16', 'sub_1QfSDEIv97lOp7hMZxeQlyQG', '2025-01-09 20:20:24', '2025-01-09 20:49:06', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(191) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `googleId` varchar(255) DEFAULT NULL,
  `apiKey` text,
  `stripeCustomerId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `name` varchar(1910) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `googleId`, `apiKey`, `stripeCustomerId`, `createdAt`, `updatedAt`, `name`) VALUES
(22, 'hhh@example.com', '$2b$10$mloiXYnkxx2q2MOtbKfiae2S3uGTs1eueVdxyVmdLIfgvBaVeADLS', NULL, '\"{}\"', NULL, '2024-12-24 11:54:10', '2024-12-24 12:20:17', 'name'),
(23, '444@example.com', '$2b$10$NmS/kSWk.kbQ3NdDujlniu3adZZ3ZwQGWG4mOPYV5nj6AH/iJALqO', NULL, '\"{\\\"geminiApiKey\\\":\\\"AIzaSyDEewmmtYxVFhcd2_rcRmxA4O30kWWoqhU\\\",\\\"claudeApiKey\\\":\\\"Yyhh\\\"}\"', 'cus_RTysoUn8IQHCtv', '2024-12-24 11:57:39', '2025-01-03 23:41:55', 'name'),
(24, 'azomas.team@gmail.com', NULL, '113641000005599363363', '\"{\\\"openaiApiKey\\\":\\\"iiii\\\",\\\"geminiApiKey\\\":\\\"AIzaSyDEewmmtYxVFhcd2_rcRmxA4O30kWWoqhU\\\"}\"', NULL, '2024-12-24 12:27:19', '2024-12-25 17:06:14', 'Azomas (undefined Azomas)'),
(27, 'abdollllahbd@gmail.com', NULL, '109261947207701456591', '\"{\\\"openaiApiKey\\\":\\\"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\\\",\\\"geminiApiKey\\\":\\\"AIzaSyDEewmmtYxVFhcd2_rcRmxA4O30kWWoqhU\\\"}\"', NULL, '2024-12-24 12:40:03', '2024-12-25 12:01:27', 'Abdox Abdox (Abdox Abdox)'),
(28, 'abdellah.bouderbali@gmail.com', NULL, '102556584114415915227', '\"{\\\"openaiApiKey\\\":\\\"oioioi\\\"}\"', 'cus_RTJga1X5mnhePK', '2024-12-24 12:42:35', '2024-12-26 19:49:19', 'Abdellah Bouderbali (Bouderbali Abdellah)'),
(30, 'abdolahbidi@gmail.com', NULL, '117742165381388750575', '\"{\\\"geminiApiKey\\\":\\\"iiii\\\",\\\"mistralaiApiKey\\\":\\\"ddd\\\",\\\"openaiApiKey\\\":\\\"qqqqqqqq\\\",\\\"claudeApiKey\\\":\\\"ddddd\\\"}\"', NULL, '2024-12-25 18:09:25', '2024-12-25 23:19:30', 'abdolah bdi (bdi abdolah)'),
(35, 'abdolahbd@gmail.com', NULL, '104601619262933528622', '\"{\\\"claudeApiKey\\\":\\\"claudeeeee7\\\",\\\"geminiApiKey\\\":\\\"AIzaSyDEewmmtYxVFhcd2_rcRmxA4O30kWWoqhU\\\",\\\"mistralaiApiKey\\\":\\\"mistraliiii7\\\",\\\"openaiApiKey\\\":\\\"AIzaSyDEewmmtYxVFhcd2_rcRmxA4O30kWWoqhU\\\"}\"', 'cus_RTaoZH4Wwk4dQb', '2024-12-25 19:47:18', '2024-12-27 13:30:33', 'Abdellah Bouderbali (Bouderbali Abdellah)'),
(36, 'abdollahbd@gmail.com', NULL, '104422422546753330781', '\"{\\\"claudeApiKey\\\":\\\"vvvv\\\",\\\"openaiApiKey\\\":\\\"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\\\"}\"', 'cus_RTYbRYjxOHG6Po', '2024-12-25 23:36:41', '2024-12-27 11:14:07', 'عبد تائب (تائب عبد)'),
(38, 'wiawiabd@gmail.com', NULL, '106397980485138379224', '\"{}\"', 'cus_RTZEyv4FWsn4Im', '2024-12-26 11:26:38', '2024-12-27 11:52:51', 'molay molay (molay molay)'),
(39, '000@example.com', '$2b$10$Bq/r/IxgEpR/lDaKgfuqLeVeq8XMpL.eSAja8vkJ28eFQOPtPndF6', NULL, '\"{\\\"claudeApiKey\\\":\\\"jjjjjjj\\\",\\\"geminiApiKey\\\":\\\"AIzaSyDEewmmtYxVFhcd2_rcRmxA4O30kWWoqhU\\\"}\"', 'cus_RTflhWuuKfgJmN', '2024-12-27 15:00:03', '2025-01-11 11:53:45', 'name'),
(40, 'abdollahbd@ghjk.com', '$2b$10$gEP1jYiUZGUCD31kics4/uMgB93stnh7NikCgpfuX0lfjdpj9T76S', NULL, '\"{}\"', NULL, '2024-12-28 12:10:46', '2024-12-28 12:10:46', 'name'),
(41, '99@example.com', '$2b$10$zlb/QXpVaMv9T5bSJVU1WemyiU8mXS3OKF87ByFEJe/qqaVGl/Txm', NULL, '\"{}\"', 'cus_RTygJbZ43pnpOG', '2024-12-28 14:09:35', '2024-12-28 14:10:43', 'name');

-- --------------------------------------------------------

--
-- Structure de la table `visits`
--

DROP TABLE IF EXISTS `visits`;
CREATE TABLE IF NOT EXISTS `visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `ip` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `visits`
--

INSERT INTO `visits` (`id`, `source`, `createdAt`, `ip`) VALUES
(491, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null,\"URL\":\"https://www.google.com/\",\"hash\":\"\",\"host\":\"www.google.com\",\"hostname\":\"www.google.com\",\"href\":\"https://www.google.com/\",\"origin\":\"https://www.google.com\",\"password\":\"\",\"pathname\":\"/\",\"port\":\"\",\"protocol\":\"https:\",\"search\":\"\",\"searchParams\":{},\"username\":\"\"}', '2025-02-16 19:40:37', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(492, '{\"visitedPage\":\"Home page\",\"fromExample\":\"true\",\"exampleURL\":\"/chat/Conversation2_conversation.bin\"}', '2025-02-17 22:46:23', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(493, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-18 20:08:28', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(494, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-18 20:14:32', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(495, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-18 20:14:32', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(496, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-18 20:14:59', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(497, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-18 21:48:04', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(498, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-18 22:45:13', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(499, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-26 19:28:15', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(500, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-26 19:29:48', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(501, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-27 19:23:08', '{\"ip\":\"::1\",\"country\":\"Unknown\"}'),
(502, '{\"visitedPage\":\"Chat page\",\"fromExample\":null,\"exampleURL\":null}', '2025-02-27 19:57:58', '{\"ip\":\"::1\",\"country\":\"Unknown\"}');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cancels`
--
ALTER TABLE `cancels`
  ADD CONSTRAINT `cancels_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `error_requests`
--
ALTER TABLE `error_requests`
  ADD CONSTRAINT `fk_error_requests_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `prompts`
--
ALTER TABLE `prompts`
  ADD CONSTRAINT `fk_prompts_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `subscriptionpagevisit`
--
ALTER TABLE `subscriptionpagevisit`
  ADD CONSTRAINT `fk_SubscriptionPageVisit_userId` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
