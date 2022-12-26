-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Des 2022 pada 11.03
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `NamaKategori` varchar(100) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `NamaKategori`, `create_at`, `update_at`) VALUES
(1, 'Furniture', '2022-02-08 14:00:48', '2022-03-28 14:00:48'),
(2, 'Pakaian', '2022-12-10 14:01:35', '2022-12-10 14:02:25'),
(3, 'Elektronik', '2022-12-04 14:01:35', '2022-12-04 14:02:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `NamaPelanggan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `NamaPelanggan`, `alamat`, `no_hp`) VALUES
(1, 'Abrar Suryagi Arefas', 'Kuantan Singingi', '081256348966'),
(2, 'Ayatullah Arezan', 'Padang', '082277450110'),
(3, 'Arshanda Arefif', 'Solok', '087865456788'),
(4, 'Afifah Areisya', 'Pariaman', '087765890900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `KdProduk` varchar(50) NOT NULL,
  `NamaProduk` varchar(100) NOT NULL,
  `HargaProduk` decimal(10,0) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `KdProduk`, `NamaProduk`, `HargaProduk`, `idkategori`, `created_at`, `updated_at`) VALUES
(1, 'F01', 'MEJA MAKAN SATU SET', '2000000', 1, '2022-12-05 10:31:06', '2022-12-23 14:31:06'),
(2, 'F02', 'KASUR OSCAR', '5000000', 1, '2022-11-10 14:32:50', '2022-11-30 14:32:55'),
(5, 'F03', 'BANTAL PERSEGI PANJANG', '150000', 1, '2022-11-21 08:34:55', '2022-11-30 12:34:55'),
(6, 'F04', 'BANTAL GULING', '255000', 1, '2022-10-10 18:34:55', '2022-11-10 14:34:55'),
(7, 'F05', 'LEMARI BELAJAR', '3330000', 1, '2022-12-01 14:37:34', '2022-12-25 11:37:34'),
(8, 'P1', 'BAJU KEMEJA PEREMPUAN', '75000', 2, '2022-12-01 14:41:04', '2022-12-20 14:41:04'),
(9, 'P2', 'BAJU BATIK JAWA', '1100000', 2, '2022-11-09 14:41:04', '2022-11-30 14:41:04'),
(10, 'P3', 'CELANA KULOT ', '180000', 2, '2022-12-08 14:41:04', '2022-12-10 14:41:04'),
(11, 'P4', 'CELANA CUTBRAY', '223000', 2, '2022-09-20 14:41:04', '2022-11-22 14:41:04'),
(12, 'P5', 'BAJU KAOS', '56500', 2, '2022-08-01 09:41:04', '2022-09-01 14:41:04'),
(13, 'EL10', 'IPHONE 14', '50567000', 3, '2022-04-01 14:45:13', '2022-05-01 14:45:13'),
(14, 'EL11', 'SAMSUNG NOTE', '10599999', 3, '2022-06-01 14:45:13', '2022-07-01 14:45:13'),
(15, 'EL15', 'VIVO', '4350000', 3, '2022-08-01 14:45:13', '2022-09-01 14:45:13'),
(16, 'EL20', 'OPPO', '550000', 3, '2022-10-01 14:45:13', '2022-11-01 14:45:13'),
(17, 'EL23', 'POCCO', '4490000', 3, '2022-12-01 14:45:13', '2022-12-20 14:45:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `fk_kategori` (`idkategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
