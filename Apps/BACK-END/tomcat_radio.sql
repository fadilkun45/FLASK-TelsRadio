-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2020 pada 17.29
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
(1, 'https://winpoin.com/wp-content/uploads/2020/11/Image-38.jpg', 'https://winpoin.com/aplikasi-whatsapp-di-windows-10-kini-mendukung-fitur-disappear-messages/', 'Aplikasi WhatsApp di Windows 10 kini Mendukung Fitur Disappear Messages'),
(2, 'https://winpoin.com/wp-content/uploads/2020/11/Butcher.jpg', 'https://winpoin.com/dapatkan-game-butcher-gratis-di-gog-store/', 'Dapatkan Game Butcher Gratis di GOG Store'),
(3, 'https://winpoin.com/wp-content/uploads/2020/06/OneDrive-Windows-10-218x150.jpg', 'https://winpoin.com/bulan-depan-onedrive-akan-dapat-fitur-exclude-untuk-sinkronisasi-files/', 'Bulan Depan, OneDrive Akan Dapat Fitur Exclude Untuk Sinkronisasi Files'),
(4, 'https://winpoin.com/wp-content/uploads/2020/11/Microsoft-Perbarui-Perangkat-Lunaknya-Untuk-Dukungan-iPhone-12-1-218x150.jpg', 'https://winpoin.com/microsoft-perbarui-perangkat-lunaknya-untuk-dukungan-iphone-12/', 'Microsoft Perbarui Perangkat Lunaknya Untuk Dukungan iPhone 12'),
(5, 'https://winpoin.com/wp-content/uploads/2020/11/Microsoft-Tingkatkan-Fungsi-Badge-Notifications-di-PWA-Edge-Chromium-1-218x150.jpg', 'https://winpoin.com/microsoft-tingkatkan-fungsi-badge-notifications-di-edge-chromium/', 'Microsoft Tingkatkan Fungsi Badge Notifications di Edge Chromium'),
(6, 'https://winpoin.com/wp-content/uploads/2020/11/Inilah-Efek-Samping-Dari-Update-KB4577586-Untuk-Hapus-Flash-Player-7-218x150.jpg', 'https://winpoin.com/inilah-efek-samping-dari-update-kb4577586-untuk-hapus-flash-player/', 'Inilah Efek Samping Dari Update KB4577586 Untuk Hapus Flash Player'),
(7, 'https://winpoin.com/wp-content/uploads/2020/11/Firefox-Ganti-Nama-master-Password-Menjadi-primary-Password-3-218x150.jpg', 'https://winpoin.com/firefox-ganti-nama-master-password-menjadi-primary-password/', 'Firefox Ganti Nama “Master” Password Menjadi “Primary” Password'),
(8, 'https://winpoin.com/wp-content/uploads/2020/11/Paket-Kompatibilitas-OpenCL-and-OpenGL-Tersedia-Untuk-Windows-10-di-Microsoft-Store-2-218x150.jpg', 'https://winpoin.com/paket-kompatibilitas-opencl-and-opengl-tersedia-untuk-windows-10-di-microsoft-store/', 'Paket Kompatibilitas OpenCL and OpenGL Tersedia Untuk Windows 10 di Microsoft Store'),
(9, 'https://winpoin.com/wp-content/uploads/2020/11/Masalah-Pada-Update-KB4586781-Mulai-Gagal-Install-Hingga-BSOD-3-218x150.jpg', 'https://winpoin.com/masalah-pada-update-kb4586781-mulai-gagal-install-hingga-bsod/', 'Masalah Pada Update KB4586781, Mulai Gagal Install Hingga BSOD'),
(10, 'https://winpoin.com/wp-content/uploads/2020/11/Mengenal-Bug-In-Place-Upgrade-di-Windows-10-20H2-4-1-218x150.jpg', 'https://winpoin.com/mengenal-bug-in-place-upgrade-di-windows-10-20h2/', 'Mengenal Bug In Place Upgrade di Windows 10 20H2'),
(11, 'https://winpoin.com/wp-content/uploads/2020/11/WhatsApp-Akhiri-Dukungan-Untuk-Microsoft-Edge-Legacy-2-218x150.jpg', 'https://winpoin.com/whatsapp-akhiri-dukungan-untuk-microsoft-edge-legacy/', 'WhatsApp Akhiri Dukungan Untuk Microsoft Edge Legacy');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
