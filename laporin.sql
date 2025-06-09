-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2025 pada 03.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laporin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `edited_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `parent_comment_id` int(10) UNSIGNED DEFAULT NULL,
  `upvote_count` bigint(20) UNSIGNED NOT NULL,
  `is_edited` tinyint(4) NOT NULL,
  `downvote_count` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `created_at`, `edited_at`, `is_deleted`, `parent_comment_id`, `upvote_count`, `is_edited`, `downvote_count`) VALUES
(1, 1, 20, 'Maju terus bang 🫡', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 0),
(2, 2, 42, 'Fix ini harus ditindak', '2025-06-01 18:28:35', NULL, 0, NULL, 5, 0, 0),
(3, 3, 22, 'Dukung penuh buat pelapor', '2025-06-01 18:28:35', NULL, 0, NULL, 8, 0, 2),
(4, 4, 31, 'Suka nih bahasan kayak gini 👏', '2025-06-01 18:28:35', NULL, 0, NULL, 7, 0, 0),
(5, 5, 1, 'Maju terus bang 🫡', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 0, 1, 0),
(6, 6, 4, 'Warga +62 emang unik', '2025-06-01 18:28:35', NULL, 0, NULL, 0, 0, 2),
(7, 7, 25, 'Fix ini harus ditindak', '2025-06-01 18:28:35', NULL, 0, NULL, 0, 0, 0),
(8, 8, 2, 'Bener, yang penting tetap waspada', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 2, 1, 2),
(9, 9, 6, 'Gue juga ngalamin ini kemarin 😭', '2025-06-01 18:28:35', NULL, 0, NULL, 1, 0, 3),
(10, 10, 14, 'Keren kontennya, lanjutkan!', '2025-06-01 18:28:35', NULL, 0, NULL, 4, 0, 1),
(11, 11, 9, 'Makanya jangan suka asal nyetir wkwk', '2025-06-01 18:28:35', NULL, 0, NULL, 0, 0, 1),
(12, 12, 8, 'Pernah liat hal serupa di daerah gw', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 2, 1, 3),
(13, 13, 16, 'Bener, yang penting tetap waspada', '2025-06-01 18:28:35', NULL, 0, NULL, 3, 0, 3),
(14, 14, 42, 'Wah baru tau, thanks infonya!', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, 1, 0, 1, 0),
(15, 15, 21, 'Wah baru tau, thanks infonya!', '2025-06-01 18:28:35', NULL, 0, NULL, 8, 0, 0),
(16, 16, 6, 'Fix ini harus ditindak', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, 1, 1, 1, 5),
(17, 17, 15, 'Wah baru tau, thanks infonya!', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, 1, 5, 1, 0),
(18, 18, 52, 'Dukung penuh buat pelapor', '2025-06-01 18:28:35', NULL, 0, NULL, 3, 0, 0),
(19, 19, 44, 'Maju terus bang 🫡', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 4, 1, 3),
(20, 20, 44, 'Bener, yang penting tetap waspada', '2025-06-01 18:28:35', NULL, 0, 15, 4, 0, 0),
(21, 21, 55, 'Maju terus bang 🫡', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 4),
(22, 22, 49, 'Maju terus bang 🫡', '2025-06-01 18:28:35', NULL, 0, NULL, 1, 0, 0),
(23, 23, 46, 'Real banget sih ini 😭', '2025-06-01 18:28:35', NULL, 0, 7, 6, 0, 1),
(24, 24, 11, 'Ini baru konten yang edukatif!', '2025-06-01 18:28:35', NULL, 0, NULL, 2, 0, 0),
(25, 25, 7, 'Kocak banget sih elu 😆', '2025-06-01 18:28:35', NULL, 0, 7, 5, 0, 0),
(26, 26, 36, 'Keren kontennya, lanjutkan!', '2025-06-01 18:28:35', NULL, 0, NULL, 0, 0, 3),
(27, 27, 44, 'Keren kontennya, lanjutkan!', '2025-06-01 18:28:35', NULL, 0, NULL, 8, 0, 1),
(28, 28, 46, 'Suka banget gaya penulisan lo', '2025-06-01 18:28:35', NULL, 0, NULL, 5, 0, 2),
(29, 29, 24, 'Ini harusnya viral sih', '2025-06-01 18:28:35', NULL, 0, NULL, 3, 0, 1),
(30, 30, 59, 'Wah baru tau, thanks infonya!', '2025-06-01 18:28:35', NULL, 0, 5, 5, 0, 1),
(31, 1, 52, 'Setuju, ini harus dibenerin', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 8, 1, 1),
(32, 2, 44, 'Wah baru tau, thanks infonya!', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 8, 1, 0),
(33, 3, 45, 'Ini baru konten yang edukatif!', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 0),
(34, 4, 56, 'Dukung penuh buat pelapor', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, 32, 5, 1, 1),
(35, 5, 22, 'Dukung penuh buat pelapor', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 2, 1, 0),
(36, 6, 1, 'Warga +62 emang unik', '2025-06-01 18:28:35', NULL, 0, NULL, 4, 0, 2),
(37, 7, 42, 'Kalo bisa tagih pemerintah sekalian 😅', '2025-06-01 18:28:35', NULL, 0, 32, 3, 0, 0),
(38, 8, 56, 'Pernah liat hal serupa di daerah gw', '2025-06-01 18:28:35', NULL, 0, NULL, 5, 0, 3),
(39, 9, 37, 'Fix ini harus ditindak', '2025-06-01 18:28:35', NULL, 0, 4, 0, 0, 1),
(40, 10, 49, 'Fix ini harus ditindak', '2025-06-01 18:28:35', NULL, 0, 8, 3, 0, 5),
(41, 11, 48, 'Keren kontennya, lanjutkan!', '2025-06-01 18:28:35', NULL, 0, NULL, 7, 0, 5),
(42, 12, 4, 'Kalo bisa tagih pemerintah sekalian 😅', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 8, 1, 0),
(43, 13, 60, 'Bener bener relate...', '2025-06-01 18:28:35', NULL, 0, NULL, 5, 0, 2),
(44, 14, 17, 'Dukung penuh buat pelapor', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 4, 1, 2),
(45, 15, 17, 'Setuju, ini harus dibenerin', '2025-06-01 18:28:35', NULL, 0, NULL, 8, 0, 0),
(46, 16, 48, 'Real banget sih ini 😭', '2025-06-01 18:28:35', NULL, 0, NULL, 2, 0, 0),
(47, 17, 44, 'Gue juga ngalamin ini kemarin 😭', '2025-06-01 18:28:35', NULL, 0, NULL, 9, 0, 2),
(48, 18, 25, 'Setuju, ini harus dibenerin', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 3),
(49, 19, 49, 'Ini harusnya viral sih', '2025-06-01 18:28:35', NULL, 0, NULL, 1, 0, 0),
(50, 20, 54, 'Setuju, ini harus dibenerin', '2025-06-01 18:28:35', NULL, 0, NULL, 2, 0, 1),
(51, 21, 27, 'Gue juga ngalamin ini kemarin 😭', '2025-06-01 18:28:35', NULL, 0, 6, 6, 0, 3),
(52, 22, 30, 'Maju terus bang 🫡', '2025-06-01 18:28:35', NULL, 0, NULL, 9, 0, 0),
(53, 23, 17, 'Suka nih bahasan kayak gini 👏', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 0),
(54, 24, 5, 'Kalo bisa tagih pemerintah sekalian 😅', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, 19, 4, 1, 1),
(55, 25, 10, 'Wah baru tau, thanks infonya!', '2025-06-01 18:28:35', NULL, 0, NULL, 8, 0, 0),
(56, 26, 17, 'Keren kontennya, lanjutkan!', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 8, 1, 0),
(57, 27, 44, 'Gue juga ngalamin ini kemarin 😭', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 5, 1, 0),
(58, 28, 43, 'Hati-hati kalau lewat sana!', '2025-06-01 18:28:35', NULL, 0, NULL, 4, 0, 1),
(59, 29, 54, 'Maju terus bang 🫡', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 3, 1, 1),
(60, 30, 33, 'Hati-hati kalau lewat sana!', '2025-06-01 18:28:35', NULL, 0, NULL, 4, 0, 0),
(61, 1, 44, 'Setuju, ini harus dibenerin', '2025-06-01 18:28:35', NULL, 0, NULL, 7, 0, 3),
(62, 2, 13, 'Dukung penuh buat pelapor', '2025-06-01 18:28:35', NULL, 0, NULL, 1, 0, 1),
(63, 3, 13, 'Real banget sih ini 😭', '2025-06-01 18:28:35', NULL, 0, NULL, 1, 0, 0),
(64, 4, 59, 'Suka nih bahasan kayak gini 👏', '2025-06-01 18:28:35', NULL, 0, NULL, 1, 0, 0),
(65, 5, 52, 'Bener, yang penting tetap waspada', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, 10, 3, 1, 0),
(66, 6, 40, 'Bener, yang penting tetap waspada', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 0, 1, 0),
(67, 7, 55, 'Real banget sih ini 😭', '2025-06-01 18:28:35', NULL, 0, NULL, 2, 0, 2),
(68, 8, 44, 'Kocak banget sih elu 😆', '2025-06-01 18:28:35', NULL, 0, NULL, 4, 0, 0),
(69, 10, 30, 'Gue juga ngalamin ini kemarin 😭', '2025-06-01 18:28:35', NULL, 0, NULL, 1, 0, 1),
(70, 11, 38, 'Bener, yang penting tetap waspada', '2025-06-01 18:28:35', NULL, 0, NULL, 7, 0, 2),
(71, 13, 29, 'Gue juga ngalamin ini kemarin 😭', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 3),
(72, 15, 12, 'Suka nih bahasan kayak gini 👏', '2025-06-01 18:28:35', NULL, 0, 60, 6, 0, 5),
(73, 16, 17, 'Dukung penuh buat pelapor', '2025-06-01 18:28:35', NULL, 0, NULL, 5, 0, 1),
(74, 17, 51, 'Setuju, ini harus dibenerin', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 1, 1, 0),
(75, 18, 52, 'Kocak banget sih elu 😆', '2025-06-01 18:28:35', NULL, 0, NULL, 3, 0, 0),
(76, 19, 22, 'Kalo bisa tagih pemerintah sekalian 😅', '2025-06-01 18:28:35', NULL, 0, NULL, 2, 0, 1),
(77, 20, 48, 'Suka nih bahasan kayak gini 👏', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 1),
(78, 21, 16, 'Warga +62 emang unik', '2025-06-01 18:28:35', NULL, 0, NULL, 4, 0, 1),
(79, 22, 42, 'Pernah liat hal serupa di daerah gw', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 9, 1, 0),
(80, 23, 46, 'Maju terus bang 🫡', '2025-06-01 18:28:35', NULL, 0, NULL, 7, 0, 0),
(81, 24, 33, 'Suka nih bahasan kayak gini 👏', '2025-06-01 18:28:35', NULL, 0, NULL, 2, 0, 1),
(82, 25, 35, 'Gue juga ngalamin ini kemarin 😭', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 6, 1, 1),
(83, 26, 56, 'Real banget sih ini 😭', '2025-06-01 18:28:35', NULL, 0, NULL, 5, 0, 0),
(84, 28, 29, 'Kocak banget sih elu 😆', '2025-06-01 17:25:50', NULL, 0, 48, 1, 0, 0),
(85, 1, 35, 'Dukung penuh buat pelapor', '2025-06-01 18:23:34', NULL, 0, 52, 4, 0, 1),
(86, 2, 23, 'Wah baru tau, thanks infonya!', '2025-06-01 18:28:35', NULL, 0, NULL, 1, 0, 1),
(87, 3, 14, 'Kocak banget sih elu 😆', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, 74, 2, 1, 0),
(88, 4, 44, 'Ini baru konten yang edukatif!', '2025-06-01 18:28:35', NULL, 0, NULL, 8, 0, 0),
(89, 5, 1, 'Suka nih bahasan kayak gini 👏', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 3, 1, 1),
(90, 6, 11, 'Bener, yang penting tetap waspada', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 4, 1, 0),
(91, 7, 13, 'Setuju, ini harus dibenerin', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 4, 1, 0),
(92, 8, 35, 'Suka banget gaya penulisan lo', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 0),
(93, 10, 13, 'Ini harusnya viral sih', '2025-06-01 18:28:35', NULL, 0, 92, 4, 0, 3),
(94, 11, 11, 'Keren kontennya, lanjutkan!', '2025-06-01 18:28:35', NULL, 0, NULL, 6, 0, 0),
(95, 15, 58, 'Maju terus bang 🫡', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 1, 1, 0),
(96, 20, 10, 'Kocak banget sih elu 😆', '2025-06-01 18:28:35', NULL, 0, NULL, 4, 0, 0),
(97, 21, 8, 'Warga +62 emang unik', '2025-06-01 18:28:35', NULL, 0, NULL, 5, 0, 1),
(98, 22, 8, 'Warga +62 emang unik', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 0, 1, 5),
(99, 23, 23, 'Kocak banget sih elu 😆', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 3, 1, 4),
(100, 24, 59, 'Kalo bisa tagih pemerintah sekalian 😅', '2025-06-01 18:28:35', '2025-06-01 17:25:50', 0, NULL, 9, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_medias`
--

CREATE TABLE `comment_medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_versions`
--

CREATE TABLE `comment_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `previous_text` text NOT NULL,
  `edited_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `comment_versions`
--

