-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2020 pada 03.30
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `natip_tes1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_indikator`
--

CREATE TABLE `data_indikator` (
  `indikator_id` int(11) NOT NULL,
  `kode_indikator` varchar(20) NOT NULL,
  `indikator` varchar(50) NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_indikator`
--

INSERT INTO `data_indikator` (`indikator_id`, `kode_indikator`, `indikator`, `bobot`) VALUES
(1, 'PEJ', 'Penjualan / Sales', 50),
(2, 'PEL', 'Pelatihan / Training', 30),
(3, 'LAP', 'Laporan', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `karyawan_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`karyawan_id`, `nama`, `kota`) VALUES
(1, 'Ahmad\r\n', 'Surabaya\r\n'),
(2, 'Budi', 'Gresik\r\n'),
(3, 'Candra', 'Sidoarjo\r\n'),
(4, 'Doni\r\n', 'Surabaya\r\n'),
(5, 'Joko\r\n', 'Surabaya\r\n'),
(6, 'Ervan\r\n', 'Gresik\r\n'),
(7, 'Fahri\r\n', 'Sidoarjo\r\n'),
(8, 'Gilang\r\n', 'Surabaya\r\n'),
(9, 'Heru\r\n', 'Gresik\r\n'),
(10, 'Ismail\r\n', 'Sidoarjo\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kinerja`
--

CREATE TABLE `data_kinerja` (
  `kinerja_id` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `kode_subindikator` varchar(50) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kinerja`
--

INSERT INTO `data_kinerja` (`kinerja_id`, `id_karyawan`, `kode_subindikator`, `nilai`) VALUES
(1, 1, 'US', 12),
(2, 1, 'NC', 4),
(3, 1, 'ST', 1),
(4, 1, 'CT', 1),
(5, 1, 'TT', 0),
(6, 1, 'FT', 0),
(7, 1, 'PT', 0),
(8, 1, 'LA', 76),
(9, 2, 'US', 16),
(10, 2, 'NC', 1),
(11, 2, 'ST', 1),
(12, 2, 'CT', 1),
(13, 2, 'TT', 1),
(14, 2, 'FT', 0),
(15, 2, 'PT', 0),
(16, 2, 'LA', 70),
(17, 3, 'US', 10),
(18, 3, 'NC', 7),
(19, 3, 'ST', 0),
(20, 3, 'CT', 0),
(21, 3, 'TT', 1),
(22, 3, 'FT', 1),
(23, 3, 'PT', 1),
(24, 3, 'LA', 75),
(33, 4, 'US', 18),
(34, 4, 'NC', 2),
(35, 4, 'ST', 1),
(36, 4, 'CT', 1),
(37, 4, 'TT', 1),
(38, 4, 'FT', 1),
(39, 4, 'PT', 1),
(40, 4, 'LA', 80),
(41, 5, 'US', 15),
(42, 5, 'NC', 5),
(43, 5, 'ST', 1),
(44, 5, 'CT', 0),
(45, 5, 'TT', 1),
(46, 5, 'FT', 0),
(47, 5, 'PT', 1),
(48, 5, 'LA', 79);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_sub_indikator`
--

CREATE TABLE `data_sub_indikator` (
  `subindikator_id` int(11) NOT NULL,
  `kode_subindikator` varchar(100) NOT NULL,
  `kode_indikator` varchar(20) NOT NULL,
  `subindikator` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_sub_indikator`
--

INSERT INTO `data_sub_indikator` (`subindikator_id`, `kode_subindikator`, `kode_indikator`, `subindikator`) VALUES
(1, 'US', 'PEJ', 'Unit Sale'),
(2, 'NC', 'PEJ', 'New Customer'),
(3, 'ST', 'PEL', 'Sales Training'),
(4, 'CT', 'PEL', 'Communication Training'),
(5, 'TT', 'PEL', 'Team Building Training'),
(6, 'FT', 'PEL', 'Financial Training'),
(7, 'PT', 'PEL', 'Product Training'),
(8, 'LA', 'LAP', 'Laporan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_indikator`
--
ALTER TABLE `data_indikator`
  ADD PRIMARY KEY (`indikator_id`);

--
-- Indeks untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`karyawan_id`);

--
-- Indeks untuk tabel `data_kinerja`
--
ALTER TABLE `data_kinerja`
  ADD PRIMARY KEY (`kinerja_id`);

--
-- Indeks untuk tabel `data_sub_indikator`
--
ALTER TABLE `data_sub_indikator`
  ADD PRIMARY KEY (`subindikator_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_indikator`
--
ALTER TABLE `data_indikator`
  MODIFY `indikator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  MODIFY `karyawan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `data_kinerja`
--
ALTER TABLE `data_kinerja`
  MODIFY `kinerja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `data_sub_indikator`
--
ALTER TABLE `data_sub_indikator`
  MODIFY `subindikator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
