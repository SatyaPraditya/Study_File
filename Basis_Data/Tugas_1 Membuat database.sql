-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2026 at 08:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_karyawan_dan_pekerjaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id_departemen` int(7) NOT NULL,
  `Nama_Departemen` char(30) DEFAULT NULL,
  `Jenis_Departemen` char(30) DEFAULT NULL,
  `Deskripsi_Departemen` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_departemen`, `Nama_Departemen`, `Jenis_Departemen`, `Deskripsi_Departemen`) VALUES
(1, 'Human Resources', ' Kantor Umum', 'Mengurus rekrutmen, gaji, dan pengembangan karyawan'),
(2, 'Sales & Marketing', ' Kantor Umum', 'Bertanggung jawab untuk penjualan produk dan strategi promosi.'),
(3, 'Finance & Accounting', ' Kantor Umum', ' Mengatur keuangan, anggaran, dan laporan pembukuan.'),
(4, 'IT (Information Technology)', ' Kantor Umum', 'Mengurus jaringan, komputer, dan sistem digital perusahaan.'),
(5, 'Purchasing', ' Kantor Umum', ' Menangani pengadaan barang atau bahan baku');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `Level_Jabatan` int(10) DEFAULT NULL,
  `Nama_Jabatan` char(50) DEFAULT NULL,
  `gaji` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `Level_Jabatan`, `Nama_Jabatan`, `gaji`) VALUES
(1, 10, 'BOSS', '39JT'),
(2, 9, 'WAKIL_BOSS', '17JT'),
(3, 7, 'HRD', '9JT'),
(4, 5, 'SUPERVISOR', '10JT'),
(5, 3, 'Karyawan_biasa', '5JT');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `Nomor_karyawan` int(5) NOT NULL,
  `id_departemen` int(7) DEFAULT NULL,
  `id_jabatan` int(10) DEFAULT NULL,
  `Nama_Karyawan` varchar(60) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `No_Telp` int(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`Nomor_karyawan`, `id_departemen`, `id_jabatan`, `Nama_Karyawan`, `Email`, `No_Telp`) VALUES
(1, 1, 1, 'Jamal', 'Jamal@gmail.com', 810),
(2, 2, 2, 'Udin', 'Udin@gmail.com', 811),
(3, 3, 3, 'Akmal', 'akmal@gmail.com', 812),
(4, 4, 4, 'Firdaus', 'Firdaus@gmail.com', 813),
(5, 5, 5, 'Nathan', 'Nathan@gmail.com', 814);

-- --------------------------------------------------------

--
-- Table structure for table `mesin_absensi`
--

CREATE TABLE `mesin_absensi` (
  `id_absensi` int(10) NOT NULL,
  `Nomor_Karyawan` int(5) DEFAULT NULL,
  `Tanggal_Masuk` date DEFAULT NULL,
  `Hari` varchar(10) DEFAULT NULL,
  `Status_Kehadiran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mesin_absensi`
--

INSERT INTO `mesin_absensi` (`id_absensi`, `Nomor_Karyawan`, `Tanggal_Masuk`, `Hari`, `Status_Kehadiran`) VALUES
(1, 1, '0001-01-26', 'Senin', 'Hadir'),
(2, 2, '2026-01-26', 'Senin', 'Hadir'),
(3, 3, '2026-01-26', 'Senin', 'Hadir'),
(4, 4, '2026-01-26', 'Senin', 'Hadir'),
(5, 5, '2026-01-26', 'Senin', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(5) NOT NULL,
  `Nomor_karyawan` int(5) DEFAULT NULL,
  `id_proyek` int(5) DEFAULT NULL,
  `nama_pekerjaan` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `Nomor_karyawan`, `id_proyek`, `nama_pekerjaan`) VALUES
(1, 1, 1, 'pembangunan gedung'),
(2, 2, 2, 'pembangunan jalan Tol'),
(3, 3, 3, 'Mencari investor dan pendanaan'),
(4, 4, 4, 'Restorasi'),
(5, 5, 5, 'Acara Tahunan');

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE `proyek` (
  `id_proyek` int(5) NOT NULL,
  `Deskripsi_Proyek` char(100) DEFAULT NULL,
  `Estimasi_Waktu` varchar(30) DEFAULT NULL,
  `Nama_Proyek` char(30) DEFAULT NULL,
  `Biaya` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`id_proyek`, `Deskripsi_Proyek`, `Estimasi_Waktu`, `Nama_Proyek`, `Biaya`) VALUES
(1, 'Proyek yang bertujuan membangun gedung pencakar langit', '4 tahun', 'Beyond The Sky', '34 Milliar'),
(2, 'Proyek yang bertujuan membangun jalan dari ujung negara ke ujung lainnya', '7 tahun', 'across the country', '322 Milliar'),
(3, 'Proyek yang bertujuan Mendapat Keutnungan Maksimal', '2 tahun', 'Pertumbuhan Tanpa batas', '15 Milliar'),
(4, 'Proyek yang bertujuan merestorasi dan memperbaiki Struktur kantor', '5 tahun', 'Restorasi', '1 Milliar'),
(5, 'Proyek yang bertujuan membangun semangat di dalam kantor', '1 tahun', 'Bonus Tahunan', '90 Juta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_departemen`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Nomor_karyawan`),
  ADD KEY `fk_id_departemen` (`id_departemen`),
  ADD KEY `fk_id_jabatan` (`id_jabatan`);

--
-- Indexes for table `mesin_absensi`
--
ALTER TABLE `mesin_absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `fk_Nomor_Karyawan` (`Nomor_Karyawan`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`),
  ADD KEY `fk_pekerjaan_karyawan` (`Nomor_karyawan`),
  ADD KEY `fk_id_proyek` (`id_proyek`);

--
-- Indexes for table `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`id_proyek`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `fk_id_departemen` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`),
  ADD CONSTRAINT `fk_id_jabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`);

--
-- Constraints for table `mesin_absensi`
--
ALTER TABLE `mesin_absensi`
  ADD CONSTRAINT `fk_Nomor_Karyawan` FOREIGN KEY (`Nomor_Karyawan`) REFERENCES `karyawan` (`Nomor_karyawan`);

--
-- Constraints for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD CONSTRAINT `fk_id_proyek` FOREIGN KEY (`id_proyek`) REFERENCES `proyek` (`id_proyek`),
  ADD CONSTRAINT `fk_pekerjaan_karyawan` FOREIGN KEY (`Nomor_karyawan`) REFERENCES `karyawan` (`Nomor_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
