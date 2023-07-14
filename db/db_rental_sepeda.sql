-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2023 pada 15.55
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rental_sepeda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) DEFAULT NULL,
  `alamat_admin` varchar(255) DEFAULT NULL,
  `jenis_kelamin_admin` char(1) DEFAULT NULL,
  `deleted` enum('false','true','') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_sepeda`
--

CREATE TABLE `kategori_sepeda` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `deleted` enum('false','true','') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `kategori_sepeda`
--

INSERT INTO `kategori_sepeda` (`id`, `nama_kategori`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'sepeda lipat', 'false', '2023-06-19 12:09:30', '2023-06-19 12:09:30'),
(2, 'BMX', 'false', '2023-06-19 12:09:44', '2023-06-19 12:09:44'),
(3, 'sepeda gunung', 'false', '2023-06-19 12:09:54', '2023-06-19 12:09:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama_member` varchar(255) DEFAULT NULL,
  `alamat_member` varchar(255) DEFAULT NULL,
  `nomor_telp` varchar(12) DEFAULT NULL,
  `jenis_kelamin_member` char(1) DEFAULT NULL,
  `deleted` enum('false','true','') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_05_09_013019_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int(11) NOT NULL,
  `id_sewa_sepeda` int(11) DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `deleted` enum('false','true','') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-05-08 20:03:35', '2023-05-08 20:03:35'),