INSERT INTO `comment_versions` (`id`, `comment_id`, `previous_text`, `edited_at`, `is_deleted`) VALUES
(1, 5, 'Maaf', '2025-06-01 17:41:38', 0),
(2, 8, 'Kurang paham', '2025-06-01 17:41:38', 0),
(3, 12, 'Salah deh', '2025-06-01 17:41:38', 0),
(4, 14, 'Ga jelas ya', '2025-06-01 17:41:38', 0),
(5, 16, 'Kayaknya bener', '2025-06-01 17:41:38', 0),
(6, 17, 'Asli sebel', '2025-06-01 17:41:38', 0),
(7, 19, 'Ini harusnya gini', '2025-06-01 17:41:38', 0),
(8, 31, 'Gue edit', '2025-06-01 17:41:38', 0),
(9, 32, 'Awalnya gue tulis gini', '2025-06-01 17:41:38', 0),
(10, 34, 'Tolong dong', '2025-06-01 17:41:38', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_version_medias`
--

CREATE TABLE `comment_version_medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_version_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('pending','reviewed','resolved') NOT NULL,
  `reported_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` text NOT NULL,
  `severity` enum('low','medium','high','critical') NOT NULL,
  `is_anonymous` tinyint(4) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_resolved` tinyint(4) NOT NULL,
  `headline` varchar(100) NOT NULL,
  `message_id` int(10) UNSIGNED DEFAULT NULL,
  `complaint_police_unit_id` int(10) UNSIGNED DEFAULT NULL,
  `is_edited` tinyint(4) NOT NULL,
  `deadline_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `complaints`
--

INSERT INTO `complaints` (`id`, `post_id`, `status`, `reported_at`, `description`, `severity`, `is_anonymous`, `user_id`, `is_resolved`, `headline`, `message_id`, `complaint_police_unit_id`, `is_edited`, `deadline_at`) VALUES
(1, 21, 'pending', '2025-06-01 17:12:27', 'Seorang warga melaporkan adanya tindak begal motor di sekitar taman Sempur pada pukul 02.00 dini hari. Kejadian menimbulkan ketakutan dan trauma di kalangan warga sekitar.', 'high', 1, 26, 0, 'Seorang warga melaporkan adanya tindak begal motor di sekitar taman Sempur pada pukul 02', 1, NULL, 0, '2025-06-08 18:06:56'),
(2, 22, 'pending', '2025-06-01 17:12:27', 'Pengendara motor melaju kencang dan hampir menabrak anak-anak sekolah dasar di Cimanggis. Laporan ini memerlukan penertiban lalu lintas.', 'medium', 0, 27, 0, 'Pengendara motor melaju kencang dan hampir menabrak anak-anak sekolah dasar di Cimanggis', 2, NULL, 0, '2025-06-08 18:06:56'),
(3, 23, 'pending', '2025-06-01 17:12:27', 'Serangkaian pencurian sandal dan helm terjadi di kompleks perumahan. Walau CCTV sudah tersedia, pelaku belum teridentifikasi.', 'low', 1, 38, 0, 'Serangkaian pencurian sandal dan helm terjadi di kompleks perumahan', 3, NULL, 0, '2025-06-08 18:06:56'),
(4, 24, 'pending', '2025-06-01 17:12:27', 'Pengamen memaksa meminta uang sambil berteriak, menyebabkan ketakutan di antara warga sekitar Pasar Anyar Depok.', 'medium', 0, 24, 0, 'Pengamen memaksa meminta uang sambil berteriak, menyebabkan ketakutan di antara warga sekitar Pasar ', 4, NULL, 0, '2025-06-08 18:06:56'),
(5, 25, 'reviewed', '2025-06-08 17:33:27', 'Lampu lalu lintas di perempatan Margonda mati selama 2 hari. Keadaan ini memicu kemacetan parah dan berisiko kecelakaan.', 'high', 1, 21, 0, 'Lampu lalu lintas di perempatan Margonda mati selama 2 hari', 5, NULL, 0, '2025-06-08 18:06:56'),
(6, 26, 'pending', '2025-06-08 19:03:36', 'Beberapa kendaraan parkir sembarangan di gang kecil sehingga menghalangi akses warga dan kendaraan darurat.', 'critical', 0, 40, 0, 'Beberapa kendaraan parkir sembarangan di gang kecil sehingga menghalangi akses warga dan kendaraan d', 6, NULL, 0, '2025-06-08 18:06:56'),
(7, 27, 'pending', '2025-06-01 17:12:27', 'Balapan liar tengah malam oleh sekelompok remaja terjadi berulang kali di jalan utama. Sangat mengganggu dan berbahaya.', 'high', 0, 21, 0, 'Balapan liar tengah malam oleh sekelompok remaja terjadi berulang kali di jalan utama', 7, NULL, 0, '2025-06-08 18:06:56'),
(8, 28, 'reviewed', '2025-06-08 17:33:27', 'Warga melaporkan dugaan KDRT di rumah tetangga. Korban tampak takut dan tidak berani melapor langsung.', 'critical', 1, 22, 0, 'Warga melaporkan dugaan KDRT di rumah tetangga', 8, NULL, 0, '2025-06-08 18:06:56'),
(9, 29, 'pending', '2025-06-01 17:12:27', 'Warung dekat sekolah menjual minuman keras secara ilegal, meresahkan warga dan merusak moral lingkungan sekitar.', 'high', 1, 22, 0, 'Warung dekat sekolah menjual minuman keras secara ilegal, meresahkan warga dan merusak moral lingkun', 9, NULL, 0, '2025-06-08 18:06:56'),
(10, 30, 'reviewed', '2025-06-08 17:33:27', 'Jalan berlubang besar di dekat jembatan Kali Baru menyebabkan banyak pengendara jatuh dan luka-luka.', 'medium', 1, 35, 0, 'Jalan berlubang besar di dekat jembatan Kali Baru menyebabkan banyak pengendara jatuh dan luka-luka', 10, NULL, 0, '2025-06-08 18:06:56'),
(14, NULL, 'pending', '2025-06-08 23:10:37', 'pusing palaku wak', 'critical', 1, 1, 0, 'hayooo', NULL, NULL, 0, '2025-06-08 23:10:37'),
(15, NULL, 'pending', '2025-06-08 23:12:10', 'ada gorilla tadi aku lihat di kebon jerukk!!!', 'critical', 1, 1, 0, 'hayooo', NULL, NULL, 0, '2025-06-08 23:12:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `complaint_medias`
--

CREATE TABLE `complaint_medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `complaint_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `complaint_police_units`
--

CREATE TABLE `complaint_police_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `police_unit_id` int(10) UNSIGNED NOT NULL,
  `complaint_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `complaint_police_unit_officers`
--

CREATE TABLE `complaint_police_unit_officers` (
  `id` int(10) UNSIGNED NOT NULL,
  `complaint_police_unit_id` int(10) UNSIGNED NOT NULL,
  `officer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `downvote_comments`
--

CREATE TABLE `downvote_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `downvoted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `downvote_comments`
--

INSERT INTO `downvote_comments` (`id`, `comment_id`, `user_id`, `downvoted_at`) VALUES
(1, 3, 55, '2025-06-01 18:34:40'),
(2, 3, 1, '2025-06-01 18:34:40'),
(3, 6, 16, '2025-06-01 18:34:40'),
(4, 6, 4, '2025-06-01 18:34:40'),
(5, 8, 22, '2025-06-01 18:34:40'),
(6, 8, 43, '2025-06-01 18:34:40'),
(7, 9, 27, '2025-06-01 18:34:40'),
(8, 9, 35, '2025-06-01 18:34:40'),
(9, 9, 8, '2025-06-01 18:34:40'),
(10, 10, 60, '2025-06-01 18:34:40'),
(11, 11, 10, '2025-06-01 18:34:40'),
(12, 12, 10, '2025-06-01 18:34:40'),
(13, 12, 9, '2025-06-01 18:34:40'),
(14, 12, 51, '2025-06-01 18:34:40'),
(15, 13, 28, '2025-06-01 18:34:40'),
(16, 13, 33, '2025-06-01 18:34:40'),
(17, 13, 8, '2025-06-01 18:34:40'),
(18, 16, 8, '2025-06-01 18:34:40'),
(19, 16, 4, '2025-06-01 18:34:40'),
(20, 16, 30, '2025-06-01 18:34:40'),
(21, 16, 54, '2025-06-01 18:34:40'),
(22, 16, 44, '2025-06-01 18:34:40'),
(23, 19, 54, '2025-06-01 18:34:40'),
(24, 19, 46, '2025-06-01 18:34:40'),
(25, 19, 22, '2025-06-01 18:34:40'),
(26, 21, 16, '2025-06-01 18:34:40'),
(27, 21, 32, '2025-06-01 18:34:40'),
(28, 21, 60, '2025-06-01 18:34:40'),
(29, 21, 21, '2025-06-01 18:34:40'),
(30, 23, 23, '2025-06-01 18:34:40'),
(31, 26, 51, '2025-06-01 18:34:40'),
(32, 26, 9, '2025-06-01 18:34:40'),
(33, 26, 24, '2025-06-01 18:34:40'),
(34, 27, 8, '2025-06-01 18:34:40'),
(35, 28, 7, '2025-06-01 18:34:40'),
(36, 28, 14, '2025-06-01 18:34:40'),
(37, 29, 7, '2025-06-01 18:34:40'),
(38, 30, 15, '2025-06-01 18:34:40'),
(39, 31, 59, '2025-06-01 18:34:40'),
(40, 34, 39, '2025-06-01 18:34:40'),
(41, 36, 29, '2025-06-01 18:34:40'),
(42, 36, 47, '2025-06-01 18:34:40'),
(43, 38, 42, '2025-06-01 18:34:40'),
(44, 38, 25, '2025-06-01 18:34:40'),
(45, 38, 18, '2025-06-01 18:34:40'),
(46, 39, 28, '2025-06-01 18:34:40'),
(47, 40, 38, '2025-06-01 18:34:40'),
(48, 40, 44, '2025-06-01 18:34:40'),
(49, 40, 1, '2025-06-01 18:34:40'),
(50, 40, 32, '2025-06-01 18:34:40'),
(51, 40, 12, '2025-06-01 18:34:40'),
(52, 41, 59, '2025-06-01 18:34:40'),
(53, 41, 23, '2025-06-01 18:34:40'),
(54, 41, 58, '2025-06-01 18:34:40'),
(55, 41, 20, '2025-06-01 18:34:40'),
(56, 41, 9, '2025-06-01 18:34:40'),
(57, 43, 13, '2025-06-01 18:34:40'),
(58, 43, 60, '2025-06-01 18:34:40'),
(59, 44, 19, '2025-06-01 18:34:40'),
(60, 44, 54, '2025-06-01 18:34:40'),
(61, 47, 49, '2025-06-01 18:34:40'),
(62, 47, 16, '2025-06-01 18:34:40'),
(63, 48, 35, '2025-06-01 18:34:40'),
(64, 48, 59, '2025-06-01 18:34:40'),
(65, 48, 44, '2025-06-01 18:34:40'),
(66, 50, 22, '2025-06-01 18:34:40'),
(67, 51, 48, '2025-06-01 18:34:40'),
(68, 51, 26, '2025-06-01 18:34:40'),
(69, 51, 50, '2025-06-01 18:34:40'),
(70, 54, 57, '2025-06-01 18:34:40'),
(71, 58, 10, '2025-06-01 18:34:40'),
(72, 59, 57, '2025-06-01 18:34:40'),
(73, 61, 44, '2025-06-01 18:34:40'),
(74, 61, 2, '2025-06-01 18:34:40'),
(75, 61, 60, '2025-06-01 18:34:40'),
(76, 62, 30, '2025-06-01 18:34:40'),
(77, 67, 42, '2025-06-01 18:34:40'),
(78, 67, 24, '2025-06-01 18:34:40'),
(79, 69, 11, '2025-06-01 18:34:40'),
(80, 70, 9, '2025-06-01 18:34:40'),
(81, 70, 18, '2025-06-01 18:34:40'),
(82, 71, 44, '2025-06-01 18:34:40'),
(83, 71, 8, '2025-06-01 18:34:40'),
(84, 71, 38, '2025-06-01 18:34:40'),
(85, 72, 43, '2025-06-01 18:34:40'),
(86, 72, 30, '2025-06-01 18:34:40'),
(87, 72, 13, '2025-06-01 18:34:40'),
(88, 72, 59, '2025-06-01 18:34:40'),
(89, 72, 29, '2025-06-01 18:34:40'),
(90, 73, 4, '2025-06-01 18:34:40'),
(91, 76, 19, '2025-06-01 18:34:40'),
(92, 77, 17, '2025-06-01 18:34:40'),
(93, 78, 14, '2025-06-01 18:34:40'),
(94, 81, 11, '2025-06-01 18:34:40'),
(95, 82, 36, '2025-06-01 18:34:40'),
(96, 85, 5, '2025-06-01 18:34:40'),
(97, 86, 6, '2025-06-01 18:34:40'),
(98, 89, 34, '2025-06-01 18:34:40'),
(99, 93, 14, '2025-06-01 18:34:40'),
(100, 93, 17, '2025-06-01 18:34:40'),
(101, 93, 19, '2025-06-01 18:34:40'),
(102, 97, 3, '2025-06-01 18:34:40'),
(103, 98, 48, '2025-06-01 18:34:40'),
(104, 98, 24, '2025-06-01 18:34:40'),
(105, 98, 17, '2025-06-01 18:34:40'),
(106, 98, 19, '2025-06-01 18:34:40'),
(107, 98, 59, '2025-06-01 18:34:40'),
(108, 99, 27, '2025-06-01 18:34:40'),
(109, 99, 23, '2025-06-01 18:34:40'),
(110, 99, 59, '2025-06-01 18:34:40'),
(111, 99, 7, '2025-06-01 18:34:40'),
(112, 100, 10, '2025-06-01 18:34:40'),
(113, 100, 52, '2025-06-01 18:34:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `downvote_posts`
--

CREATE TABLE `downvote_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `downvoted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `downvote_posts`
--

INSERT INTO `downvote_posts` (`id`, `post_id`, `user_id`, `downvoted_at`) VALUES
(1, 1, 3, '2025-06-01 18:17:44'),
(2, 1, 57, '2025-06-01 18:17:44'),
(3, 3, 18, '2025-06-01 18:17:44'),
(4, 3, 53, '2025-06-01 18:17:44'),
(5, 4, 33, '2025-06-01 18:17:44'),
(6, 4, 12, '2025-06-01 18:17:44'),
(7, 7, 12, '2025-06-01 18:17:44'),
(8, 8, 37, '2025-06-01 18:17:44'),
(9, 8, 24, '2025-06-01 18:17:44'),
(10, 8, 38, '2025-06-01 18:17:44'),
(11, 9, 32, '2025-06-01 18:17:44'),
(12, 10, 13, '2025-06-01 18:17:44'),
(13, 11, 25, '2025-06-01 18:17:44'),
(14, 12, 43, '2025-06-01 18:17:44'),
(15, 12, 3, '2025-06-01 18:17:44'),
(16, 12, 46, '2025-06-01 18:17:44'),
(17, 12, 33, '2025-06-01 18:17:44'),
(18, 17, 12, '2025-06-01 18:17:44'),
(19, 19, 57, '2025-06-01 18:17:44'),
(20, 19, 23, '2025-06-01 18:17:44'),
(21, 19, 47, '2025-06-01 18:17:44'),
(22, 19, 22, '2025-06-01 18:17:44'),
(23, 21, 27, '2025-06-01 18:17:44'),
(24, 21, 3, '2025-06-01 18:17:44'),
(25, 21, 57, '2025-06-01 18:17:44'),
(26, 21, 21, '2025-06-01 18:17:44'),
(27, 27, 39, '2025-06-01 18:17:44'),
(28, 27, 10, '2025-06-01 18:17:44'),
(29, 27, 18, '2025-06-01 18:17:44'),
(30, 27, 52, '2025-06-01 18:17:44'),
(31, 27, 9, '2025-06-01 18:17:44'),
(32, 28, 25, '2025-06-01 18:17:44'),
(33, 28, 10, '2025-06-01 18:17:44'),
(34, 29, 51, '2025-06-01 18:17:44'),
(35, 30, 26, '2025-06-01 18:17:44'),
(36, 30, 41, '2025-06-01 18:17:44'),
(37, 30, 38, '2025-06-01 18:17:44'),
(38, 30, 42, '2025-06-01 18:17:44'),
(39, 30, 27, '2025-06-01 18:17:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `medias`
--

CREATE TABLE `medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_path` text NOT NULL,
  `media_type` enum('image','video') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `medias`
--

INSERT INTO `medias` (`id`, `media_path`, `media_type`) VALUES
(1, 'assets/post_medias/2/1', 'image'),
(2, 'assets/post_medias/2/2', 'image'),
(3, 'assets/post_medias/3/3', 'image'),
(4, 'assets/post_medias/4/4', 'image'),
(5, 'assets/post_medias/6/5', 'image'),
(6, 'assets/post_medias/7/6', 'image'),
(7, 'assets/post_medias/10/7', 'image'),
(8, 'assets/post_medias/11/8', 'image'),
(9, 'assets/post_medias/15/9', 'image'),
(10, 'assets/post_medias/17/10', 'image'),
(11, 'assets/post_medias/18/11', 'image'),
(12, 'assets/post_medias/20/12', 'image'),
(13, 'assets/post_medias/21/13', 'image'),
(14, 'assets/post_medias/25/14', 'image'),
(15, 'assets/post_medias/26/15', 'image'),
(16, 'assets/post_medias/30/16', 'image'),
(17, 'assets/post_medias/31/17', 'image');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_type` enum('private','group') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `message_type`, `created_at`) VALUES
(1, 'group', '2025-06-01 17:02:26'),
(2, 'group', '2025-06-01 17:02:26'),
(3, 'group', '2025-06-01 17:02:26'),
(4, 'group', '2025-06-01 17:02:26'),
(5, 'group', '2025-06-01 17:02:26'),
(6, 'group', '2025-06-01 17:02:26'),
(7, 'group', '2025-06-01 17:02:26'),
(8, 'group', '2025-06-01 17:02:26'),
(9, 'group', '2025-06-01 17:02:26'),
(10, 'group', '2025-06-01 17:02:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message_contents`
--

CREATE TABLE `message_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `message_content_medias`
--

CREATE TABLE `message_content_medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_content_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `message_participants`
--

CREATE TABLE `message_participants` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `message_unreads`
--

CREATE TABLE `message_unreads` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `unread_count` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `officers`
--

CREATE TABLE `officers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `police_unit_id` int(10) UNSIGNED DEFAULT NULL,
  `rank` varchar(50) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `badge_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `officers`
--

INSERT INTO `officers` (`id`, `user_id`, `police_unit_id`, `rank`, `is_active`, `assigned_at`, `badge_number`) VALUES
(1, 21, NULL, 'Ipda', 1, '2025-06-01 16:32:00', 'POL460733'),
(2, 22, NULL, 'Aiptu', 1, '2025-06-01 16:32:00', 'POL783278'),
(3, 23, NULL, 'Aiptu', 1, '2025-06-01 16:32:00', 'POL279755'),
(4, 24, NULL, 'Aiptu', 1, '2025-06-01 16:32:00', 'POL789144'),
(5, 25, NULL, 'Briptu', 1, '2025-06-01 16:32:00', 'POL679750'),
(6, 26, NULL, 'Bripda', 1, '2025-06-01 16:32:00', 'POL107379'),
(7, 27, NULL, 'Aiptu', 1, '2025-06-01 16:32:00', 'POL219384'),
(8, 28, NULL, 'Briptu', 1, '2025-06-01 16:32:00', 'POL455081'),
(9, 29, NULL, 'Iptu', 1, '2025-06-01 16:32:00', 'POL300363'),
(10, 30, NULL, 'Aiptu', 1, '2025-06-01 16:32:00', 'POL556915'),
(11, 31, NULL, 'Aiptu', 1, '2025-06-01 16:32:00', 'POL879662'),
(12, 32, NULL, 'Brigadir', 1, '2025-06-01 16:32:00', 'POL561644'),
(13, 33, NULL, 'Iptu', 1, '2025-06-01 16:32:00', 'POL341809'),
(14, 34, NULL, 'Iptu', 1, '2025-06-01 16:32:00', 'POL420183'),
(15, 35, NULL, 'Aiptu', 1, '2025-06-01 16:32:00', 'POL662651'),
(16, 36, NULL, 'Briptu', 1, '2025-06-01 16:32:00', 'POL237296'),
(17, 37, NULL, 'Ipda', 1, '2025-06-01 16:32:00', 'POL167748'),
(18, 38, NULL, 'Briptu', 1, '2025-06-01 16:32:00', 'POL198946'),
(19, 39, NULL, 'Brigadir', 1, '2025-06-01 16:32:00', 'POL547646'),
(20, 40, NULL, 'Iptu', 1, '2025-06-01 16:32:00', 'POL736506');

-- --------------------------------------------------------

--
-- Struktur dari tabel `officer_complaint_pins`
--

CREATE TABLE `officer_complaint_pins` (
  `complaint_id` int(10) UNSIGNED NOT NULL,
  `is_pinned` tinyint(1) NOT NULL,
  `officer_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `officer_notes`
--

CREATE TABLE `officer_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `complaint_id` int(10) UNSIGNED NOT NULL,
  `officer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `officer_responses`
--

CREATE TABLE `officer_responses` (
  `id` int(10) UNSIGNED NOT NULL,
  `complaint_id` int(10) UNSIGNED NOT NULL,
  `officer_id` int(10) UNSIGNED NOT NULL,
  `response` text NOT NULL,
  `responded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `police_units`
--

CREATE TABLE `police_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `police_units`
--

INSERT INTO `police_units` (`id`, `name`, `description`, `contact_email`, `contact_number`, `is_active`, `created_at`) VALUES
(1, 'Polsek Kebon Jeruk', 'Polsek wilayah Kebon Jeruk, Jakarta Barat.', 'polsek.kebonjeruk@polri.go.id', '021-53690011', 1, '2025-06-01 16:15:34'),
(2, 'Polsek Palmerah', 'Polsek wilayah Palmerah, Jakarta Barat.', 'polsek.palmerah@polri.go.id', '021-53690122', 1, '2025-06-01 16:15:34'),
(3, 'Polsek Cengkareng', 'Polsek wilayah Cengkareng, Jakarta Barat.', 'polsek.cengkareng@polri.go.id', '021-54372611', 1, '2025-06-01 16:15:34'),
(4, 'Polsek Kalideres', 'Polsek wilayah Kalideres, Jakarta Barat.', 'polsek.kalideres@polri.go.id', '021-5551212', 1, '2025-06-01 16:15:34'),
(5, 'Polsek Tambora', 'Polsek wilayah Tambora, Jakarta Barat.', 'polsek.tambora@polri.go.id', '021-6344443', 1, '2025-06-01 16:15:34'),
(6, 'Polsek Tanjung Duren', 'Polsek wilayah Tanjung Duren, Jakarta Barat.', 'polsek.tanjungduren@polri.go.id', '021-5661816', 1, '2025-06-01 16:15:34'),
(7, 'Polsek Metro Tanah Abang', 'Polsek wilayah Tanah Abang, Jakarta Pusat.', 'polsek.tanahabang@polri.go.id', '021-5732520', 1, '2025-06-01 16:15:34'),
(8, 'Polsek Sawah Besar', 'Polsek wilayah Sawah Besar, Jakarta Pusat.', 'polsek.sawahbesar@polri.go.id', '021-3456781', 1, '2025-06-01 16:15:34'),
(9, 'Polsek Menteng', 'Polsek wilayah Menteng, Jakarta Pusat.', 'polsek.menteng@polri.go.id', '021-31901444', 1, '2025-06-01 16:15:34'),
(10, 'Polsek Senen', 'Polsek wilayah Senen, Jakarta Pusat.', 'polsek.senen@polri.go.id', '021-4213456', 1, '2025-06-01 16:15:34'),
(11, 'Polsek Metro Setiabudi', 'Polsek wilayah Setiabudi, Jakarta Selatan.', 'polsek.setiabudi@polri.go.id', '021-57902030', 1, '2025-06-01 16:15:34'),
(12, 'Polsek Mampang Prapatan', 'Polsek wilayah Mampang Prapatan, Jakarta Selatan.', 'polsek.mampang@polri.go.id', '021-7999110', 1, '2025-06-01 16:15:34'),
(13, 'Polsek Kebayoran Lama', 'Polsek wilayah Kebayoran Lama, Jakarta Selatan.', 'polsek.kebayoranlama@polri.go.id', '021-7201234', 1, '2025-06-01 16:15:34'),
(14, 'Polsek Cilandak', 'Polsek wilayah Cilandak, Jakarta Selatan.', 'polsek.cilandak@polri.go.id', '021-7658990', 1, '2025-06-01 16:15:34'),
(15, 'Polsek Pesanggrahan', 'Polsek wilayah Pesanggrahan, Jakarta Selatan.', 'polsek.pesanggrahan@polri.go.id', '021-5856767', 1, '2025-06-01 16:15:34'),
(16, 'Polsek Jatinegara', 'Polsek wilayah Jatinegara, Jakarta Timur.', 'polsek.jatinegara@polri.go.id', '021-8192233', 1, '2025-06-01 16:15:34'),
(17, 'Polsek Duren Sawit', 'Polsek wilayah Duren Sawit, Jakarta Timur.', 'polsek.durensawit@polri.go.id', '021-8609089', 1, '2025-06-01 16:15:34'),
(18, 'Polsek Pulogadung', 'Polsek wilayah Pulogadung, Jakarta Timur.', 'polsek.pulogadung@polri.go.id', '021-47861333', 1, '2025-06-01 16:15:34'),
(19, 'Polsek Cakung', 'Polsek wilayah Cakung, Jakarta Timur.', 'polsek.cakung@polri.go.id', '021-4602222', 1, '2025-06-01 16:15:34'),
(20, 'Polsek Metro Penjaringan', 'Polsek wilayah Penjaringan, Jakarta Utara.', 'polsek.penjaringan@polri.go.id', '021-6692093', 1, '2025-06-01 16:15:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_edited` tinyint(4) NOT NULL,
  `upvote_count` bigint(20) UNSIGNED NOT NULL,
  `post_type` enum('post','complaint') NOT NULL,
  `edited_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `headline` varchar(255) DEFAULT current_timestamp(),
  `downvote_count` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `text`, `created_at`, `is_edited`, `upvote_count`, `post_type`, `edited_at`, `is_deleted`, `headline`, `downvote_count`) VALUES
(1, 27, 'Gengs, ada yang punya rekomendasi tempat nongki yang cozy di Depok? 🌿', '2025-06-01 18:10:25', 1, 9, 'post', '2025-06-01 16:39:03', 0, 'Gengs, ada yang punya rekomendasi tempat nongki ya...', 2),
(2, 25, 'Baru pertama kali ke Bandung, ternyata udaranya masih adem juga yaa 😍', '2025-06-01 17:59:02', 0, 8, 'post', NULL, 0, 'Baru pertama kali ke Bandung, ternyata udaranya ma...', 0),
(3, 21, 'Btw guys, menurut kalian worth it ga sih beli kopi 60rb cuma buat nongkrong 2 jam?', '2025-06-01 18:10:25', 0, 17, 'post', NULL, 0, 'Btw guys, menurut kalian worth it ga sih beli kopi...', 2),
(4, 39, 'Pagi-pagi disuruh kerja lembur, hidupku penuh plot twist 😩', '2025-06-01 18:10:25', 0, 9, 'post', NULL, 0, 'Pagi-pagi disuruh kerja lembur, hidupku penuh plot...', 2),
(5, 30, 'Lagi insecure banget akhir-akhir ini, padahal hidup orang di IG juga settingan kan ya?', '2025-06-01 17:59:02', 1, 16, 'post', '2025-06-01 16:39:03', 0, 'Lagi insecure banget akhir-akhir ini, padahal hidu...', 0),
(6, 24, 'Ngopi di warung pinggir jalan emang the best! ☕ #AntiMainstream', '2025-06-01 17:59:02', 0, 7, 'post', NULL, 0, 'Ngopi di warung pinggir jalan emang the best! ☕ #A...', 0),
(7, 38, 'Kenapa ya kalo ujan dikit aja langsung macet se-kota 😑', '2025-06-01 18:10:25', 1, 19, 'post', '2025-06-01 16:39:03', 0, 'Kenapa ya kalo ujan dikit aja langsung macet se-ko...', 1),
(8, 30, 'Masih ada ga sih yang suka baca buku fisik? Kindle kalah feel sih 📚', '2025-06-01 18:10:25', 0, 19, 'post', NULL, 0, 'Masih ada ga sih yang suka baca buku fisik? Kindle...', 3),
(9, 23, 'Temen yang dateng pas butuh aja, thank you next 🥲', '2025-06-01 18:10:25', 0, 17, 'post', NULL, 0, 'Temen yang dateng pas butuh aja, thank you next 🥲', 1),
(10, 38, 'Selamat berbuka buat yang puasa hari ini! 🌙✨', '2025-06-01 18:10:25', 1, 17, 'post', '2025-06-01 16:39:03', 0, 'Selamat berbuka buat yang puasa hari ini! 🌙✨', 1),
(11, 25, 'Kangen vibes 2010-an, BBM, status alay, dan galau di Facebook 😭', '2025-06-01 18:10:25', 1, 6, 'post', '2025-06-01 16:39:03', 0, 'Kangen vibes 2010-an, BBM, status alay, dan galau ...', 1),
(12, 33, 'Aku nulis ini sambil nangis di Transjakarta, fix lagi overthinking 💔', '2025-06-01 18:10:25', 0, 8, 'post', NULL, 0, 'Aku nulis ini sambil nangis di Transjakarta, fix l...', 4),
(13, 23, 'Mulai sekarang detox IG dulu deh, pengen lebih waras 😌', '2025-06-01 17:59:02', 1, 18, 'post', '2025-06-01 16:39:03', 0, 'Mulai sekarang detox IG dulu deh, pengen lebih war...', 0),
(14, 22, 'Ada yang pernah kena tilang digital? Gimana prosesnya ya? 🚨', '2025-06-01 17:59:02', 0, 9, 'post', NULL, 0, 'Ada yang pernah kena tilang digital? Gimana proses...', 0),
(15, 39, 'Pernah ngelapor ke polisi, dan ternyata pelayanannya ramah banget. Good job! 👍', '2025-06-01 17:59:02', 0, 4, 'post', NULL, 0, 'Pernah ngelapor ke polisi, dan ternyata pelayanann...', 0),
(16, 24, 'Stres cari kosan yang ga zonk... semua bagus di foto doang 😤', '2025-06-01 17:59:02', 0, 9, 'post', NULL, 0, 'Stres cari kosan yang ga zonk...', 0),
(17, 39, 'Life hack: kalau ngantuk di kantor, buka Excel dan pura-pura serius. #TipsAnakMagang', '2025-06-01 18:10:25', 1, 6, 'post', '2025-06-01 16:39:03', 0, 'Life hack: kalau ngantuk di kantor, buka Excel dan...', 1),
(18, 40, 'Gara-gara motor knalpot brong tiap malam, tidur jadi susah. 😡', '2025-06-01 17:59:02', 1, 3, 'post', '2025-06-01 16:39:03', 0, 'Gara-gara motor knalpot brong tiap malam, tidur ja...', 0),
(19, 32, 'Kucing tetangga suka BAB sembarangan di teras rumah 😤', '2025-06-01 18:10:25', 1, 9, 'post', '2025-06-01 16:39:03', 0, 'Kucing tetangga suka BAB sembarangan di teras ruma...', 4),
(20, 34, 'Indomie pake nasi tuh comfort food terbaik! 🍜🍚', '2025-06-01 17:59:02', 0, 9, 'post', NULL, 0, 'Indomie pake nasi tuh comfort food terbaik! 🍜🍚', 0),
(21, 40, 'Laporan: Ada begal motor di jalan sepi deket taman Sempur semalam jam 2 pagi. Tolong patroli ditingkatkan! 😨', '2025-06-01 18:10:25', 0, 17, 'complaint', NULL, 0, 'Laporan: Ada begal motor di jalan sepi deket taman...', 4),
(22, 25, 'Saya ingin lapor ada pengendara ugal-ugalan yang hampir menabrak pejalan kaki di depan sekolah dasar di Cimanggis!', '2025-06-01 17:59:02', 0, 13, 'complaint', NULL, 0, 'Saya ingin lapor ada pengendara ugal-ugalan yang h...', 0),
(23, 22, 'Mohon tindakan tegas, di kompleks kami sering terjadi pencurian sandal dan helm. CCTV sudah ada tapi pelaku belum tertangkap.', '2025-06-01 17:59:02', 0, 19, 'complaint', NULL, 0, 'Mohon tindakan tegas, di kompleks kami sering terj...', 0),
(24, 25, 'Ada pengamen maksa yang teriak-teriak sampai warga takut keluar rumah. Lokasi: Pasar Anyar Depok.', '2025-06-01 17:59:02', 0, 20, 'complaint', NULL, 0, 'Ada pengamen maksa yang teriak-teriak sampai warga...', 0),
(25, 33, 'Laporan: Lampu lalu lintas di perempatan Margonda mati total sejak 2 hari lalu. Bikin macet dan rawan kecelakaan!', '2025-06-01 17:59:02', 0, 16, 'complaint', NULL, 0, 'Laporan: Lampu lalu lintas di perempatan Margonda ...', 0),
(26, 28, 'Mohon ditindak kendaraan parkir sembarangan di gang sempit. Warga sulit lewat bahkan untuk darurat!', '2025-06-01 17:59:02', 0, 4, 'complaint', NULL, 0, 'Mohon ditindak kendaraan parkir sembarangan di gan...', 0),
(27, 21, 'Sudah 3 malam ada sekelompok remaja balapan liar di jalan utama. Sangat berisik dan membahayakan!', '2025-06-01 18:10:25', 0, 8, 'complaint', NULL, 0, 'Sudah 3 malam ada sekelompok remaja balapan liar d...', 5),
(28, 40, 'Saya menyaksikan KDRT di rumah sebelah. Korban terlihat ketakutan dan belum berani lapor. Mohon segera ditindak.', '2025-06-01 18:10:25', 1, 16, 'complaint', '2025-06-01 16:39:03', 0, 'Saya menyaksikan KDRT di rumah sebelah...', 2),
(29, 27, 'Warga sekitar resah dengan aktivitas penjualan miras di warung yang dekat dengan sekolah!', '2025-06-01 18:10:25', 0, 8, 'complaint', NULL, 0, 'Warga sekitar resah dengan aktivitas penjualan mir...', 1),
(30, 26, 'Jalan berlubang besar di dekat jembatan Kali Baru bikin beberapa motor jatuh. Mohon perhatian instansi terkait!', '2025-06-01 18:10:25', 1, 6, 'complaint', '2025-06-01 16:39:03', 0, 'Jalan berlubang besar di dekat jembatan Kali Baru ...', 5),
(31, 7, 'Cape banget bro ngoding gini teruszz', '2025-06-07 15:26:12', 1, 0, 'post', '2025-06-07 08:26:12', 0, 'Gila kali lu ya', 0),
(34, 1, 'ada gorilla tadi aku lihat di kebon jerukk!!!', '2025-06-08 23:12:45', 0, 0, 'post', NULL, 0, 'udah gila kali ya', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_medias`
--

CREATE TABLE `post_medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `post_medias`
--

INSERT INTO `post_medias` (`id`, `post_id`, `media_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 6, 5),
(6, 7, 6),
(7, 10, 7),
(8, 11, 8),
(9, 15, 9),
(10, 17, 10),
(11, 18, 11),
(12, 20, 12),
(13, 21, 13),
(14, 25, 14),
(15, 26, 15),
(16, 30, 16),
(17, 31, 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `upvote_comments`
--

CREATE TABLE `upvote_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `upvoted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `upvote_comments`
--

INSERT INTO `upvote_comments` (`id`, `comment_id`, `user_id`, `upvoted_at`) VALUES
(1, 1, 33, '2025-06-01 18:31:33'),
(2, 1, 41, '2025-06-01 18:31:33'),
(3, 1, 15, '2025-06-01 18:31:33'),
(4, 1, 28, '2025-06-01 18:31:33'),
(5, 1, 27, '2025-06-01 18:31:33'),
(6, 1, 21, '2025-06-01 18:31:33'),
(7, 2, 38, '2025-06-01 18:31:33'),
(8, 2, 48, '2025-06-01 18:31:33'),
(9, 2, 44, '2025-06-01 18:31:33'),
(10, 2, 52, '2025-06-01 18:31:33'),
(11, 2, 9, '2025-06-01 18:31:33'),
(12, 3, 48, '2025-06-01 18:31:33'),
(13, 3, 53, '2025-06-01 18:31:33'),
(14, 3, 33, '2025-06-01 18:31:33'),
(15, 3, 37, '2025-06-01 18:31:33'),
(16, 3, 5, '2025-06-01 18:31:33'),
(17, 3, 51, '2025-06-01 18:31:33'),
(18, 3, 45, '2025-06-01 18:31:33'),
(19, 3, 10, '2025-06-01 18:31:33'),
(20, 4, 34, '2025-06-01 18:31:33'),
(21, 4, 8, '2025-06-01 18:31:33'),
(22, 4, 40, '2025-06-01 18:31:33'),
(23, 4, 24, '2025-06-01 18:31:33'),
(24, 4, 60, '2025-06-01 18:31:33'),
(25, 4, 46, '2025-06-01 18:31:33'),
(26, 4, 58, '2025-06-01 18:31:33'),
(27, 8, 28, '2025-06-01 18:31:33'),
(28, 8, 48, '2025-06-01 18:31:33'),
(29, 9, 40, '2025-06-01 18:31:33'),
(30, 10, 56, '2025-06-01 18:31:33'),
(31, 10, 1, '2025-06-01 18:31:33'),
(32, 10, 29, '2025-06-01 18:31:33'),
(33, 10, 30, '2025-06-01 18:31:33'),
(34, 12, 56, '2025-06-01 18:31:33'),
(35, 12, 6, '2025-06-01 18:31:33'),
(36, 13, 3, '2025-06-01 18:31:33'),
(37, 13, 48, '2025-06-01 18:31:33'),
(38, 13, 25, '2025-06-01 18:31:33'),
(39, 15, 50, '2025-06-01 18:31:33'),
(40, 15, 54, '2025-06-01 18:31:33'),
(41, 15, 37, '2025-06-01 18:31:33'),
(42, 15, 27, '2025-06-01 18:31:33'),
(43, 15, 32, '2025-06-01 18:31:33'),
(44, 15, 11, '2025-06-01 18:31:33'),
(45, 15, 56, '2025-06-01 18:31:33'),
(46, 15, 12, '2025-06-01 18:31:33'),
(47, 16, 5, '2025-06-01 18:31:33'),
(48, 17, 2, '2025-06-01 18:31:33'),
(49, 17, 46, '2025-06-01 18:31:33'),
(50, 17, 10, '2025-06-01 18:31:33'),
(51, 17, 11, '2025-06-01 18:31:33'),
(52, 17, 24, '2025-06-01 18:31:33'),
(53, 18, 40, '2025-06-01 18:31:33'),
(54, 18, 55, '2025-06-01 18:31:33'),
(55, 18, 31, '2025-06-01 18:31:33'),
(56, 19, 41, '2025-06-01 18:31:33'),
(57, 19, 20, '2025-06-01 18:31:33'),
(58, 19, 49, '2025-06-01 18:31:33'),
(59, 19, 17, '2025-06-01 18:31:33'),
(60, 20, 16, '2025-06-01 18:31:33'),
(61, 20, 44, '2025-06-01 18:31:33'),
(62, 20, 57, '2025-06-01 18:31:33'),
(63, 20, 37, '2025-06-01 18:31:33'),
(64, 21, 49, '2025-06-01 18:31:33'),
(65, 21, 9, '2025-06-01 18:31:33'),
(66, 21, 3, '2025-06-01 18:31:33'),
(67, 21, 17, '2025-06-01 18:31:33'),
(68, 21, 26, '2025-06-01 18:31:33'),
(69, 21, 42, '2025-06-01 18:31:33'),
(70, 22, 23, '2025-06-01 18:31:33'),
(71, 23, 22, '2025-06-01 18:31:33'),
(72, 23, 56, '2025-06-01 18:31:33'),
(73, 23, 6, '2025-06-01 18:31:33'),
(74, 23, 55, '2025-06-01 18:31:33'),
(75, 23, 42, '2025-06-01 18:31:33'),
(76, 23, 23, '2025-06-01 18:31:33'),
(77, 24, 37, '2025-06-01 18:31:33'),
(78, 24, 22, '2025-06-01 18:31:33'),
(79, 25, 28, '2025-06-01 18:31:33'),
(80, 25, 37, '2025-06-01 18:31:33'),
(81, 25, 34, '2025-06-01 18:31:33'),
(82, 25, 32, '2025-06-01 18:31:33'),
(83, 25, 13, '2025-06-01 18:31:33'),
(84, 27, 15, '2025-06-01 18:31:33'),
(85, 27, 4, '2025-06-01 18:31:33'),
(86, 27, 51, '2025-06-01 18:31:33'),
(87, 27, 24, '2025-06-01 18:31:33'),
(88, 27, 19, '2025-06-01 18:31:33'),
(89, 27, 25, '2025-06-01 18:31:33'),
(90, 27, 8, '2025-06-01 18:31:33'),
(91, 27, 3, '2025-06-01 18:31:33'),
(92, 28, 54, '2025-06-01 18:31:33'),
(93, 28, 28, '2025-06-01 18:31:33'),
(94, 28, 20, '2025-06-01 18:31:33'),
(95, 28, 50, '2025-06-01 18:31:33'),
(96, 28, 53, '2025-06-01 18:31:33'),
(97, 29, 54, '2025-06-01 18:31:33'),
(98, 29, 38, '2025-06-01 18:31:33'),
(99, 29, 26, '2025-06-01 18:31:33'),
(100, 30, 5, '2025-06-01 18:31:33'),
(101, 30, 14, '2025-06-01 18:31:33'),
(102, 30, 12, '2025-06-01 18:31:33'),
(103, 30, 46, '2025-06-01 18:31:33'),
(104, 30, 9, '2025-06-01 18:31:33'),
(105, 31, 56, '2025-06-01 18:31:33'),
(106, 31, 29, '2025-06-01 18:31:33'),
(107, 31, 37, '2025-06-01 18:31:33'),
(108, 31, 39, '2025-06-01 18:31:33'),
(109, 31, 3, '2025-06-01 18:31:33'),
(110, 31, 16, '2025-06-01 18:31:33'),
(111, 31, 38, '2025-06-01 18:31:33'),
(112, 31, 32, '2025-06-01 18:31:33'),
(113, 32, 11, '2025-06-01 18:31:33'),
(114, 32, 55, '2025-06-01 18:31:33'),
(115, 32, 27, '2025-06-01 18:31:33'),
(116, 32, 4, '2025-06-01 18:31:33'),
(117, 32, 42, '2025-06-01 18:31:33'),
(118, 32, 58, '2025-06-01 18:31:33'),
(119, 32, 50, '2025-06-01 18:31:33'),
(120, 32, 41, '2025-06-01 18:31:33'),
(121, 33, 58, '2025-06-01 18:31:33'),
(122, 33, 50, '2025-06-01 18:31:33'),
(123, 33, 21, '2025-06-01 18:31:33'),
(124, 33, 33, '2025-06-01 18:31:33'),
(125, 33, 46, '2025-06-01 18:31:33'),
(126, 33, 3, '2025-06-01 18:31:33'),
(127, 34, 40, '2025-06-01 18:31:33'),
(128, 34, 5, '2025-06-01 18:31:33'),
(129, 34, 20, '2025-06-01 18:31:33'),
(130, 34, 60, '2025-06-01 18:31:33'),
(131, 34, 42, '2025-06-01 18:31:33'),
(132, 35, 21, '2025-06-01 18:31:33'),
(133, 35, 11, '2025-06-01 18:31:33'),
(134, 36, 32, '2025-06-01 18:31:33'),
(135, 36, 50, '2025-06-01 18:31:33'),
(136, 36, 1, '2025-06-01 18:31:33'),
(137, 36, 33, '2025-06-01 18:31:33'),
(138, 37, 27, '2025-06-01 18:31:33'),
(139, 37, 53, '2025-06-01 18:31:33'),
(140, 37, 28, '2025-06-01 18:31:33'),
(141, 38, 2, '2025-06-01 18:31:33'),
(142, 38, 12, '2025-06-01 18:31:33'),
(143, 38, 35, '2025-06-01 18:31:33'),
(144, 38, 57, '2025-06-01 18:31:33'),
(145, 38, 10, '2025-06-01 18:31:33'),
(146, 40, 41, '2025-06-01 18:31:33'),
(147, 40, 36, '2025-06-01 18:31:33'),
(148, 40, 37, '2025-06-01 18:31:33'),
(149, 41, 35, '2025-06-01 18:31:33'),
(150, 41, 5, '2025-06-01 18:31:33'),
(151, 41, 20, '2025-06-01 18:31:33'),
(152, 41, 31, '2025-06-01 18:31:33'),
(153, 41, 32, '2025-06-01 18:31:33'),
(154, 41, 40, '2025-06-01 18:31:33'),
(155, 41, 28, '2025-06-01 18:31:33'),
(156, 42, 40, '2025-06-01 18:31:33'),
(157, 42, 13, '2025-06-01 18:31:33'),
(158, 42, 21, '2025-06-01 18:31:33'),
(159, 42, 10, '2025-06-01 18:31:33'),
(160, 42, 15, '2025-06-01 18:31:33'),
(161, 42, 22, '2025-06-01 18:31:33'),
(162, 42, 34, '2025-06-01 18:31:33'),
(163, 42, 44, '2025-06-01 18:31:33'),
(164, 43, 4, '2025-06-01 18:31:33'),
(165, 43, 54, '2025-06-01 18:31:33'),
(166, 43, 30, '2025-06-01 18:31:33'),
(167, 43, 55, '2025-06-01 18:31:33'),
(168, 43, 9, '2025-06-01 18:31:33'),
(169, 44, 39, '2025-06-01 18:31:33'),
(170, 44, 11, '2025-06-01 18:31:33'),
(171, 44, 10, '2025-06-01 18:31:33'),
(172, 44, 4, '2025-06-01 18:31:33'),
(173, 45, 9, '2025-06-01 18:31:33'),
(174, 45, 39, '2025-06-01 18:31:33'),
(175, 45, 16, '2025-06-01 18:31:33'),
(176, 45, 2, '2025-06-01 18:31:33'),
(177, 45, 54, '2025-06-01 18:31:33'),
(178, 45, 20, '2025-06-01 18:31:33'),
(179, 45, 45, '2025-06-01 18:31:33'),
(180, 45, 46, '2025-06-01 18:31:33'),
(181, 46, 39, '2025-06-01 18:31:33'),
(182, 46, 15, '2025-06-01 18:31:33'),
(183, 47, 6, '2025-06-01 18:31:33'),
(184, 47, 43, '2025-06-01 18:31:33'),
(185, 47, 57, '2025-06-01 18:31:33'),
(186, 47, 23, '2025-06-01 18:31:33'),
(187, 47, 52, '2025-06-01 18:31:33'),
(188, 47, 45, '2025-06-01 18:31:33'),
(189, 47, 14, '2025-06-01 18:31:33'),
(190, 47, 44, '2025-06-01 18:31:33'),
(191, 47, 4, '2025-06-01 18:31:33'),
(192, 48, 29, '2025-06-01 18:31:33'),
(193, 48, 55, '2025-06-01 18:31:33'),
(194, 48, 48, '2025-06-01 18:31:33'),
(195, 48, 1, '2025-06-01 18:31:33'),
(196, 48, 60, '2025-06-01 18:31:33'),
(197, 48, 56, '2025-06-01 18:31:33'),
(198, 49, 4, '2025-06-01 18:31:33'),
(199, 50, 42, '2025-06-01 18:31:33'),
(200, 50, 12, '2025-06-01 18:31:33'),
(201, 51, 41, '2025-06-01 18:31:33'),
(202, 51, 44, '2025-06-01 18:31:33'),
(203, 51, 55, '2025-06-01 18:31:33'),
(204, 51, 24, '2025-06-01 18:31:33'),
(205, 51, 23, '2025-06-01 18:31:33'),
(206, 51, 39, '2025-06-01 18:31:33'),
(207, 52, 12, '2025-06-01 18:31:33'),
(208, 52, 36, '2025-06-01 18:31:33'),
(209, 52, 46, '2025-06-01 18:31:33'),
(210, 52, 34, '2025-06-01 18:31:33'),
(211, 52, 51, '2025-06-01 18:31:33'),
(212, 52, 41, '2025-06-01 18:31:33'),
(213, 52, 47, '2025-06-01 18:31:33'),
(214, 52, 38, '2025-06-01 18:31:33'),
(215, 52, 4, '2025-06-01 18:31:33'),
(216, 53, 37, '2025-06-01 18:31:33'),
(217, 53, 6, '2025-06-01 18:31:33'),
(218, 53, 34, '2025-06-01 18:31:33'),
(219, 53, 58, '2025-06-01 18:31:33'),
(220, 53, 48, '2025-06-01 18:31:33'),
(221, 53, 49, '2025-06-01 18:31:33'),
(222, 54, 44, '2025-06-01 18:31:33'),
(223, 54, 12, '2025-06-01 18:31:33'),
(224, 54, 24, '2025-06-01 18:31:33'),
(225, 54, 33, '2025-06-01 18:31:33'),
(226, 55, 19, '2025-06-01 18:31:33'),
(227, 55, 59, '2025-06-01 18:31:33'),
(228, 55, 54, '2025-06-01 18:31:33'),
(229, 55, 24, '2025-06-01 18:31:33'),
(230, 55, 41, '2025-06-01 18:31:33'),
(231, 55, 17, '2025-06-01 18:31:33'),
(232, 55, 45, '2025-06-01 18:31:33'),
(233, 55, 58, '2025-06-01 18:31:33'),
(234, 56, 40, '2025-06-01 18:31:33'),
(235, 56, 32, '2025-06-01 18:31:33'),
(236, 56, 38, '2025-06-01 18:31:33'),
(237, 56, 51, '2025-06-01 18:31:33'),
(238, 56, 24, '2025-06-01 18:31:33'),
(239, 56, 9, '2025-06-01 18:31:33'),
(240, 56, 54, '2025-06-01 18:31:33'),
(241, 56, 8, '2025-06-01 18:31:33'),
(242, 57, 42, '2025-06-01 18:31:33'),
(243, 57, 50, '2025-06-01 18:31:33'),
(244, 57, 2, '2025-06-01 18:31:33'),
(245, 57, 15, '2025-06-01 18:31:33'),
(246, 57, 26, '2025-06-01 18:31:33'),
(247, 58, 29, '2025-06-01 18:31:33'),
(248, 58, 59, '2025-06-01 18:31:33'),
(249, 58, 30, '2025-06-01 18:31:33'),
(250, 58, 22, '2025-06-01 18:31:33'),
(251, 59, 22, '2025-06-01 18:31:33'),
(252, 59, 43, '2025-06-01 18:31:33'),
(253, 59, 26, '2025-06-01 18:31:33'),
(254, 60, 18, '2025-06-01 18:31:33'),
(255, 60, 42, '2025-06-01 18:31:33'),
(256, 60, 13, '2025-06-01 18:31:33'),
(257, 60, 36, '2025-06-01 18:31:33'),
(258, 61, 10, '2025-06-01 18:31:33'),
(259, 61, 1, '2025-06-01 18:31:33'),
(260, 61, 5, '2025-06-01 18:31:33'),
(261, 61, 3, '2025-06-01 18:31:33'),
(262, 61, 35, '2025-06-01 18:31:33'),
(263, 61, 2, '2025-06-01 18:31:33'),
(264, 61, 57, '2025-06-01 18:31:33'),
(265, 62, 60, '2025-06-01 18:31:33'),
(266, 63, 46, '2025-06-01 18:31:33'),
(267, 64, 35, '2025-06-01 18:31:33'),
(268, 65, 22, '2025-06-01 18:31:33'),
(269, 65, 30, '2025-06-01 18:31:33'),
(270, 65, 33, '2025-06-01 18:31:33'),
(271, 67, 22, '2025-06-01 18:31:33'),
(272, 67, 38, '2025-06-01 18:31:33'),
(273, 68, 40, '2025-06-01 18:31:33'),
(274, 68, 15, '2025-06-01 18:31:33'),
(275, 68, 3, '2025-06-01 18:31:33'),
(276, 68, 52, '2025-06-01 18:31:33'),
(277, 69, 8, '2025-06-01 18:31:33'),
(278, 70, 44, '2025-06-01 18:31:33'),
(279, 70, 53, '2025-06-01 18:31:33'),
(280, 70, 16, '2025-06-01 18:31:33'),
(281, 70, 46, '2025-06-01 18:31:33'),
(282, 70, 59, '2025-06-01 18:31:33'),
(283, 70, 17, '2025-06-01 18:31:33'),
(284, 70, 1, '2025-06-01 18:31:33'),
(285, 71, 49, '2025-06-01 18:31:33'),
(286, 71, 35, '2025-06-01 18:31:33'),
(287, 71, 14, '2025-06-01 18:31:33'),
(288, 71, 45, '2025-06-01 18:31:33'),
(289, 71, 8, '2025-06-01 18:31:33'),
(290, 71, 60, '2025-06-01 18:31:33'),
(291, 72, 48, '2025-06-01 18:31:33'),
(292, 72, 27, '2025-06-01 18:31:33'),
(293, 72, 41, '2025-06-01 18:31:33'),
(294, 72, 49, '2025-06-01 18:31:33'),
(295, 72, 38, '2025-06-01 18:31:33'),
(296, 72, 31, '2025-06-01 18:31:33'),
(297, 73, 19, '2025-06-01 18:31:33'),
(298, 73, 40, '2025-06-01 18:31:33'),
(299, 73, 55, '2025-06-01 18:31:33'),
(300, 73, 57, '2025-06-01 18:31:33'),
(301, 73, 42, '2025-06-01 18:31:33'),
(302, 74, 12, '2025-06-01 18:31:33'),
(303, 75, 27, '2025-06-01 18:31:33'),
(304, 75, 34, '2025-06-01 18:31:33'),
(305, 75, 53, '2025-06-01 18:31:33'),
(306, 76, 56, '2025-06-01 18:31:33'),
(307, 76, 37, '2025-06-01 18:31:33'),
(308, 77, 10, '2025-06-01 18:31:33'),
(309, 77, 39, '2025-06-01 18:31:33'),
(310, 77, 3, '2025-06-01 18:31:33'),
(311, 77, 16, '2025-06-01 18:31:33'),
(312, 77, 26, '2025-06-01 18:31:33'),
(313, 77, 48, '2025-06-01 18:31:33'),
(314, 78, 49, '2025-06-01 18:31:33'),
(315, 78, 30, '2025-06-01 18:31:33'),
(316, 78, 38, '2025-06-01 18:31:33'),
(317, 78, 35, '2025-06-01 18:31:33'),
(318, 79, 46, '2025-06-01 18:31:33'),
(319, 79, 48, '2025-06-01 18:31:33'),
(320, 79, 12, '2025-06-01 18:31:33'),
(321, 79, 43, '2025-06-01 18:31:33'),
(322, 79, 45, '2025-06-01 18:31:33'),
(323, 79, 13, '2025-06-01 18:31:33'),
(324, 79, 26, '2025-06-01 18:31:33'),
(325, 79, 31, '2025-06-01 18:31:33'),
(326, 79, 32, '2025-06-01 18:31:33'),
(327, 80, 23, '2025-06-01 18:31:33'),
(328, 80, 41, '2025-06-01 18:31:33'),
(329, 80, 2, '2025-06-01 18:31:33'),
(330, 80, 60, '2025-06-01 18:31:33'),
(331, 80, 30, '2025-06-01 18:31:33'),
(332, 80, 59, '2025-06-01 18:31:33'),
(333, 80, 56, '2025-06-01 18:31:33'),
(334, 81, 1, '2025-06-01 18:31:33'),
(335, 81, 20, '2025-06-01 18:31:33'),
(336, 82, 13, '2025-06-01 18:31:33'),
(337, 82, 26, '2025-06-01 18:31:33'),
(338, 82, 22, '2025-06-01 18:31:33'),
(339, 82, 18, '2025-06-01 18:31:33'),
(340, 82, 49, '2025-06-01 18:31:33'),
(341, 82, 19, '2025-06-01 18:31:33'),
(342, 83, 17, '2025-06-01 18:31:33'),
(343, 83, 55, '2025-06-01 18:31:33'),
(344, 83, 59, '2025-06-01 18:31:33'),
(345, 83, 23, '2025-06-01 18:31:33'),
(346, 83, 13, '2025-06-01 18:31:33'),
(347, 84, 43, '2025-06-01 18:31:33'),
(348, 85, 31, '2025-06-01 18:31:33'),
(349, 85, 21, '2025-06-01 18:31:33'),
(350, 85, 47, '2025-06-01 18:31:33'),
(351, 85, 13, '2025-06-01 18:31:33'),
(352, 86, 49, '2025-06-01 18:31:33'),
(353, 87, 50, '2025-06-01 18:31:33'),
(354, 87, 27, '2025-06-01 18:31:33'),
(355, 88, 40, '2025-06-01 18:31:33'),
(356, 88, 49, '2025-06-01 18:31:33'),
(357, 88, 38, '2025-06-01 18:31:33'),
(358, 88, 31, '2025-06-01 18:31:33'),
(359, 88, 50, '2025-06-01 18:31:33'),
(360, 88, 1, '2025-06-01 18:31:33'),
(361, 88, 60, '2025-06-01 18:31:33'),
(362, 88, 54, '2025-06-01 18:31:33'),
(363, 89, 16, '2025-06-01 18:31:33'),
(364, 89, 59, '2025-06-01 18:31:33'),
(365, 89, 4, '2025-06-01 18:31:33'),
(366, 90, 44, '2025-06-01 18:31:33'),
(367, 90, 9, '2025-06-01 18:31:33'),
(368, 90, 47, '2025-06-01 18:31:33'),
(369, 90, 42, '2025-06-01 18:31:33'),
(370, 91, 18, '2025-06-01 18:31:33'),
(371, 91, 10, '2025-06-01 18:31:33'),
(372, 91, 26, '2025-06-01 18:31:33'),
(373, 91, 22, '2025-06-01 18:31:33'),
(374, 92, 25, '2025-06-01 18:31:33'),
(375, 92, 13, '2025-06-01 18:31:33'),
(376, 92, 11, '2025-06-01 18:31:33'),
(377, 92, 28, '2025-06-01 18:31:33'),
(378, 92, 15, '2025-06-01 18:31:33'),
(379, 92, 36, '2025-06-01 18:31:33'),
(380, 93, 35, '2025-06-01 18:31:33'),
(381, 93, 26, '2025-06-01 18:31:33'),
(382, 93, 25, '2025-06-01 18:31:33'),
(383, 93, 22, '2025-06-01 18:31:33'),
(384, 94, 25, '2025-06-01 18:31:33'),
(385, 94, 38, '2025-06-01 18:31:33'),
(386, 94, 5, '2025-06-01 18:31:33'),
(387, 94, 53, '2025-06-01 18:31:33'),
(388, 94, 34, '2025-06-01 18:31:33'),
(389, 94, 7, '2025-06-01 18:31:33'),
(390, 95, 43, '2025-06-01 18:31:33'),
(391, 96, 33, '2025-06-01 18:31:33'),
(392, 96, 18, '2025-06-01 18:31:33'),
(393, 96, 4, '2025-06-01 18:31:33'),
(394, 96, 15, '2025-06-01 18:31:33'),
(395, 97, 30, '2025-06-01 18:31:33'),
(396, 97, 27, '2025-06-01 18:31:33'),
(397, 97, 31, '2025-06-01 18:31:33'),
(398, 97, 50, '2025-06-01 18:31:33'),
(399, 97, 40, '2025-06-01 18:31:33'),
(400, 99, 55, '2025-06-01 18:31:33'),
(401, 99, 20, '2025-06-01 18:31:33'),
(402, 99, 21, '2025-06-01 18:31:33'),
(403, 100, 42, '2025-06-01 18:31:33'),
(404, 100, 6, '2025-06-01 18:31:33'),
(405, 100, 45, '2025-06-01 18:31:33'),
(406, 100, 18, '2025-06-01 18:31:33'),
(407, 100, 43, '2025-06-01 18:31:33'),
(408, 100, 27, '2025-06-01 18:31:33'),
(409, 100, 19, '2025-06-01 18:31:33'),
(410, 100, 13, '2025-06-01 18:31:33'),
(411, 100, 57, '2025-06-01 18:31:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upvote_posts`
--

CREATE TABLE `upvote_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `upvoted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `upvote_posts`
--

INSERT INTO `upvote_posts` (`id`, `post_id`, `user_id`, `upvoted_at`) VALUES
(1, 1, 39, '2025-06-01 18:06:16'),
(2, 1, 23, '2025-06-01 18:06:16'),
(3, 1, 38, '2025-06-01 18:06:16'),
(4, 1, 10, '2025-06-01 18:06:16'),
(5, 1, 33, '2025-06-01 18:06:16'),
(6, 1, 1, '2025-06-01 18:06:16'),
(7, 1, 49, '2025-06-01 18:06:16'),
(8, 1, 20, '2025-06-01 18:06:16'),
(9, 1, 43, '2025-06-01 18:06:16'),
(10, 2, 49, '2025-06-01 18:06:16'),
(11, 2, 20, '2025-06-01 18:06:16'),
(12, 2, 39, '2025-06-01 18:06:16'),
(13, 2, 55, '2025-06-01 18:06:16'),
(14, 2, 60, '2025-06-01 18:06:16'),
(15, 2, 10, '2025-06-01 18:06:16'),
(16, 2, 26, '2025-06-01 18:06:16'),
(17, 2, 36, '2025-06-01 18:06:16'),
(18, 3, 6, '2025-06-01 18:06:16'),
(19, 3, 34, '2025-06-01 18:06:16'),
(20, 3, 11, '2025-06-01 18:06:16'),
(21, 3, 22, '2025-06-01 18:06:16'),
(22, 3, 20, '2025-06-01 18:06:16'),
(23, 3, 30, '2025-06-01 18:06:16'),
(24, 3, 4, '2025-06-01 18:06:16'),
(25, 3, 50, '2025-06-01 18:06:16'),
(26, 3, 59, '2025-06-01 18:06:16'),
(27, 3, 60, '2025-06-01 18:06:16'),
(28, 3, 28, '2025-06-01 18:06:16'),
(29, 3, 55, '2025-06-01 18:06:16'),
(30, 3, 41, '2025-06-01 18:06:16'),
(31, 3, 51, '2025-06-01 18:06:16'),
(32, 3, 39, '2025-06-01 18:06:16'),
(33, 3, 23, '2025-06-01 18:06:16'),
(34, 3, 17, '2025-06-01 18:06:16'),
(35, 4, 18, '2025-06-01 18:06:16'),
(36, 4, 34, '2025-06-01 18:06:16'),
(37, 4, 23, '2025-06-01 18:06:16'),
(38, 4, 54, '2025-06-01 18:06:16'),
(39, 4, 36, '2025-06-01 18:06:16'),
(40, 4, 39, '2025-06-01 18:06:16'),
(41, 4, 3, '2025-06-01 18:06:16'),
(42, 4, 27, '2025-06-01 18:06:16'),
(43, 4, 13, '2025-06-01 18:06:16'),
(44, 4, 50, '2025-06-01 18:06:16'),
(45, 4, 10, '2025-06-01 18:06:16'),
(46, 4, 30, '2025-06-01 18:06:16'),
(47, 4, 12, '2025-06-01 18:06:16'),
(48, 4, 16, '2025-06-01 18:06:16'),
(49, 4, 53, '2025-06-01 18:06:16'),
(50, 4, 57, '2025-06-01 18:06:16'),
(51, 5, 53, '2025-06-01 18:06:16'),
(52, 5, 52, '2025-06-01 18:06:16'),
(53, 5, 16, '2025-06-01 18:06:16'),
(54, 5, 60, '2025-06-01 18:06:16'),
(55, 5, 9, '2025-06-01 18:06:16'),
(56, 5, 31, '2025-06-01 18:06:16'),
(57, 5, 17, '2025-06-01 18:06:16'),
(58, 6, 33, '2025-06-01 18:06:16'),
(59, 6, 53, '2025-06-01 18:06:16'),
(60, 6, 56, '2025-06-01 18:06:16'),
(61, 6, 21, '2025-06-01 18:06:16'),
(62, 6, 34, '2025-06-01 18:06:16'),
(63, 6, 9, '2025-06-01 18:06:16'),
(64, 6, 40, '2025-06-01 18:06:16'),
(65, 6, 23, '2025-06-01 18:06:16'),
(66, 6, 18, '2025-06-01 18:06:16'),
(67, 7, 5, '2025-06-01 18:06:16'),
(68, 7, 51, '2025-06-01 18:06:16'),
(69, 7, 41, '2025-06-01 18:06:16'),
(70, 7, 7, '2025-06-01 18:06:16'),
(71, 7, 21, '2025-06-01 18:06:16'),
(72, 7, 45, '2025-06-01 18:06:16'),
(73, 7, 9, '2025-06-01 18:06:16'),
(74, 7, 49, '2025-06-01 18:06:16'),
(75, 7, 28, '2025-06-01 18:06:16'),
(76, 7, 24, '2025-06-01 18:06:16'),
(77, 7, 18, '2025-06-01 18:06:16'),
(78, 7, 34, '2025-06-01 18:06:16'),
(79, 7, 40, '2025-06-01 18:06:16'),
(80, 7, 19, '2025-06-01 18:06:16'),
(81, 7, 39, '2025-06-01 18:06:16'),
(82, 7, 52, '2025-06-01 18:06:16'),
(83, 7, 3, '2025-06-01 18:06:16'),
(84, 7, 16, '2025-06-01 18:06:16'),
(85, 7, 22, '2025-06-01 18:06:16'),
(86, 8, 13, '2025-06-01 18:06:16'),
(87, 8, 32, '2025-06-01 18:06:16'),
(88, 8, 15, '2025-06-01 18:06:16'),
(89, 8, 38, '2025-06-01 18:06:16'),
(90, 8, 26, '2025-06-01 18:06:16'),
(91, 8, 3, '2025-06-01 18:06:16'),
(92, 8, 33, '2025-06-01 18:06:16'),
(93, 8, 25, '2025-06-01 18:06:16'),
(94, 8, 14, '2025-06-01 18:06:16'),
(95, 8, 18, '2025-06-01 18:06:16'),
(96, 8, 52, '2025-06-01 18:06:16'),
(97, 8, 23, '2025-06-01 18:06:16'),
(98, 8, 24, '2025-06-01 18:06:16'),
(99, 8, 9, '2025-06-01 18:06:16'),
(100, 8, 17, '2025-06-01 18:06:16'),
(101, 8, 16, '2025-06-01 18:06:16'),
(102, 8, 57, '2025-06-01 18:06:16'),
(103, 9, 2, '2025-06-01 18:06:16'),
(104, 9, 59, '2025-06-01 18:06:16'),
(105, 9, 8, '2025-06-01 18:06:16'),
(106, 9, 6, '2025-06-01 18:06:16'),
(107, 9, 14, '2025-06-01 18:06:16'),
(108, 9, 30, '2025-06-01 18:06:16'),
(109, 9, 31, '2025-06-01 18:06:16'),
(110, 9, 58, '2025-06-01 18:06:16'),
(111, 9, 32, '2025-06-01 18:06:16'),
(112, 9, 47, '2025-06-01 18:06:16'),
(113, 9, 20, '2025-06-01 18:06:16'),
(114, 9, 19, '2025-06-01 18:06:16'),
(115, 9, 42, '2025-06-01 18:06:16'),
(116, 9, 9, '2025-06-01 18:06:16'),
(117, 9, 51, '2025-06-01 18:06:16'),
(118, 9, 46, '2025-06-01 18:06:16'),
(119, 9, 57, '2025-06-01 18:06:16'),
(120, 10, 1, '2025-06-01 18:06:16'),
(121, 10, 47, '2025-06-01 18:06:16'),
(122, 10, 51, '2025-06-01 18:06:16'),
(123, 10, 34, '2025-06-01 18:06:16'),
(124, 10, 52, '2025-06-01 18:06:16'),
(125, 10, 57, '2025-06-01 18:06:16'),
(126, 10, 60, '2025-06-01 18:06:16'),
(127, 10, 15, '2025-06-01 18:06:16'),
(128, 10, 8, '2025-06-01 18:06:16'),
(129, 11, 7, '2025-06-01 18:06:16'),
(130, 11, 1, '2025-06-01 18:06:16'),
(131, 11, 27, '2025-06-01 18:06:16'),
(132, 11, 28, '2025-06-01 18:06:16'),
(133, 11, 21, '2025-06-01 18:06:16'),
(134, 11, 19, '2025-06-01 18:06:16'),
(135, 12, 59, '2025-06-01 18:06:16'),
(136, 12, 1, '2025-06-01 18:06:16'),
(137, 12, 9, '2025-06-01 18:06:16'),
(138, 12, 34, '2025-06-01 18:06:16'),
(139, 12, 11, '2025-06-01 18:06:16'),
(140, 12, 35, '2025-06-01 18:06:16'),
(141, 12, 52, '2025-06-01 18:06:16'),
(142, 12, 6, '2025-06-01 18:06:16'),
(143, 12, 38, '2025-06-01 18:06:16'),
(144, 12, 20, '2025-06-01 18:06:16'),
(145, 12, 21, '2025-06-01 18:06:16'),
(146, 12, 46, '2025-06-01 18:06:16'),
(147, 12, 44, '2025-06-01 18:06:16'),
(148, 12, 30, '2025-06-01 18:06:16'),
(149, 12, 15, '2025-06-01 18:06:16'),
(150, 12, 42, '2025-06-01 18:06:16'),
(151, 12, 55, '2025-06-01 18:06:16'),
(152, 12, 53, '2025-06-01 18:06:16'),
(153, 13, 13, '2025-06-01 18:06:16'),
(154, 13, 4, '2025-06-01 18:06:16'),
(155, 13, 43, '2025-06-01 18:06:16'),
(156, 13, 7, '2025-06-01 18:06:16'),
(157, 13, 38, '2025-06-01 18:06:16'),
(158, 13, 25, '2025-06-01 18:06:16'),
(159, 13, 56, '2025-06-01 18:06:16'),
(160, 13, 20, '2025-06-01 18:06:16'),
(161, 13, 52, '2025-06-01 18:06:16'),
(162, 14, 12, '2025-06-01 18:06:16'),
(163, 14, 9, '2025-06-01 18:06:16'),
(164, 14, 18, '2025-06-01 18:06:16'),
(165, 14, 27, '2025-06-01 18:06:16'),
(166, 15, 46, '2025-06-01 18:06:16'),
(167, 15, 32, '2025-06-01 18:06:16'),
(168, 15, 14, '2025-06-01 18:06:16'),
(169, 15, 34, '2025-06-01 18:06:16'),
(170, 15, 39, '2025-06-01 18:06:16'),
(171, 15, 57, '2025-06-01 18:06:16'),
(172, 15, 49, '2025-06-01 18:06:16'),
(173, 15, 36, '2025-06-01 18:06:16'),
(174, 15, 48, '2025-06-01 18:06:16'),
(175, 16, 20, '2025-06-01 18:06:16'),
(176, 16, 9, '2025-06-01 18:06:16'),
(177, 16, 46, '2025-06-01 18:06:16'),
(178, 16, 47, '2025-06-01 18:06:16'),
(179, 16, 18, '2025-06-01 18:06:16'),
(180, 16, 23, '2025-06-01 18:06:16'),
(181, 17, 34, '2025-06-01 18:06:16'),
(182, 17, 41, '2025-06-01 18:06:16'),
(183, 17, 21, '2025-06-01 18:06:16'),
(184, 17, 5, '2025-06-01 18:06:16'),
(185, 17, 57, '2025-06-01 18:06:16'),
(186, 17, 56, '2025-06-01 18:06:16'),
(187, 17, 46, '2025-06-01 18:06:16'),
(188, 17, 7, '2025-06-01 18:06:16'),
(189, 17, 16, '2025-06-01 18:06:16'),
(190, 18, 9, '2025-06-01 18:06:16'),
(191, 18, 56, '2025-06-01 18:06:16'),
(192, 18, 35, '2025-06-01 18:06:16'),
(193, 19, 19, '2025-06-01 18:06:16'),
(194, 19, 18, '2025-06-01 18:06:16'),
(195, 19, 57, '2025-06-01 18:06:16'),
(196, 19, 24, '2025-06-01 18:06:16'),
(197, 19, 20, '2025-06-01 18:06:16'),
(198, 19, 31, '2025-06-01 18:06:16'),
(199, 19, 34, '2025-06-01 18:06:16'),
(200, 19, 33, '2025-06-01 18:06:16'),
(201, 19, 45, '2025-06-01 18:06:16'),
(202, 20, 20, '2025-06-01 18:06:16'),
(203, 20, 15, '2025-06-01 18:06:16'),
(204, 20, 42, '2025-06-01 18:06:16'),
(205, 20, 12, '2025-06-01 18:06:16'),
(206, 20, 22, '2025-06-01 18:06:16'),
(207, 20, 24, '2025-06-01 18:06:16'),
(208, 20, 57, '2025-06-01 18:06:16'),
(209, 20, 11, '2025-06-01 18:06:16'),
(210, 20, 30, '2025-06-01 18:06:16'),
(211, 20, 37, '2025-06-01 18:06:16'),
(212, 20, 3, '2025-06-01 18:06:16'),
(213, 20, 46, '2025-06-01 18:06:16'),
(214, 20, 58, '2025-06-01 18:06:16'),
(215, 20, 6, '2025-06-01 18:06:16'),
(216, 20, 5, '2025-06-01 18:06:16'),
(217, 20, 16, '2025-06-01 18:06:16'),
(218, 20, 53, '2025-06-01 18:06:16'),
(219, 21, 14, '2025-06-01 18:06:16'),
(220, 21, 21, '2025-06-01 18:06:16'),
(221, 21, 1, '2025-06-01 18:06:16'),
(222, 21, 38, '2025-06-01 18:06:16'),
(223, 21, 27, '2025-06-01 18:06:16'),
(224, 21, 34, '2025-06-01 18:06:16'),
(225, 21, 32, '2025-06-01 18:06:16'),
(226, 21, 13, '2025-06-01 18:06:16'),
(227, 21, 11, '2025-06-01 18:06:16'),
(228, 21, 18, '2025-06-01 18:06:16'),
(229, 21, 7, '2025-06-01 18:06:16'),
(230, 21, 58, '2025-06-01 18:06:16'),
(231, 21, 50, '2025-06-01 18:06:16'),
(232, 21, 6, '2025-06-01 18:06:16'),
(233, 21, 30, '2025-06-01 18:06:16'),
(234, 21, 28, '2025-06-01 18:06:16'),
(235, 21, 22, '2025-06-01 18:06:16'),
(236, 22, 21, '2025-06-01 18:06:16'),
(237, 22, 1, '2025-06-01 18:06:16'),
(238, 22, 19, '2025-06-01 18:06:16'),
(239, 22, 36, '2025-06-01 18:06:16'),
(240, 22, 33, '2025-06-01 18:06:16'),
(241, 22, 2, '2025-06-01 18:06:16'),
(242, 22, 46, '2025-06-01 18:06:16'),
(243, 22, 58, '2025-06-01 18:06:16'),
(244, 22, 40, '2025-06-01 18:06:16'),
(245, 22, 16, '2025-06-01 18:06:16'),
(246, 22, 22, '2025-06-01 18:06:16'),
(247, 22, 15, '2025-06-01 18:06:16'),
(248, 22, 55, '2025-06-01 18:06:16'),
(249, 23, 53, '2025-06-01 18:06:16'),
(250, 23, 38, '2025-06-01 18:06:16'),
(251, 23, 48, '2025-06-01 18:06:16'),
(252, 23, 34, '2025-06-01 18:06:16'),
(253, 23, 18, '2025-06-01 18:06:16'),
(254, 23, 41, '2025-06-01 18:06:16'),
(255, 23, 27, '2025-06-01 18:06:16'),
(256, 23, 35, '2025-06-01 18:06:16'),
(257, 23, 8, '2025-06-01 18:06:16'),
(258, 23, 3, '2025-06-01 18:06:16'),
(259, 23, 50, '2025-06-01 18:06:16'),
(260, 23, 13, '2025-06-01 18:06:16'),
(261, 23, 60, '2025-06-01 18:06:16'),
(262, 23, 17, '2025-06-01 18:06:16'),
(263, 23, 15, '2025-06-01 18:06:16'),
(264, 23, 10, '2025-06-01 18:06:16'),
(265, 23, 19, '2025-06-01 18:06:16'),
(266, 23, 7, '2025-06-01 18:06:16'),
(267, 23, 6, '2025-06-01 18:06:16'),
(268, 24, 8, '2025-06-01 18:06:16'),
(269, 24, 23, '2025-06-01 18:06:16'),
(270, 24, 3, '2025-06-01 18:06:16'),
(271, 24, 18, '2025-06-01 18:06:16'),
(272, 24, 30, '2025-06-01 18:06:16'),
(273, 24, 28, '2025-06-01 18:06:16'),
(274, 24, 45, '2025-06-01 18:06:16'),
(275, 24, 26, '2025-06-01 18:06:16'),
(276, 24, 38, '2025-06-01 18:06:16'),
(277, 24, 52, '2025-06-01 18:06:16'),
(278, 24, 29, '2025-06-01 18:06:16'),
(279, 24, 48, '2025-06-01 18:06:16'),
(280, 24, 53, '2025-06-01 18:06:16'),
(281, 24, 34, '2025-06-01 18:06:16'),
(282, 24, 13, '2025-06-01 18:06:16'),
(283, 24, 50, '2025-06-01 18:06:16'),
(284, 24, 56, '2025-06-01 18:06:16'),
(285, 24, 32, '2025-06-01 18:06:16'),
(286, 24, 41, '2025-06-01 18:06:16'),
(287, 24, 44, '2025-06-01 18:06:16'),
(288, 25, 35, '2025-06-01 18:06:16'),
(289, 25, 30, '2025-06-01 18:06:16'),
(290, 25, 55, '2025-06-01 18:06:16'),
(291, 25, 48, '2025-06-01 18:06:16'),
(292, 25, 11, '2025-06-01 18:06:16'),
(293, 25, 15, '2025-06-01 18:06:16'),
(294, 25, 27, '2025-06-01 18:06:16'),
(295, 25, 25, '2025-06-01 18:06:16'),
(296, 25, 57, '2025-06-01 18:06:16'),
(297, 25, 42, '2025-06-01 18:06:16'),
(298, 25, 14, '2025-06-01 18:06:16'),
(299, 25, 20, '2025-06-01 18:06:16'),
(300, 25, 16, '2025-06-01 18:06:16'),
(301, 25, 5, '2025-06-01 18:06:16'),
(302, 25, 45, '2025-06-01 18:06:16'),
(303, 25, 43, '2025-06-01 18:06:16'),
(304, 26, 52, '2025-06-01 18:06:16'),
(305, 26, 14, '2025-06-01 18:06:16'),
(306, 26, 29, '2025-06-01 18:06:16'),
(307, 26, 41, '2025-06-01 18:06:16'),
(308, 26, 57, '2025-06-01 18:06:16'),
(309, 26, 43, '2025-06-01 18:06:16'),
(310, 26, 27, '2025-06-01 18:06:16'),
(311, 26, 40, '2025-06-01 18:06:16'),
(312, 27, 60, '2025-06-01 18:06:16'),
(313, 27, 25, '2025-06-01 18:06:16'),
(314, 27, 50, '2025-06-01 18:06:16'),
(315, 27, 55, '2025-06-01 18:06:16'),
(316, 27, 53, '2025-06-01 18:06:16'),
(317, 27, 41, '2025-06-01 18:06:16'),
(318, 27, 54, '2025-06-01 18:06:16'),
(319, 27, 56, '2025-06-01 18:06:16'),
(320, 28, 49, '2025-06-01 18:06:16'),
(321, 28, 32, '2025-06-01 18:06:16'),
(322, 28, 8, '2025-06-01 18:06:16'),
(323, 28, 20, '2025-06-01 18:06:16'),
(324, 28, 6, '2025-06-01 18:06:16'),
(325, 28, 46, '2025-06-01 18:06:16'),
(326, 28, 48, '2025-06-01 18:06:16'),
(327, 28, 54, '2025-06-01 18:06:16'),
(328, 28, 47, '2025-06-01 18:06:16'),
(329, 28, 30, '2025-06-01 18:06:16'),
(330, 28, 16, '2025-06-01 18:06:16'),
(331, 28, 1, '2025-06-01 18:06:16'),
(332, 28, 12, '2025-06-01 18:06:16'),
(333, 28, 37, '2025-06-01 18:06:16'),
(334, 28, 40, '2025-06-01 18:06:16'),
(335, 28, 43, '2025-06-01 18:06:16'),
(336, 28, 29, '2025-06-01 18:06:16'),
(337, 28, 45, '2025-06-01 18:06:16'),
(338, 28, 10, '2025-06-01 18:06:16'),
(339, 29, 56, '2025-06-01 18:06:16'),
(340, 29, 48, '2025-06-01 18:06:16'),
(341, 29, 25, '2025-06-01 18:06:16'),
(342, 29, 51, '2025-06-01 18:06:16'),
(343, 29, 3, '2025-06-01 18:06:16'),
(344, 29, 24, '2025-06-01 18:06:16'),
(345, 29, 44, '2025-06-01 18:06:16'),
(346, 29, 41, '2025-06-01 18:06:16'),
(347, 30, 51, '2025-06-01 18:06:16'),
(348, 30, 24, '2025-06-01 18:06:16'),
(349, 30, 21, '2025-06-01 18:06:16'),
(350, 30, 49, '2025-06-01 18:06:16'),
(351, 30, 9, '2025-06-01 18:06:16'),
(352, 30, 19, '2025-06-01 18:06:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hashed_password` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_verified` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `role` enum('user','police','moderator','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `hashed_password`, `created_at`, `is_verified`, `is_deleted`, `last_login_at`, `role`) VALUES
(1, 'jefri_usamah', 'jefri.usamah@hotmail.com', '$2b$10$dummyhash01', '2024-07-03 06:22:49', 1, 0, '2024-07-28 06:22:49', 'moderator'),
(2, 'vinsen_sinaga', 'vinsen.sinaga@gmail.com', '$2a$12$STLmqZaD2fad/eJBvVc4buMzusx3LgUciocJRWmzAHdhe5LMe65/u', '2025-06-07 10:31:01', 0, 0, '2025-06-15 06:22:49', 'moderator'),
(3, 'daniswara_widodo', 'daniswara.widodo@gmail.com', '$2b$10$dummyhash03', '2024-08-15 06:22:49', 0, 1, '2024-08-16 06:22:49', 'user'),
(4, 'jaga_gunarto', 'jaga.gunarto@yahoo.com', '$2a$12$QEfa5LcdTAnyPSdMBJjKkuuCkE.Q4DIXmP4nemO035fqGGwdHvO8K', '2025-06-07 10:31:01', 1, 0, NULL, 'user'),
(5, 'kawaya_rahmawati', 'kawaya.rahmawati@yahoo.com', '$2b$10$dummyhash05', '2024-08-16 06:22:49', 1, 0, '2024-10-06 06:22:49', 'police'),
(6, 'jail_ramadan', 'jail.ramadan@gmail.com', '$2b$10$dummyhash06', '2025-04-01 06:22:49', 1, 0, NULL, 'admin'),
(7, 'maimunah_yolanda', 'maimunah.yolanda@yahoo.com', '$2b$10$dummyhash07', '2024-12-07 06:22:49', 1, 0, '2025-02-12 06:22:49', 'user'),
(8, 'langgeng_dongoran', 'langgeng.dongoran@gmail.com', '$2b$10$dummyhash08', '2025-01-24 06:22:49', 1, 0, '2025-02-25 06:22:49', 'police'),
(9, 'jasmin_purwanti', 'jasmin.purwanti@gmail.com', '$2a$12$Rmwz1Y5Bx2fV7VlvgMqF2Ov.r3QwZ93.P2so7w8T5f6y8wUBjb10a', '2025-06-07 10:18:58', 0, 0, '2024-06-30 06:22:49', 'police'),
(10, 'nasrullah_sirait', 'nasrullah.sirait@yahoo.com', '$2b$10$dummyhash10', '2024-08-05 06:22:49', 1, 0, '2024-09-07 06:22:49', 'user'),
(11, 'zamira_mayasari', 'zamira.mayasari@yahoo.com', '$2b$10$dummyhash11', '2025-05-15 06:22:49', 0, 1, '2025-07-20 06:22:49', 'user'),
(12, 'bajragin_simanjuntak', 'bajragin.simanjuntak@yahoo.com', '$2b$10$dummyhash12', '2024-06-01 06:22:49', 0, 0, '2024-06-02 06:22:49', 'user'),
(13, 'lamar_nashiruddin', 'lamar.nashiruddin@gmail.com', '$2b$10$dummyhash13', '2025-03-15 06:22:49', 1, 1, '2025-05-22 06:22:49', 'user'),
(14, 'opung_sihombing', 'opung.sihombing@yahoo.com', '$2b$10$dummyhash14', '2024-08-19 06:22:49', 0, 1, NULL, 'police'),
(15, 'hana_hutasoit', 'hana.hutasoit@gmail.com', '$2b$10$dummyhash15', '2024-11-28 06:22:49', 1, 0, NULL, 'user'),
(16, 'talia_utami', 'talia.utami@yahoo.com', '$2b$10$dummyhash16', '2025-05-11 06:22:49', 1, 0, NULL, 'admin'),
(17, 'satya_halim', 'satya.halim@hotmail.com', '$2b$10$dummyhash17', '2024-08-15 06:22:49', 0, 1, '2024-08-26 06:22:49', 'moderator'),
(18, 'manah_saputra', 'manah.saputra@hotmail.com', '$2b$10$dummyhash18', '2024-06-24 06:22:49', 0, 0, '2024-07-22 06:22:49', 'user'),
(19, 'najib_nasyidah', 'najib.nasyidah@yahoo.com', '$2b$10$dummyhash19', '2024-07-15 06:22:49', 1, 0, '2024-09-07 06:22:49', 'police'),
(20, 'mustofa_samosir', 'mustofa.samosir@gmail.com', '$2b$10$dummyhash20', '2024-08-11 06:22:49', 1, 0, '2024-10-01 06:22:49', 'user'),
(21, 'budi.anggraini55', 'budi.anggraini55@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(22, 'galih.lestari97', 'galih.lestari97@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(23, 'sari.lestari34', 'sari.lestari34@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(24, 'nina.syahputra70', 'nina.syahputra70@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(25, 'indra.susanto42', 'indra.susanto42@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(26, 'budi.utami27', 'budi.utami27@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(27, 'lia.wijaya72', 'lia.wijaya72@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(28, 'indra.haryanto25', 'indra.haryanto25@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(29, 'mira.pratama55', 'mira.pratama55@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(30, 'dewi.pratama58', 'dewi.pratama58@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(31, 'andi.susanto91', 'andi.susanto91@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(32, 'andi.syahputra31', 'andi.syahputra31@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(33, 'andi.siregar83', 'andi.siregar83@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(34, 'mira.wijaya10', 'mira.wijaya10@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(35, 'lia.siregar29', 'lia.siregar29@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(36, 'dewi.lestari95', 'dewi.lestari95@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(37, 'putra.anggraini90', 'putra.anggraini90@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(38, 'rina.saputra95', 'rina.saputra95@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(39, 'budi.anggraini25', 'budi.anggraini25@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(40, 'joko.simanjuntak67', 'joko.simanjuntak67@polri.go.id', 'hashed_password', '2025-06-01 16:21:24', 1, 0, NULL, 'police'),
(41, 'eko.anggraini74', 'eko.anggraini74@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(42, 'galih.lestari54', 'galih.lestari54@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(43, 'rina.nasution91', 'rina.nasution91@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(44, 'yusuf.pratama17', 'yusuf.pratama17@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'moderator'),
(45, 'sari.pangestu79', 'sari.pangestu79@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(46, 'joko.nasution38', 'joko.nasution38@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(47, 'galih.wijaya64', 'galih.wijaya64@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'moderator'),
(48, 'rina.susanto75', 'rina.susanto75@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(49, 'nina.saputra61', 'nina.saputra61@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'moderator'),
(50, 'budi.pratama45', 'budi.pratama45@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'moderator'),
(51, 'yusuf.wibowo68', 'yusuf.wibowo68@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(52, 'andi.haryanto31', 'andi.haryanto31@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(53, 'dewi.rahmawati78', 'dewi.rahmawati78@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'moderator'),
(54, 'joko.saputra79', 'joko.saputra79@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(55, 'galih.rahmawati35', 'galih.rahmawati35@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'moderator'),
(56, 'sari.simanjuntak51', 'sari.simanjuntak51@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(57, 'yusuf.haryanto97', 'yusuf.haryanto97@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(58, 'hana.utami88', 'hana.utami88@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(59, 'joko.susanto15', 'joko.susanto15@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(60, 'tono.wijaya39', 'tono.wijaya39@mail.com', 'hashed_password', '2025-06-01 17:22:32', 1, 0, NULL, 'user'),
(81, 'ravenchrstn', 'raven.christian@binus.ac.id', '$2b$12$fCe2ggbW51EYRvO1fZqEL.8UoBvDTAn6SXvSoUW2ATbwkZfF.RIGu', '2025-06-07 13:32:08', 0, 0, NULL, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_addresses`
--

CREATE TABLE `user_addresses` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `city_regency` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house_number` varchar(10) DEFAULT NULL,
  `additional_info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_addresses`
--

INSERT INTO `user_addresses` (`user_id`, `country`, `province`, `city_regency`, `district`, `village`, `rw`, `rt`, `postal_code`, `street`, `house_number`, `additional_info`) VALUES
(1, 'Indonesia', 'DKI Jakarta', 'Jakarta Selatan', 'Kebayoran Baru', 'Gandaria', '05', '03', '12140', 'Jl. Gandaria Tengah I', '12A', NULL),
(2, 'Indonesia', 'Jawa Barat', 'Bandung', 'Cicendo', 'Sukajadi', '04', '01', '40162', 'Jl. Sukajadi No.45', '45B', 'Kosan dekat minimarket'),
(3, 'Indonesia', 'Jawa Timur', 'Surabaya', 'Tegalsari', 'Keputran', '06', '02', '60265', 'Jl. Basuki Rahmat', '11', NULL),
(4, 'Indonesia', 'Banten', 'Tangerang Selatan', 'Pamulang', 'Pamulang Barat', '03', '07', '15417', 'Jl. Siliwangi', '32', 'Perumahan Griya Indah'),
(5, 'Indonesia', 'Jawa Tengah', 'Semarang', 'Candisari', 'Jatingaleh', '01', '02', '50254', 'Jl. Gajah Mada', '17C', NULL),
(6, 'Indonesia', 'Bali', 'Denpasar', 'Denpasar Selatan', 'Sanur', '02', '04', '80228', 'Jl. Danau Tamblingan', '22', 'Dekat pantai'),
(7, 'Indonesia', 'Sumatera Utara', 'Medan', 'Medan Baru', 'Simpang Selayang', '07', '05', '20154', 'Jl. Iskandar Muda', '9B', NULL),
(8, 'Indonesia', 'Yogyakarta', 'Sleman', 'Depok', 'Caturtunggal', '08', '06', '55281', 'Jl. Kaliurang KM 5', '5A', 'Kosan Mahasiswa'),
(9, 'Indonesia', 'Riau', 'Pekanbaru', 'Tampan', 'Sidomulyo Barat', '03', '03', '28293', 'Jl. Soebrantas', '88', NULL),
(10, 'Indonesia', 'Sulawesi Selatan', 'Makassar', 'Panakkukang', 'Tamamaung', '06', '01', '90231', 'Jl. AP Pettarani', '23', NULL),
(11, 'Indonesia', 'DKI Jakarta', 'Jakarta Timur', 'Duren Sawit', 'Pondok Kelapa', '01', '01', '13450', 'Jl. Pondok Kelapa Raya', '10', 'Rumah sendiri'),
(12, 'Indonesia', 'Jawa Barat', 'Bekasi', 'Bekasi Selatan', 'Pekayon Jaya', '02', '09', '17148', 'Jl. Ahmad Yani', '14B', NULL),
(13, 'Indonesia', 'Jawa Tengah', 'Solo', 'Banjarsari', 'Manahan', '05', '02', '57139', 'Jl. Slamet Riyadi', '67', NULL),
(14, 'Indonesia', 'Kalimantan Timur', 'Balikpapan', 'Balikpapan Tengah', 'Klandasan Ulu', '04', '06', '76111', 'Jl. Jend. Sudirman', '101', 'Apartemen Lantai 2'),
(15, 'Indonesia', 'Papua', 'Jayapura', 'Abepura', 'Yabansai', '03', '03', '99351', 'Jl. Raya Abepura', '23', NULL),
(16, 'Indonesia', 'Nusa Tenggara Barat', 'Mataram', 'Ampenan', 'Pejeruk', '06', '05', '83115', 'Jl. Udayana', '56', 'Rumah Keluarga'),
(17, 'Indonesia', 'Maluku', 'Ambon', 'Sirimau', 'Batu Meja', '07', '08', '97127', 'Jl. Rijali', '3C', NULL),
(18, 'Indonesia', 'Aceh', 'Banda Aceh', 'Kuta Alam', 'Peunayong', '02', '07', '23123', 'Jl. Diponegoro', '14', 'Toko Bawah Rumah'),
(19, 'Indonesia', 'Jambi', 'Jambi', 'Pasar Jambi', 'Jelutung', '04', '04', '36136', 'Jl. Sultan Agung', '9', NULL),
(20, 'Indonesia', 'Sulawesi Utara', 'Manado', 'Wanea', 'Teling Atas', '01', '01', '95119', 'Jl. Sam Ratulangi', '17A', NULL),
(21, 'Indonesia', 'Jawa Barat', 'Bekasi', 'Cimanggis', 'Pemecutan', '09', '03', '51003', 'Jl. Melati', '86', NULL),
(22, 'Indonesia', 'Jawa Barat', 'Depok', 'Depok', 'Keputran', '03', '07', '16242', 'Jl. Merpati', '196', 'Rumah warna biru'),
(23, 'Indonesia', 'Bali', 'Denpasar', 'Sukajadi', 'Keputran', '01', '06', '30265', 'Jl. Kenanga', '8', 'Sebelah minimarket'),
(24, 'Indonesia', 'Jawa Barat', 'Bandung', 'Umbulharjo', 'Caturtunggal', '02', '05', '62179', 'Jl. Dahlia', '180', NULL),
(25, 'Indonesia', 'Jawa Timur', 'Malang', 'Sukajadi', 'Caturtunggal', '01', '09', '50947', 'Jl. Kenanga', '54', 'Sebelah minimarket'),
(26, 'Indonesia', 'DKI Jakarta', 'Jakarta Selatan', 'Kebayoran Baru', 'Cipete', '01', '02', '70408', 'Jl. Anggrek', '126', 'Sebelah minimarket'),
(27, 'Indonesia', 'Jawa Barat', 'Bandung', 'Gubeng', 'Seturan', '01', '06', '79543', 'Jl. Anggrek', '109', 'Sebelah minimarket'),
(28, 'Indonesia', 'DI Yogyakarta', 'Sleman', 'Denpasar Barat', 'Keputran', '10', '07', '37879', 'Jl. Merpati', '13', 'Dekat pos ronda'),
(29, 'Indonesia', 'Jawa Barat', 'Depok', 'Gubeng', 'Pemecutan', '03', '08', '69903', 'Jl. Merpati', '121', 'Rumah warna biru'),
(30, 'Indonesia', 'Jawa Barat', 'Bandung', 'Gubeng', 'Seturan', '08', '03', '32858', 'Jl. Melati', '28', NULL),
(31, 'Indonesia', 'Bali', 'Denpasar', 'Umbulharjo', 'Seturan', '09', '02', '91259', 'Jl. Melati', '41', 'Sebelah minimarket'),
(32, 'Indonesia', 'DI Yogyakarta', 'Bantul', 'Umbulharjo', 'Pemecutan', '05', '07', '57297', 'Jl. Merpati', '94', 'Dekat pos ronda'),
(33, 'Indonesia', 'Bali', 'Denpasar', 'Sukajadi', 'Keputran', '07', '05', '80867', 'Jl. Dahlia', '45', 'Dekat pos ronda'),
(34, 'Indonesia', 'Jawa Timur', 'Surabaya', 'Depok', 'Keputran', '08', '04', '71891', 'Jl. Mawar', '57', 'Sebelah minimarket'),
(35, 'Indonesia', 'DKI Jakarta', 'Jakarta Timur', 'Sukajadi', 'Caturtunggal', '02', '07', '75145', 'Jl. Dahlia', '48', 'Sebelah minimarket'),
(36, 'Indonesia', 'Jawa Barat', 'Depok', 'Cimanggis', 'Tugu', '01', '03', '11041', 'Jl. Melati', '59', 'Dekat pos ronda'),
(37, 'Indonesia', 'DKI Jakarta', 'Jakarta Timur', 'Denpasar Barat', 'Seturan', '04', '10', '16191', 'Jl. Dahlia', '86', 'Dekat pos ronda'),
(38, 'Indonesia', 'Jawa Barat', 'Depok', 'Umbulharjo', 'Tugu', '01', '08', '62593', 'Jl. Kenanga', '159', 'Sebelah minimarket'),
(39, 'Indonesia', 'Bali', 'Denpasar', 'Umbulharjo', 'Seturan', '05', '08', '36705', 'Jl. Anggrek', '103', 'Rumah warna biru'),
(40, 'Indonesia', 'Bali', 'Denpasar', 'Depok', 'Caturtunggal', '09', '04', '33095', 'Jl. Dahlia', '128', 'Sebelah minimarket'),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_profiles`
--

CREATE TABLE `user_profiles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `gender` enum('female','male') DEFAULT NULL,
  `media_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_profiles`
--

INSERT INTO `user_profiles` (`user_id`, `bio`, `birthdate`, `full_name`, `phone_number`, `gender`, `media_id`) VALUES
(1, NULL, '2003-07-26', 'R.M. Darmanto Hartati', '+62 (0037) 800-8048', 'female', NULL),
(2, 'Nge-vlog is life 🎥', '2006-05-21', NULL, '+62-0948-900-1541', 'male', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '1999-05-12', NULL, '+62 (72) 898 0977', NULL, NULL),
(5, NULL, '2004-07-14', 'Victoria Santoso', NULL, 'female', NULL),
(6, 'Nge-vlog is life 🎥', '2004-10-27', 'Wirda Dongoran', NULL, 'male', NULL),
(7, NULL, NULL, 'Olivia Maryati', '+62-0735-586-9475', 'male', NULL),
(8, 'Nonton anime & baca manga 🍥📚', '1999-02-26', 'Laila Lestari', '+62-093-276-5709', NULL, NULL),
(9, 'Coding sambil rebahan 💻🛋️', '1998-07-02', 'H. Malik Siregar, S.Pt', NULL, 'male', NULL),
(10, 'Hidup itu chill aja', NULL, 'Restu Santoso', '+62 (058) 041 1788', NULL, NULL),
(11, 'Main ML tiap malam 😎', '2000-09-19', NULL, NULL, 'male', NULL),
(12, 'Suka kopi dan senja ☕🌅', '2004-03-10', NULL, '(021) 257 0559', 'male', NULL),
(13, 'Nge-vlog is life 🎥', '2001-06-20', 'Almira Agustina', '+62 (758) 853-0626', 'male', NULL),
(14, NULL, '2007-10-01', 'dr. Mumpuni Rahmawati, S.Ked', '(053) 826 0022', 'female', NULL),
(15, 'Introvert tapi bisa seru kok', NULL, 'dr. Wisnu Prabowo', '+62 (0617) 882-2316', 'female', NULL),
(16, 'IG: @namapalsu', '1999-05-01', 'drg. Nabila Prasetya, S.Sos', '+62-063-520-0530', 'male', NULL),
(17, 'Anak UI, pecinta senja', '1998-12-23', 'Wirda Susanti', NULL, 'female', NULL),
(18, NULL, '1998-08-12', 'Harto Utama, S.IP', '+62-148-704-0546', NULL, NULL),
(19, NULL, '2008-03-14', 'Jatmiko Ardianto', '085 321 8143', 'male', NULL),
(20, NULL, '1999-03-13', 'Lurhur Hartati', '081 290 3565', NULL, NULL),
(21, 'Polisi yang berdedikasi menjaga keamanan lingkungan.', '1998-01-06', 'Putra Wijaya', '085121810143', 'male', NULL),
(22, 'Ahli dalam penyelidikan dan patroli rutin.', '1990-12-04', 'Sari Wibowo', '084838171193', 'female', NULL),
(23, 'Aktif dalam kegiatan sosial dan pengamanan wilayah.', '1983-03-06', 'Budi Rahmawati', '085472317022', 'male', NULL),
(24, 'Ahli dalam penyelidikan dan patroli rutin.', '1996-03-18', 'Galih Susanto', '088992268165', 'female', NULL),
(25, 'Polisi yang berdedikasi menjaga keamanan lingkungan.', '2001-03-25', 'Budi Rahmawati', '087347333274', 'male', NULL),
(26, 'Polisi yang berdedikasi menjaga keamanan lingkungan.', '1985-01-24', 'Sari Nasution', '084387040532', 'male', NULL),
(27, 'Tertarik pada teknologi dan penegakan hukum.', '1997-04-26', 'Nina Siregar', '089549598539', 'male', NULL),
(28, 'Fokus pada keamanan anak dan perempuan.', '1986-07-23', 'Hana Syahputra', '082852597685', 'female', NULL),
(29, 'Fokus pada keamanan anak dan perempuan.', '1984-06-10', 'Fajar Syahputra', '081393986040', 'female', NULL),
(30, 'Ahli dalam penyelidikan dan patroli rutin.', '1982-09-22', 'Rina Syahputra', '087427792772', 'male', NULL),
(31, 'Aktif dalam kegiatan sosial dan pengamanan wilayah.', '2001-06-13', 'Joko Wibowo', '081844825363', 'male', NULL),
(32, 'Berpengalaman dalam menangani kasus-kasus kriminal.', '1989-04-27', 'Indra Syahputra', '082085927290', 'male', NULL),
(33, 'Aktif dalam kegiatan sosial dan pengamanan wilayah.', '1977-11-04', 'Lia Saputra', '081954516078', 'male', NULL),
(34, 'Polisi yang berdedikasi menjaga keamanan lingkungan.', '1983-03-22', 'Putra Haryanto', '081266339798', 'female', NULL),
(35, 'Penegak hukum yang adil dan tegas.', '1978-03-21', 'Oscar Susanto', '085790449906', 'male', NULL),
(36, 'Siap mengabdi untuk negeri.', '1994-08-14', 'Oscar Wijaya', '082013944415', 'male', NULL),
(37, 'Melayani masyarakat adalah kehormatan.', '2000-05-19', 'Hana Anggraini', '081776591624', 'female', NULL),
(38, 'Suka berolahraga dan menjaga disiplin.', '2000-06-15', 'Citra Susanto', '081195864678', 'female', NULL),
(39, 'Ahli dalam penyelidikan dan patroli rutin.', '1975-09-01', 'Rina Lestari', '081181289679', 'male', NULL),
(40, 'Siap mengabdi untuk negeri.', '1999-09-21', 'Fajar Nasution', '085766498025', 'female', NULL),
(81, NULL, NULL, 'Raven Christian', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_comments_posts` (`post_id`),
  ADD KEY `FK_comments_users` (`user_id`),
  ADD KEY `FK_comments_comments` (`parent_comment_id`);

--
-- Indeks untuk tabel `comment_medias`
--
ALTER TABLE `comment_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_comment_medias_comments` (`comment_id`),
  ADD KEY `FK_comment_medias_medias` (`media_id`);

--
-- Indeks untuk tabel `comment_versions`
--
ALTER TABLE `comment_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_comment_versions_comments` (`comment_id`);

--
-- Indeks untuk tabel `comment_version_medias`
--
ALTER TABLE `comment_version_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_comment_version_medias_comment_versions` (`comment_version_id`),
  ADD KEY `FK_comment_version_medias_medias` (`media_id`);

--
-- Indeks untuk tabel `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_post_id` (`post_id`),
  ADD KEY `FK_complaints_users` (`user_id`),
  ADD KEY `FK_complaints_messages` (`message_id`),
  ADD KEY `FK_complaints_complaint_police_units` (`complaint_police_unit_id`);

--
-- Indeks untuk tabel `complaint_medias`
--
ALTER TABLE `complaint_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_complaint_medias_complaints` (`complaint_id`),
  ADD KEY `FK_complaint_medias_medias` (`media_id`);

--
-- Indeks untuk tabel `complaint_police_units`
--
ALTER TABLE `complaint_police_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_police_unit_id_complaint_id` (`police_unit_id`,`complaint_id`),
  ADD KEY `FK_complaint_police_units_complaints` (`complaint_id`);

--
-- Indeks untuk tabel `complaint_police_unit_officers`
--
ALTER TABLE `complaint_police_unit_officers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_complaint_police_unit_id_officer_id` (`complaint_police_unit_id`,`officer_id`),
  ADD KEY `FK_complaint_police_unit_officers_officers` (`officer_id`);

--
-- Indeks untuk tabel `downvote_comments`
--
ALTER TABLE `downvote_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_comment_id_user_id` (`comment_id`,`user_id`),
  ADD KEY `FK_downvote_comments_users` (`user_id`);

--
-- Indeks untuk tabel `downvote_posts`
--
ALTER TABLE `downvote_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_post_id_user_id` (`post_id`,`user_id`),
  ADD KEY `FK_downvote_posts_users` (`user_id`);

--
-- Indeks untuk tabel `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `message_contents`
--
ALTER TABLE `message_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_message_contents_messages` (`message_id`),
  ADD KEY `FK_message_contents_users` (`user_id`);

--
-- Indeks untuk tabel `message_content_medias`
--
ALTER TABLE `message_content_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_message_content_medias_message_contents` (`message_content_id`),
  ADD KEY `FK_message_content_medias_medias` (`media_id`);

--
-- Indeks untuk tabel `message_participants`
--
ALTER TABLE `message_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_message_id_user_id` (`message_id`,`user_id`),
  ADD KEY `FK_message_participants_users` (`user_id`);

--
-- Indeks untuk tabel `message_unreads`
--
ALTER TABLE `message_unreads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_message_id_user_id` (`message_id`,`user_id`),
  ADD KEY `FK_message_unreads_users` (`user_id`);

--
-- Indeks untuk tabel `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_id` (`user_id`),
  ADD KEY `FK_officers_police_units` (`police_unit_id`);

--
-- Indeks untuk tabel `officer_complaint_pins`
--
ALTER TABLE `officer_complaint_pins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_complaint_id_officer_id` (`complaint_id`,`officer_id`),
  ADD KEY `FK_officer_complaint_pins_officers` (`officer_id`);

--
-- Indeks untuk tabel `officer_notes`
--
ALTER TABLE `officer_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_officer_notes_complaints` (`complaint_id`),
  ADD KEY `FK_officer_notes_officers` (`officer_id`);

--
-- Indeks untuk tabel `officer_responses`
--
ALTER TABLE `officer_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_police_responses_complaints` (`complaint_id`),
  ADD KEY `FK_police_responses_officers` (`officer_id`);

--
-- Indeks untuk tabel `police_units`
--
ALTER TABLE `police_units`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_posts_users` (`user_id`);

--
-- Indeks untuk tabel `post_medias`
--
ALTER TABLE `post_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post_medias_posts` (`post_id`),
  ADD KEY `FK_post_medias_medias` (`media_id`);

--
-- Indeks untuk tabel `upvote_comments`
--
ALTER TABLE `upvote_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_comment_id_user_id` (`comment_id`,`user_id`),
  ADD KEY `FK_upvote_comments_users` (`user_id`);

--
-- Indeks untuk tabel `upvote_posts`
--
ALTER TABLE `upvote_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_post_id_user_id` (`post_id`,`user_id`),
  ADD KEY `FK_upvotes_post_users` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_user_profiles_medias` (`media_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `comment_medias`
--
ALTER TABLE `comment_medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comment_versions`
--
ALTER TABLE `comment_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `comment_version_medias`
--
ALTER TABLE `comment_version_medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `complaint_medias`
--
ALTER TABLE `complaint_medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `complaint_police_units`
--
ALTER TABLE `complaint_police_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `complaint_police_unit_officers`
--
ALTER TABLE `complaint_police_unit_officers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `downvote_comments`
--
ALTER TABLE `downvote_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT untuk tabel `downvote_posts`
--
ALTER TABLE `downvote_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `message_contents`
--
ALTER TABLE `message_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `message_content_medias`
--
ALTER TABLE `message_content_medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `message_participants`
--
ALTER TABLE `message_participants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `officers`
--
ALTER TABLE `officers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `officer_notes`
--
ALTER TABLE `officer_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `officer_responses`
--
ALTER TABLE `officer_responses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `police_units`
--
ALTER TABLE `police_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `post_medias`
--
ALTER TABLE `post_medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `upvote_comments`
--
ALTER TABLE `upvote_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT untuk tabel `upvote_posts`
--
ALTER TABLE `upvote_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_comments_comments` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_comments_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_comments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comment_medias`
--
ALTER TABLE `comment_medias`
  ADD CONSTRAINT `FK_comment_medias_comments` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_comment_medias_medias` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comment_versions`
--
ALTER TABLE `comment_versions`
  ADD CONSTRAINT `FK_comment_versions_comments` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comment_version_medias`
--
ALTER TABLE `comment_version_medias`
  ADD CONSTRAINT `FK_comment_version_medias_comment_versions` FOREIGN KEY (`comment_version_id`) REFERENCES `comment_versions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_comment_version_medias_medias` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `FK_complaints_complaint_police_units` FOREIGN KEY (`complaint_police_unit_id`) REFERENCES `complaint_police_units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_complaints_messages` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_complaints_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_complaints_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `complaint_medias`
--
ALTER TABLE `complaint_medias`
  ADD CONSTRAINT `FK_complaint_medias_complaints` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_complaint_medias_medias` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `complaint_police_units`
--
ALTER TABLE `complaint_police_units`
  ADD CONSTRAINT `FK_complaint_police_units_complaints` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_complaint_police_units_police_units` FOREIGN KEY (`police_unit_id`) REFERENCES `police_units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `complaint_police_unit_officers`
--
ALTER TABLE `complaint_police_unit_officers`
  ADD CONSTRAINT `FK_complaint_police_unit_officers_complaint_police_units` FOREIGN KEY (`complaint_police_unit_id`) REFERENCES `complaint_police_units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_complaint_police_unit_officers_officers` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `downvote_comments`
--
ALTER TABLE `downvote_comments`
  ADD CONSTRAINT `FK_downvote_comments_comments` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_downvote_comments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `downvote_posts`
--
ALTER TABLE `downvote_posts`
  ADD CONSTRAINT `FK_downvote_posts_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_downvote_posts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `message_contents`
--
ALTER TABLE `message_contents`
  ADD CONSTRAINT `FK_message_contents_messages` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_message_contents_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `message_content_medias`
--
ALTER TABLE `message_content_medias`
  ADD CONSTRAINT `FK_message_content_medias_medias` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_message_content_medias_message_contents` FOREIGN KEY (`message_content_id`) REFERENCES `message_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `message_participants`
--
ALTER TABLE `message_participants`
  ADD CONSTRAINT `FK_message_participants_messages` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_message_participants_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `message_unreads`
--
ALTER TABLE `message_unreads`
  ADD CONSTRAINT `FK_message_unreads_messages` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_message_unreads_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `officers`
--
ALTER TABLE `officers`
  ADD CONSTRAINT `FK_officers_police_units` FOREIGN KEY (`police_unit_id`) REFERENCES `police_units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_officers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `officer_complaint_pins`
--
ALTER TABLE `officer_complaint_pins`
  ADD CONSTRAINT `FK_officer_complaint_pins_complaints` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_officer_complaint_pins_officers` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `officer_notes`
--
ALTER TABLE `officer_notes`
  ADD CONSTRAINT `FK_officer_notes_complaints` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_officer_notes_officers` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `officer_responses`
--
ALTER TABLE `officer_responses`
  ADD CONSTRAINT `FK_police_responses_complaints` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_police_responses_officers` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_posts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `post_medias`
--
ALTER TABLE `post_medias`
  ADD CONSTRAINT `FK_post_medias_medias` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_post_medias_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `upvote_comments`
--
ALTER TABLE `upvote_comments`
  ADD CONSTRAINT `FK_upvote_comments_comments` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_upvote_comments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `upvote_posts`
--
ALTER TABLE `upvote_posts`
  ADD CONSTRAINT `FK_upvote_posts_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_upvotes_post_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `FK_user_addresses_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `FK_user_profiles_medias` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_user_profiles_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
