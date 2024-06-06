-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 06 juin 2024 à 11:31
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `school_project`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CP', '2024-05-30 14:45:48', '2024-05-30 14:45:48'),
(2, 'CE1', '2024-05-30 14:46:36', '2024-05-30 14:46:36'),
(3, 'CE2', '2024-05-30 14:47:15', '2024-05-30 14:47:15'),
(4, 'CM1', '2024-05-30 14:47:31', '2024-05-30 14:47:31'),
(5, 'CM2', '2024-05-30 14:47:57', '2024-05-30 14:47:57');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_29_225636_create_classes_table', 2),
(6, '2024_05_29_225628_create_students_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MwX3vilBAtrIq7nyZUFzvSpwl2XZKQfgeGRAfM18', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzVMbDQ4ejVoaUJGQk9kQllMNHM1MERSTnhHdnZjOElYdlptUFVSdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717498381);

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `birthdate`, `address`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'Jean', 'Dupont', '2018-01-15', '4, Rue des Écoles, 67000 Strasbourg', 1, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(2, 'Marie', 'Lefevre', '2017-04-20', '7, Rue de la République, 67100 Schiltigheim', 2, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(3, 'Pierre', 'Martin', '2016-08-12', '10, Rue du Général de Gaulle, 67200 Strasbourg', 3, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(4, 'Charlotte', 'Roux', '2015-09-25', '15, Rue des Jardins, 67000 Bischheim', 4, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(5, 'Luc', 'Dubois', '2014-12-18', '20, Rue de la Gare, 67000 Strasbourg', 5, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(6, 'Camille', 'Bernard', '2018-03-02', '25, Rue du Faubourg National, 67100 Strasbourg', 1, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(7, 'Manon', 'Thomas', '2017-05-10', '30, Rue des Héros, 67200 Strasbourg', 2, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(8, 'Louis', 'Petit', '2016-09-07', '35, Rue du Commerce, 67100 Schiltigheim', 3, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(9, 'Chloé', 'Robert', '2015-10-20', '40, Rue de la Paix, 67000 Strasbourg', 4, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(10, 'Antoine', 'Richard', '2014-11-12', '45, Rue des Violettes, 67200 Strasbourg', 5, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(11, 'Emma', 'Moreau', '2018-02-25', '50, Rue de l\'Église, 67000 Eckbolsheim', 1, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(12, 'Théo', 'Garcia', '2017-03-20', '55, Rue des Sports, 67100 Strasbourg', 2, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(13, 'Inès', 'Fournier', '2016-07-12', '60, Rue des Trois Épis, 67200 Strasbourg', 3, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(14, 'Hugo', 'Martinez', '2015-08-25', '65, Rue de la Liberté, 67000 Strasbourg', 4, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(15, 'Léa', 'Lopez', '2014-12-18', '70, Rue du Rhin, 67100 Strasbourg', 5, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(16, 'Raphaël', 'Sanchez', '2018-01-02', '75, Rue du Rempart, 67000 Strasbourg', 1, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(17, 'Sarah', 'Perrot', '2017-04-05', '80, Rue de la Mairie, 67100 Schiltigheim', 2, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(18, 'Mathis', 'Robin', '2016-08-30', '85, Rue du Vieux Moulin, 67200 Strasbourg', 3, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(19, 'Eva', 'Girard', '2015-10-10', '90, Rue du Château, 67000 Ostwald', 4, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(20, 'Lucas', 'Bertrand', '2014-11-25', '95, Rue de la Poste, 67000 Strasbourg', 5, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(21, 'Clara', 'Garnier', '2018-03-12', '100, Rue de la Forêt, 67100 Strasbourg', 1, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(22, 'Enzo', 'Meyer', '2017-05-20', '105, Rue des Fleurs, 67200 Strasbourg', 2, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(23, 'Lola', 'Jacquet', '2016-07-07', '110, Rue du Temple, 67000 Strasbourg', 3, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(24, 'Nathan', 'Renard', '2015-09-15', '115, Rue de la Poterie, 67100 Schiltigheim', 4, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(25, 'Léna', 'Perrin', '2014-12-30', '120, Rue de la Colline, 67200 Strasbourg', 5, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(26, 'Tom', 'Gauthier', '2018-01-05', '125, Rue de la Tour, 67000 Lingolsheim', 1, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(27, 'Emma', 'Boucher', '2017-03-10', '130, Rue du Puits, 67100 Strasbourg', 2, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(28, 'Louis', 'Martel', '2016-05-25', '135, Rue de la Fontaine, 67200 Strasbourg', 3, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(29, 'Jade', 'Legrand', '2015-08-15', '140, Rue du Moulin, 67000 Strasbourg', 4, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(30, 'Gabriel', 'Giraud', '2014-10-20', '145, Rue de la Ferme, 67000 Schiltigheim', 5, '2024-06-01 23:00:41', '2024-06-01 23:00:41'),
(31, 'Liam', 'Durand', '2018-04-20', '150, Rue du Printemps, 67000 Strasbourg', 1, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(32, 'Noah', 'Lemoine', '2018-06-15', '155, Rue de l\'Université, 67100 Schiltigheim', 1, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(33, 'Mia', 'Morel', '2017-08-24', '160, Rue des Acacias, 67200 Strasbourg', 2, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(34, 'Emma', 'Dupuis', '2017-10-05', '165, Rue de la Chapelle, 67000 Bischheim', 2, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(35, 'Lucas', 'Faure', '2016-11-30', '170, Rue des Artisans, 67000 Strasbourg', 3, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(36, 'Louis', 'Clement', '2016-12-15', '175, Rue des Lilas, 67100 Schiltigheim', 3, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(37, 'Olivia', 'Dubois', '2016-05-20', '180, Rue de la Montagne, 67200 Strasbourg', 3, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(38, 'Ava', 'Rousseau', '2015-07-30', '185, Rue du Maréchal Foch, 67000 Strasbourg', 4, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(39, 'Sophia', 'Girard', '2015-09-05', '190, Rue du Grand Rabbin, 67100 Schiltigheim', 4, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(40, 'Ethan', 'Muller', '2015-10-15', '195, Rue de la Gare, 67200 Strasbourg', 4, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(41, 'Isabella', 'Lefevre', '2014-01-20', '200, Rue de la Fontaine, 67000 Bischheim', 5, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(42, 'Amelia', 'Berger', '2014-03-05', '205, Rue de la Forêt, 67000 Strasbourg', 5, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(43, 'Lucas', 'Fournier', '2018-07-15', '210, Rue de la République, 67100 Schiltigheim', 1, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(44, 'Mason', 'Martineau', '2017-09-05', '215, Rue des Écoles, 67200 Strasbourg', 2, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(45, 'James', 'Lambert', '2016-10-25', '220, Rue des Bouleaux, 67000 Strasbourg', 3, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(46, 'Benjamin', 'Poirier', '2015-11-30', '225, Rue des Rosiers, 67100 Schiltigheim', 4, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(47, 'Elijah', 'Renaud', '2014-02-10', '230, Rue des Chênes, 67200 Strasbourg', 5, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(48, 'Charlotte', 'Gautier', '2018-08-10', '235, Rue des Peupliers, 67000 Bischheim', 1, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(49, 'Henry', 'Perron', '2017-07-15', '240, Rue des Tilleuls, 67100 Strasbourg', 2, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(50, 'Samuel', 'Normand', '2014-04-05', '245, Rue des Ormes, 67200 Strasbourg', 5, '2024-06-01 23:44:44', '2024-06-01 23:44:44'),
(51, 'Liam', 'Durand', '2018-04-20', '150, Rue du Printemps, 67000 Strasbourg', 1, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(52, 'Noah', 'Lemoine', '2018-06-15', '155, Rue de l\'Université, 67100 Schiltigheim', 1, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(53, 'Mia', 'Morel', '2017-08-24', '160, Rue des Acacias, 67200 Strasbourg', 2, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(54, 'Emma', 'Dupuis', '2017-10-05', '165, Rue de la Chapelle, 67000 Bischheim', 2, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(55, 'Lucas', 'Faure', '2016-11-30', '170, Rue des Artisans, 67000 Strasbourg', 3, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(56, 'Louis', 'Clement', '2016-12-15', '175, Rue des Lilas, 67100 Schiltigheim', 3, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(57, 'Olivia', 'Dubois', '2016-05-20', '180, Rue de la Montagne, 67200 Strasbourg', 3, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(58, 'Ava', 'Rousseau', '2015-07-30', '185, Rue du Maréchal Foch, 67000 Strasbourg', 4, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(59, 'Sophia', 'Girard', '2015-09-05', '190, Rue du Grand Rabbin, 67100 Schiltigheim', 4, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(60, 'Ethan', 'Muller', '2015-10-15', '195, Rue de la Gare, 67200 Strasbourg', 4, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(61, 'Isabella', 'Lefevre', '2014-01-20', '200, Rue de la Fontaine, 67000 Bischheim', 5, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(62, 'Amelia', 'Berger', '2014-03-05', '205, Rue de la Forêt, 67000 Strasbourg', 5, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(63, 'Lucas', 'Fournier', '2018-07-15', '210, Rue de la République, 67100 Schiltigheim', 1, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(64, 'Mason', 'Martineau', '2017-09-05', '215, Rue des Écoles, 67200 Strasbourg', 2, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(65, 'James', 'Lambert', '2016-10-25', '220, Rue des Bouleaux, 67000 Strasbourg', 3, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(66, 'Benjamin', 'Poirier', '2015-11-30', '225, Rue des Rosiers, 67100 Schiltigheim', 4, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(67, 'Elijah', 'Renaud', '2014-02-10', '230, Rue des Chênes, 67200 Strasbourg', 5, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(68, 'Charlotte', 'Gautier', '2018-08-10', '235, Rue des Peupliers, 67000 Bischheim', 1, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(69, 'Henry', 'Perron', '2017-07-15', '240, Rue des Tilleuls, 67100 Strasbourg', 2, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(70, 'Samuel', 'Normand', '2014-04-05', '245, Rue des Ormes, 67200 Strasbourg', 5, '2024-06-01 23:50:02', '2024-06-01 23:50:02'),
(71, 'Emily', 'Petit', '2014-11-25', '285, Rue des Fleurs, 67000 Strasbourg', 3, '2024-06-01 23:54:24', '2024-06-01 23:54:24'),
(72, 'Chloe', 'Martin', '2012-07-14', '290, Rue de la Justice, 67200 Strasbourg', 5, '2024-06-01 23:55:59', '2024-06-01 23:55:59'),
(73, 'Ethan', 'Bernard', '2012-09-22', '295, Rue du Faubourg, 67100 Schiltigheim', 5, '2024-06-01 23:55:59', '2024-06-01 23:55:59'),
(74, 'Sophia', 'Robert', '2013-02-28', '300, Rue des Romains, 67000 Strasbourg', 5, '2024-06-01 23:55:59', '2024-06-01 23:55:59'),
(75, 'Aiden', 'Thomas', '2012-11-03', '305, Rue des Frères, 67000 Bischheim', 5, '2024-06-01 23:55:59', '2024-06-01 23:55:59'),
(76, 'Ella', 'Richard', '2013-05-16', '310, Rue des Roses, 67100 Strasbourg', 5, '2024-06-01 23:55:59', '2024-06-01 23:55:59'),
(77, 'Liam', 'Dubois', '2014-07-20', '315, Rue des Écoles, 67100 Schiltigheim', 3, '2024-06-01 23:57:22', '2024-06-01 23:57:22'),
(78, 'Ella', 'Leroy', '2014-09-05', '320, Rue des Fleurs, 67000 Strasbourg', 3, '2024-06-01 23:57:22', '2024-06-01 23:57:22'),
(79, 'Noah', 'Roux', '2014-11-12', '325, Rue du Printemps, 67200 Strasbourg', 3, '2024-06-01 23:57:22', '2024-06-01 23:57:22'),
(80, 'Emma', 'Lefevre', '2015-03-18', '330, Rue de la République, 67200 Strasbourg', 4, '2024-06-01 23:57:59', '2024-06-01 23:57:59'),
(81, 'Lucas', 'Berger', '2015-05-29', '335, Rue des Acacias, 67000 Schiltigheim', 4, '2024-06-01 23:57:59', '2024-06-01 23:57:59'),
(82, 'Olivia', 'Garnier', '2015-07-07', '340, Rue du Maréchal Foch, 67100 Bischheim', 4, '2024-06-01 23:57:59', '2024-06-01 23:57:59'),
(83, 'Léo', 'Perrin', '2016-08-10', '345, Rue des Lilas, 67000 Strasbourg', 1, '2024-06-01 23:58:57', '2024-06-01 23:58:57'),
(84, 'Zoé', 'Renaud', '2016-10-25', '350, Rue de la Montagne, 67100 Schiltigheim', 1, '2024-06-01 23:58:57', '2024-06-01 23:58:57'),
(85, 'Louis', 'Lambert', '2017-01-05', '355, Rue des Écoles, 67200 Strasbourg', 1, '2024-06-01 23:58:57', '2024-06-01 23:58:57'),
(86, 'Jade', 'Martel', '2017-03-15', '360, Rue des Roses, 67000 Bischheim', 1, '2024-06-01 23:58:57', '2024-06-01 23:58:57'),
(87, 'Gabriel', 'Fontaine', '2017-05-20', '365, Rue du Printemps, 67100 Strasbourg', 1, '2024-06-01 23:58:57', '2024-06-01 23:58:57'),
(88, 'Léa', 'Girard', '2017-07-30', '370, Rue de la République, 67200 Schiltigheim', 1, '2024-06-01 23:58:57', '2024-06-01 23:58:57'),
(89, 'Adam', 'Dupont', '2016-04-12', '375, Rue des Violettes, 67100 Strasbourg', 2, '2024-06-01 23:59:30', '2024-06-01 23:59:30'),
(90, 'Chloé', 'Gauthier', '2016-06-28', '380, Rue du Faubourg, 67200 Schiltigheim', 2, '2024-06-01 23:59:30', '2024-06-01 23:59:30'),
(91, 'Léo', 'Lemoine', '2016-09-10', '385, Rue de la Liberté, 67000 Bischheim', 2, '2024-06-01 23:59:30', '2024-06-01 23:59:30'),
(92, 'Louise', 'Perrin', '2017-01-25', '390, Rue des Lilas, 67100 Strasbourg', 2, '2024-06-01 23:59:30', '2024-06-01 23:59:30'),
(93, 'Thomas', 'Lambert', '2017-03-30', '395, Rue de la Montagne, 67200 Schiltigheim', 2, '2024-06-01 23:59:30', '2024-06-01 23:59:30'),
(94, 'Alice', 'Martel', '2017-06-05', '400, Rue des Roses, 67000 Strasbourg', 2, '2024-06-01 23:59:30', '2024-06-01 23:59:30'),
(95, 'Raphaël', 'Fontaine', '2017-08-20', '405, Rue du Printemps, 67100 Bischheim', 2, '2024-06-01 23:59:30', '2024-06-01 23:59:30'),
(96, 'Lina', 'Girard', '2017-10-31', '410, Rue de la République, 67200 Schiltigheim', 2, '2024-06-01 23:59:30', '2024-06-01 23:59:30');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
