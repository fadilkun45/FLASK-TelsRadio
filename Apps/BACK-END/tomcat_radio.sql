-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2020 pada 04.18
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
(1, 'https://winpoin.com/wp-content/uploads/2020/11/Textorcist.jpg', 'https://winpoin.com/ayo-download-epic-games-store-gratiskan-game-the-textorcist/', 'Ayo Download, Epic Games Store Gratiskan Game The Textorcist!'),
(2, 'https://winpoin.com/wp-content/uploads/2020/11/Ini-Jawaban-Microsoft-Mengenai-Asap-Yang-Keluar-Dari-Xbox-Series-X-1.jpg', 'https://winpoin.com/ini-jawaban-microsoft-mengenai-asap-yang-keluar-dari-xbox-series-x/', 'Ini Jawaban Microsoft Mengenai Asap Yang Keluar Dari Xbox Series X'),
(3, 'https://winpoin.com/wp-content/uploads/2020/11/Microsoft-Catat-Detail-Fitur-Yang-Ditambahkan-ke-OneDrive-Pada-Bulan-Oktober-2020-2-218x150.jpg', 'https://winpoin.com/microsoft-catat-detail-fitur-yang-ditambahkan-ke-onedrive-pada-bulan-oktober-2020/', 'Microsoft Catat Detail Fitur Yang Ditambahkan ke OneDrive Pada Bulan Oktober 2020'),
(4, 'https://winpoin.com/wp-content/uploads/2020/10/skype-218x150.jpg', 'https://winpoin.com/skype-8-66-dirilis-peningkatan-panggilan-grup-hingga-100-orang-kini-tersedia-untuk-seluruh-pengguna/', 'Skype 8.66 Dirilis, Peningkatan Panggilan Grup hingga 100 Orang Kini Tersedia Untuk Seluruh Pengguna'),
(5, 'https://winpoin.com/wp-content/uploads/2020/11/Youtube-Tidak-Akan-Youtube-Rewind-2020-1-218x150.jpg', 'https://winpoin.com/youtube-tidak-akan-youtube-rewind-2020/', 'Youtube : Tidak Akan Youtube Rewind 2020!'),
(6, 'https://winpoin.com/wp-content/uploads/2018/07/Outlook-Windows-10-218x150.jpg', 'https://winpoin.com/microsoft-bug-di-outlook-sebabkan-email-yang-dihapus-muncul-kembali/', 'Microsoft : Bug di Outlook Sebabkan Email Yang Dihapus, Muncul Kembali!'),
(7, 'https://winpoin.com/wp-content/uploads/2018/09/diskcleanup-218x150.jpg', 'https://winpoin.com/microsoft-konfirmasi-bug-folder-windows-old-yang-tidak-bisa-dihapus/', 'Microsoft Konfirmasi Bug Folder Windows.old Yang Tidak Bisa Dihapus!'),
(8, 'https://winpoin.com/wp-content/uploads/2019/10/windowslight1-1200x800-218x150.jpg', 'https://winpoin.com/microsoft-rilis-windows-10-insider-preview-build-20257/', 'Microsoft Rilis Windows 10 Insider Preview Build 20257'),
(9, 'https://winpoin.com/wp-content/uploads/2020/11/Windows-7-Standard-Embedded-Akan-Mencapai-Akhir-Dukungan-13-Oktober-2020-1-218x150.jpg', 'https://winpoin.com/windows-7-standard-embedded-akan-mencapai-akhir-dukungan-13-oktober-2020/', 'Windows 7 Standard Embedded Sudah Mencapai Akhir Dukungan 13 Oktober 2020 Lalu'),
(10, 'https://winpoin.com/wp-content/uploads/2020/11/Mulai-Juni-2021-Tidak-Ada-Lagi-Unlimited-Storage-di-Google-Photos-2-218x150.jpg', 'https://winpoin.com/mulai-juni-2021-tidak-ada-lagi-unlimited-storage-di-google-photos/', 'Mulai Juni 2021, Tidak Ada Lagi Unlimited Storage di Google Photos');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
