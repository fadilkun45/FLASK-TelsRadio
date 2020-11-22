-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2020 pada 22.05
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
(1, 'https://winpoin.com/wp-content/uploads/2020/11/Siap-Siap-Edge-Add-ons-Akan-Menyediakan-Theme-Store-nya-Sendiri-2.jpg', 'https://winpoin.com/siap-siap-edge-add-ons-akan-menyediakan-theme-store-nya-sendiri/', 'Siap Siap, Edge Add-ons Akan Menyediakan Theme Store-nya Sendiri'),
(2, 'https://winpoin.com/wp-content/uploads/2020/11/Elite-Dangerous.jpg', 'https://winpoin.com/ayo-download-epic-games-store-gratiskan-game-elite-dangerous-dan-the-world-next-door/', 'Ayo Download, Epic Games Store Gratiskan Game Elite Dangerous dan The World Next Door!'),
(3, 'https://winpoin.com/wp-content/uploads/2020/11/Waspada-Ekstensi-Palsu-di-Microsoft-Edge-Store-Mengandung-Malware-2-218x150.jpg', 'https://winpoin.com/waspada-ekstensi-palsu-di-microsoft-edge-store-mengandung-malware/', 'Waspada, Ekstensi Palsu di Microsoft Edge Store Mengandung Malware'),
(4, 'https://winpoin.com/wp-content/uploads/2020/11/7c2f345bdfcadb8a3faf483ebaa2e9aea712bbdb-218x150.jpg', 'https://winpoin.com/microsoft-merilis-windows-10-build-20262-1010-ke-insider-dev-channel/', 'Microsoft Merilis Windows 10 Build 20262.1010 ke Insider Dev Channel'),
(5, 'https://winpoin.com/wp-content/uploads/2020/04/Google-Kini-Kembangkan-Fitur-Media-History-Untuk-Google-Chrome-1-218x150.jpg', 'https://winpoin.com/google-perpanjang-dukungan-chrome-untuk-windows-7-hingga-tahun-2022/', 'Google Perpanjang Dukungan Chrome Untuk Windows 7 Hingga Tahun 2022'),
(6, 'https://winpoin.com/wp-content/uploads/2020/08/Cara-Nonaktifkan-ALT-Tab-Behavior-Baru-di-Windows-10-20H2-4-218x150.jpg', 'https://winpoin.com/fungsi-alt-tab-error-di-windows-10-20h2-tenang-kamu-tidak-sendirian/', 'Fungsi ALT + Tab Error di Windows 10 20H2?, Tenang Kamu Tidak Sendirian!'),
(7, 'https://winpoin.com/wp-content/uploads/2019/07/windowslight-218x150.jpg', 'https://winpoin.com/microsoft-rilis-preview-update-kb4586819-untuk-pengguna-windows-10-1903-1909/', 'Microsoft Rilis Preview Update KB4586819 Untuk Pengguna Windows 10 1903 & 1909'),
(8, 'https://winpoin.com/wp-content/uploads/2020/11/Giveaway-Multcloud-Quarterly-Backupper-Pro-dan-MBackuper-Pro-Dari-AOMEI-Tersedia-Secara-Gratis-2-218x150.jpg', 'https://winpoin.com/giveaway-multcloud-quarterly-backupper-pro-dan-mbackuper-pro-dari-aomei-tersedia-secara-gratis/', 'Giveaway : Multcloud Quarterly, Backupper Pro dan MBackuper Pro Dari AOMEI Tersedia Secara Gratis'),
(9, 'https://winpoin.com/wp-content/uploads/2020/03/firefox-74-ubuntu-gylang-218x150.jpg', 'https://winpoin.com/mozilla-akan-tinggalkan-flash-player-mulai-dari-firefox-85/', 'Mozilla Akan Tinggalkan Flash Player Mulai dari Firefox 85'),
(10, 'https://winpoin.com/wp-content/uploads/2020/11/Microsoft-Rilis-Microsoft-Edge-Chromium-87-Apa-Saja-Fitur-Barunya-3-218x150.jpg', 'https://winpoin.com/microsoft-rilis-microsoft-edge-chromium-87-apa-saja-fitur-barunya/', 'Microsoft Rilis Microsoft Edge Chromium 87, Apa Saja Fitur Barunya?'),
(11, 'https://winpoin.com/wp-content/uploads/2019/01/windowslight-218x150.jpg', 'https://winpoin.com/microsoft-rilis-security-update-kb4594440-kb4594443-untuk-windows-windows-10/', 'Microsoft Rilis Security Update KB4594440, KB4594443, Untuk Windows Windows 10');

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
(1, '5M_I3Zatkpc'),
(2, 'l__PHAF-q_8'),
(3, 'SmBLBgPxYO8');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
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
-- AUTO_INCREMENT untuk tabel `youtube`
--
ALTER TABLE `youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