(2, 'role-create', 'web', '2023-05-08 20:03:35', '2023-05-08 20:03:35'),
(3, 'role-edit', 'web', '2023-05-08 20:03:35', '2023-05-08 20:03:35'),
(4, 'role-delete', 'web', '2023-05-08 20:03:35', '2023-05-08 20:03:35'),
(5, 'product-list', 'web', '2023-05-08 20:03:35', '2023-05-08 20:03:35'),
(6, 'product-create', 'web', '2023-05-08 20:03:35', '2023-05-08 20:03:35'),
(7, 'product-edit', 'web', '2023-05-08 20:03:35', '2023-05-08 20:03:35'),
(8, 'product-delete', 'web', '2023-05-08 20:03:35', '2023-05-08 20:03:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-05-08 20:05:47', '2023-05-08 20:05:47'),
(2, 'Staff', 'web', '2023-05-11 01:48:14', '2023-05-11 01:48:14'),
(3, 'Member', 'web', '2023-05-11 01:48:48', '2023-05-11 01:48:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sepeda`
--

CREATE TABLE `sepeda` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `nama_sepeda` varchar(255) DEFAULT NULL,
  `insinyur` varchar(255) DEFAULT NULL,
  `disewa` tinyint(1) DEFAULT NULL,
  `pabrikan` varchar(255) DEFAULT NULL,
  `tahun_produksi` varchar(255) DEFAULT NULL,
  `jumlah_stok` int(11) DEFAULT NULL,
  `deleted` enum('false','true','') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_menu`
--

CREATE TABLE `setting_menu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  `menu_url` text DEFAULT NULL,
  `menu_color` varchar(255) DEFAULT NULL,
  `menu_parent` int(11) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `type` enum('label','menu','submenu') DEFAULT 'label',
  `ord` int(11) DEFAULT NULL,
  `extensiontarget` int(11) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `deleted` enum('true','false') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `setting_menu`
--

INSERT INTO `setting_menu` (`id`, `menu_name`, `menu_label`, `menu_url`, `menu_color`, `menu_parent`, `menu_icon`, `type`, `ord`, `extensiontarget`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'MASTER', NULL, '#', NULL, 0, NULL, 'label', 1, NULL, NULL, NULL, NULL, '2023-05-23 02:26:29'),
(2, 'Auth', NULL, '#', NULL, 1, 'ki-address-book', 'menu', 1, NULL, NULL, NULL, NULL, '2023-05-23 01:39:56'),
(3, 'Users', NULL, 'users', NULL, 2, 'ki-address-book', 'menu', 1, NULL, NULL, NULL, NULL, '2023-05-22 09:56:14'),
(4, 'Roles', NULL, 'roles', NULL, 2, 'ki-address-book', 'menu', 2, NULL, NULL, NULL, NULL, '2023-05-23 03:37:13'),
(5, 'Anggota', NULL, 'anggota', NULL, 1, 'ki-address-book', 'menu', 2, NULL, NULL, NULL, NULL, '2023-05-23 01:39:56'),
(6, 'Kategori Buku', NULL, 'kategori_buku', NULL, 1, 'ki-address-book', 'menu', 1, NULL, NULL, NULL, NULL, '2023-05-23 03:37:13'),
(7, 'Buku', NULL, 'buku', NULL, 1, 'ki-address-book', 'menu', 2, NULL, NULL, NULL, NULL, '2023-05-23 03:37:13'),
(8, 'Pustakawan', NULL, 'pustakawan', NULL, 1, 'ki-address-book', 'menu', 2, NULL, NULL, NULL, NULL, '2023-05-23 02:26:30'),
(9, 'TRANSAKSI', NULL, '#', NULL, 0, 'ki-address-book', 'label', 1, NULL, NULL, NULL, NULL, '2023-05-23 03:23:28'),
(10, 'Peminjaman', NULL, 'peminjaman', NULL, 9, 'ki-address-book', 'menu', 2, NULL, NULL, NULL, NULL, '2023-05-23 03:23:28'),
(11, 'Pengembalian', NULL, 'pengembalian', NULL, 9, 'ki-address-book', 'menu', 3, NULL, NULL, NULL, NULL, '2023-05-23 03:23:28'),
(12, 'Edit Stock', NULL, NULL, NULL, 12, 'ki-address-book', 'menu', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Order History', NULL, NULL, NULL, 12, 'ki-address-book', 'menu', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Discount Product', NULL, NULL, NULL, 12, 'ki-address-book', 'menu', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_route`
--

CREATE TABLE `setting_route` (
  `id` int(11) NOT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `grp` enum('web','api') DEFAULT 'web',
  `type` varchar(255) DEFAULT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `stats` varchar(255) DEFAULT 'false',
  `deleted` enum('false','true') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `setting_route`
--

INSERT INTO `setting_route` (`id`, `route_name`, `grp`, `type`, `controller_name`, `method`, `stats`, `deleted`, `created_at`, `update_at`) VALUES
(1, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', NULL, NULL, 'true', NULL, NULL),
(2, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
(3, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
(4, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
(5, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
(6, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\BackSetting_webSetting_webController', '', '', 'true', NULL, NULL),
(7, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_webSetting_webController', '', '', 'true', NULL, NULL),
(8, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_webSetting_webController', '', '', 'true', NULL, NULL),
(9, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', '', '', 'true', NULL, NULL),
(10, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', '', '', 'true', NULL, NULL),
(11, 'setting_menu', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_menu\\Setting_menuController', '', '', 'false', NULL, NULL),
(12, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(13, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(14, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(15, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(16, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(17, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(18, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(19, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(20, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(21, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(22, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(23, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(24, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(25, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(26, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(27, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(28, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(29, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(30, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(31, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(32, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(33, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(34, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(35, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(36, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(37, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(38, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(39, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(40, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(41, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(42, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(43, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(44, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(45, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(46, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(47, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(48, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(49, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(50, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(51, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(52, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(53, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(54, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(55, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(56, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(57, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(58, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(59, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(60, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(61, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(62, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(63, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(64, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(65, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(66, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(67, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(68, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(69, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(70, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(71, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(72, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(73, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(74, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(75, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(76, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(77, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(78, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(79, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL),
(80, 'anggota', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Anggota\\AnggotaController', '', '', 'false', NULL, NULL),
(81, 'kategori_buku', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Kategori_buku\\Kategori_bukuController', '', '', 'false', NULL, NULL),
(82, 'buku', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Buku\\BukuController', '', '', 'false', NULL, NULL),
(83, 'pustakawan', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pustakawan\\PustakawanController', '', '', 'false', NULL, NULL),
(84, 'peminjaman', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Peminjaman\\PeminjamanController', '', '', 'false', NULL, NULL),
(85, 'pengembalian', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pengembalian\\PengembalianController', '', '', 'false', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_web`
--

CREATE TABLE `setting_web` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_detail` text DEFAULT NULL,
  `site_type` varchar(255) DEFAULT NULL,
  `site_currency` varchar(255) DEFAULT NULL,
  `site_logo_front` varchar(255) DEFAULT NULL,
  `site_logo_admin` varchar(255) DEFAULT NULL,
  `stripe_screet_key` varchar(255) DEFAULT NULL,
  `stripe_publishable_key` varchar(255) DEFAULT NULL,
  `stripe_webhook_screet` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `gst` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `setting_web`
--

INSERT INTO `setting_web` (`id`, `site_name`, `site_detail`, `site_type`, `site_currency`, `site_logo_front`, `site_logo_admin`, `stripe_screet_key`, `stripe_publishable_key`, `stripe_webhook_screet`, `domain`, `price`, `gst`, `created_at`, `updated_at`) VALUES
(4, 'Supresso', 'supresso branch singapore', '1', '2', '', '', 'qwerty', 'asdfg', 'zxcvb', 'poiuyt', 'lkjhgf', 8, NULL, NULL),
(5, 'qwerty gaes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16 07:13:34', '2023-05-16 07:14:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `id` int(11) NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `id_sepeda` int(11) DEFAULT NULL,
  `tanggal_sewa` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `tanggal_pengembalian` date DEFAULT NULL,
  `deleted` enum('false','true','') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa_sepeda`
--

CREATE TABLE `sewa_sepeda` (
  `id_sewa_sepeda` int(11) NOT NULL,
  `deleted` enum('false','true') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `qty_sewa` int(11) DEFAULT NULL,
  `fk_id_sewa` int(11) DEFAULT NULL,
  `fk_id_member` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `address`, `phone`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, NULL, '081217173406', '$2y$10$d5/YyDOALW5i/9CxEsbdsOaYrmMa6VrYY5MttBTlCFxfSeAKut3kW', 'superwpdev.png', NULL, '2023-05-08 19:43:39', '2023-05-08 19:43:39'),
(2, 'Suryo Atmojo', 'suryoatm@gmail.com', NULL, NULL, '085649224822', '$2y$10$NQfNc3uN3U3t5IzfPiN2ZuGkikVH2uzq2Y3oTx84lXF3.h6dB2P9S', 'superwpdev.png', NULL, '2023-05-08 20:05:47', '2023-05-08 20:05:47'),
(3, 'atmojo', 'suryoatmojo@uwp.ac.id', NULL, NULL, NULL, '$2y$10$z/jeK7/cfQ.eGQuAP74wDOr53nmui.OiR9JYlQ6lMDaP85F.tAuey', NULL, NULL, '2023-05-11 01:37:39', '2023-05-11 19:44:03'),
(4, 'sigit', 'sigitwahyu05@gmail.com', NULL, NULL, NULL, '$2y$10$//L19Sf8c7gpp6RMstpgkulVv89vs96NZI19K2rPq.P.Q4qgwy08a', '', NULL, '2023-05-11 02:09:28', '2023-05-11 23:03:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indeks untuk tabel `kategori_sepeda`
--
ALTER TABLE `kategori_sepeda`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id_peminjaman` (`id_sewa_sepeda`) USING BTREE;

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indeks untuk tabel `sepeda`
--
ALTER TABLE `sepeda`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id_kategori` (`id_kategori`) USING BTREE;

--
-- Indeks untuk tabel `setting_menu`
--
ALTER TABLE `setting_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `setting_route`
--
ALTER TABLE `setting_route`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `setting_web`
--
ALTER TABLE `setting_web`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id_anggota` (`id_member`) USING BTREE,
  ADD KEY `id_buku` (`id_sepeda`) USING BTREE;

--
-- Indeks untuk tabel `sewa_sepeda`
--
ALTER TABLE `sewa_sepeda`
  ADD PRIMARY KEY (`id_sewa_sepeda`),
  ADD KEY `fk_id_sewa` (`fk_id_sewa`),
  ADD KEY `fk_id_member` (`fk_id_member`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_sepeda`
--
ALTER TABLE `kategori_sepeda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sepeda`
--
ALTER TABLE `sepeda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setting_menu`
--
ALTER TABLE `setting_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `setting_route`
--
ALTER TABLE `setting_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `setting_web`
--
ALTER TABLE `setting_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sewa_sepeda`
--
ALTER TABLE `sewa_sepeda`
  MODIFY `id_sewa_sepeda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `fk_id_sewa_sepeda` FOREIGN KEY (`id_sewa_sepeda`) REFERENCES `sewa_sepeda` (`id_sewa_sepeda`);

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sepeda`
--
ALTER TABLE `sepeda`
  ADD CONSTRAINT `fk_id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_sepeda` (`id`);

--
-- Ketidakleluasaan untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `fk_member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `fk_sepeda` FOREIGN KEY (`id_sepeda`) REFERENCES `sepeda` (`id`);

--
-- Ketidakleluasaan untuk tabel `sewa_sepeda`
--
ALTER TABLE `sewa_sepeda`
  ADD CONSTRAINT `fk_id_member` FOREIGN KEY (`fk_id_member`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `fk_id_sewa` FOREIGN KEY (`fk_id_sewa`) REFERENCES `sewa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
