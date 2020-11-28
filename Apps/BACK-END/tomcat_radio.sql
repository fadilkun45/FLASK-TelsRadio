-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2020 pada 11.28
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tomcat_radio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `thumbnail`, `link`, `judul`) VALUES
(1, 'https://winpoin.com/wp-content/uploads/2020/11/Inilah-Bocoran-Gambar-Surface-Laptop-4-dan-Surface-Pro-8-1.jpg', 'https://winpoin.com/inilah-bocoran-gambar-surface-laptop-4-dan-surface-pro-8/', 'Inilah Bocoran Gambar Surface Laptop 4 dan Surface Pro 8'),
(2, 'https://winpoin.com/wp-content/uploads/2018/02/caramemindahkanfotodariiphoneandroidkelaptop_2.jpg', 'https://winpoin.com/project-latteproject-yang-bawa-aplikasi-android-di-windows-10/', 'Project Latte, Project Yang Bawa Aplikasi Android di Windows 10'),
(3, 'https://winpoin.com/wp-content/uploads/2020/11/Samsung-Kembangkan-Aplikasi-Screen-Recorder-Baru-Yang-Akan-Hadir-di-Microsoft-Store-1-218x150.jpeg', 'https://winpoin.com/samsung-kembangkan-aplikasi-screen-recorder-baru-yang-akan-hadir-di-microsoft-store/', 'Samsung Kembangkan Aplikasi Screen Recorder Baru Yang Akan Hadir di Microsoft Store'),
(4, 'https://winpoin.com/wp-content/uploads/2020/11/Cara-Mencegah-Redirect-Situs-Dari-Internet-Explorer-ke-Microsoft-Edge-Chromium-5-218x150.jpg', 'https://winpoin.com/cara-mencegah-redirect-situs-dari-internet-explorer-ke-microsoft-edge-chromium/', 'Cara Mencegah Redirect Situs Dari Internet Explorer ke Microsoft Edge Chromium'),
(5, 'https://winpoin.com/wp-content/uploads/2020/11/Mudrunner-218x150.jpg', 'https://winpoin.com/ayo-download-epic-games-store-gratiskan-game-mudrunner/', 'Ayo Download, Epic Games Store Gratiskan Game MudRunner!'),
(6, 'https://winpoin.com/wp-content/uploads/2018/09/Spotify-218x150.jpg', 'https://winpoin.com/hati-hati-lebih-dari-300-000-akun-spotify-di-hack/', 'Hati Hati, Lebih Dari 300.000 Akun Spotify Di Hack!'),
(7, 'https://winpoin.com/wp-content/uploads/2020/11/Cara-Block-Welcome-Screen-di-Windows-10-0-218x150.jpg', 'https://winpoin.com/cara-block-welcome-screen-di-windows-10/', 'Cara Block Welcome Screen di Windows 10'),
(8, 'https://winpoin.com/wp-content/uploads/2020/11/1606415181_adduplex_november_2020-218x150.jpg', 'https://winpoin.com/adduplex-jumlah-pengguna-windows-10-1909-meningkat/', 'AdDuplex : Jumlah Pengguna Windows 10 1909 Meningkat!'),
(9, 'https://winpoin.com/wp-content/uploads/2020/11/Apa-Itu-WinREAgent-Amankah-Untuk-Dihapus-1-218x150.jpg', 'https://winpoin.com/apa-itu-folder-winreagent-amankah-untuk-dihapus/', 'Apa Itu Folder $WinREAgent, Amankah Untuk Dihapus?'),
(10, 'https://winpoin.com/wp-content/uploads/2019/11/windows10wallpaper-218x150.jpg', 'https://winpoin.com/rumor-windows-10-21h1-adalah-minor-update-kini-benar-benar-terjadi/', 'Rumor Windows 10 21H1 Adalah Minor Update Kini Benar Benar Terjadi!'),
(11, 'https://winpoin.com/wp-content/uploads/2019/10/Windows-10X-1-218x150.jpg', 'https://winpoin.com/windows-10x-masuk-rtm-bulan-desember-dan-peluncuran-penuh-akan-tersedia-tahun-depan/', 'Windows 10X Masuk RTM Bulan Desember dan Peluncuran Penuh Akan Tersedia Tahun Depan!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spotify`
--

CREATE TABLE `spotify` (
  `id` int(11) NOT NULL,
  `singer` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `spotify`
--

INSERT INTO `spotify` (`id`, `singer`, `link`, `images`) VALUES
(1, 'Nathan Dawe', 'https://open.spotify.com/artist/2gduEC76ry33RVurAvT05p', 'https://i.scdn.co/image/ab67616d0000b273bdedb94e1631ee5523385584\n'),
(2, 'Rina Sawayama', 'https://open.spotify.com/artist/2KEqzdPS7M5YwGmiuPTdr5', 'https://i.scdn.co/image/ab67616d0000b273bb57d74e709f65720a537849\n'),
(3, 'Taylor Swift', 'https://open.spotify.com/artist/06HL4z0CvFAxyc27GXpf02', 'https://i.scdn.co/image/ab67616d0000b2734e265291f29fd8686d3dc3b4\n'),
(4, 'CHUNG HA', 'https://open.spotify.com/artist/2PSJ6YriU7JsFucxACpU7Y', 'https://i.scdn.co/image/ab67616d0000b273c11c8a87693f2083114729be\n'),
(5, 'Sheryl Sheinafia', 'https://open.spotify.com/artist/1lfMGY3PXMmj6qgwiPqp06', 'https://i.scdn.co/image/ab67616d0000b273867481cce3a317078aac1b7f\n'),
(6, 'Rinni Wulandari', 'https://open.spotify.com/artist/3rFmw91W5mxZHH6r40GGWh', 'https://i.scdn.co/image/ab67616d0000b273cadaff713b0a998c5f4fa442\n'),
(7, 'RAYHAN NOOR', 'https://open.spotify.com/artist/5jLL1YM0DNKKhnLl0oSlUA', 'https://i.scdn.co/image/ab67616d0000b2737d4c9f06231e51975e7d3722\n'),
(8, 'Armand Maulana', 'https://open.spotify.com/artist/1HHKUckpOnrE6c6YlbYzZb', 'https://i.scdn.co/image/ab67616d0000b27320f20bc0099e9b42ba87c489\n'),
(9, 'Aminda', 'https://open.spotify.com/artist/43wimUBzWxzNqiebyt1sG4', 'https://i.scdn.co/image/ab67616d0000b273db71596484c5932373a9f0b0\n'),
(10, 'Nathan Dawe', 'https://open.spotify.com/artist/2gduEC76ry33RVurAvT05p', 'https://i.scdn.co/image/ab67616d0000b273bdedb94e1631ee5523385584\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `youtube`
--

CREATE TABLE `youtube` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `youtube`
--

INSERT INTO `youtube` (`id`, `link`) VALUES
(1, 'z6lRK67CuzU'),
(2, '5M_I3Zatkpc'),
(3, 'l__PHAF-q_8');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `spotify`
--
ALTER TABLE `spotify`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `youtube`
--
ALTER TABLE `youtube`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `spotify`
--
ALTER TABLE `spotify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `youtube`
--
ALTER TABLE `youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
