-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2020 pada 03.02
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
(1, 'Miley Cyrus', 'https://winpoin.com/inilah-bocoran-gambar-surface-laptop-4-dan-surface-pro-8/', 'https://i.scdn.co/image/ab67616d0000b2738cffb7c6c40759eaf8a5a142'),
(2, 'Nathan Dawe', 'https://winpoin.com/project-latteproject-yang-bawa-aplikasi-android-di-windows-10/', 'https://i.scdn.co/image/ab67616d0000b273bdedb94e1631ee5523385584'),
(3, 'Rina Sawayama', 'https://winpoin.com/samsung-kembangkan-aplikasi-screen-recorder-baru-yang-akan-hadir-di-microsoft-store/', 'https://i.scdn.co/image/ab67616d0000b273bb57d74e709f65720a537849'),
(4, 'Taylor Swift', 'https://winpoin.com/cara-mencegah-redirect-situs-dari-internet-explorer-ke-microsoft-edge-chromium/', 'https://i.scdn.co/image/ab67616d0000b2734e265291f29fd8686d3dc3b4'),
(5, 'CHUNG HA', 'https://winpoin.com/ayo-download-epic-games-store-gratiskan-game-mudrunner/', 'https://i.scdn.co/image/ab67616d0000b273c11c8a87693f2083114729be');

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
(1, 'd1ro0OdM-yI'),
(2, 'z6lRK67CuzU'),
(3, '5M_I3Zatkpc');

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
