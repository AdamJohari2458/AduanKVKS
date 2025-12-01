-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2025 at 09:14 PM
-- Server version: 10.11.14-MariaDB-log
-- PHP Version: 8.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kvkualas_e-penyelenggaraan`
--

-- --------------------------------------------------------

--
-- Table structure for table `aduan_kerosakan_komputer`
--

CREATE TABLE `aduan_kerosakan_komputer` (
  `id_aduan` int(11) NOT NULL,
  `id_kakitangan` int(11) NOT NULL,
  `waktu_bengkel_kosong` varchar(50) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `desc_lokasi` varchar(100) NOT NULL,
  `id_aset` int(11) NOT NULL,
  `jenis_kepunyaan_aset` varchar(50) NOT NULL,
  `nombor_siri_pendaftaran_aset` varchar(70) NOT NULL,
  `tarikh_kerosakan` varchar(50) NOT NULL,
  `perihal_kerosakan` text NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `nama_img_ref` varchar(100) DEFAULT NULL,
  `kos_penyelengaraan_terdahulu` varchar(50) DEFAULT NULL,
  `kos_penyelengaraan_anggaran` varchar(50) DEFAULT NULL,
  `ulasan_aduan` text DEFAULT NULL,
  `status_aduan` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aduan_kerosakan_komputer`
--

INSERT INTO `aduan_kerosakan_komputer` (`id_aduan`, `id_kakitangan`, `waktu_bengkel_kosong`, `id_lokasi`, `desc_lokasi`, `id_aset`, `jenis_kepunyaan_aset`, `nombor_siri_pendaftaran_aset`, `tarikh_kerosakan`, `perihal_kerosakan`, `id_admin`, `nama_img_ref`, `kos_penyelengaraan_terdahulu`, `kos_penyelengaraan_anggaran`, `ulasan_aduan`, `status_aduan`) VALUES
(34, 71, '08/12/2023', 8, 'Bengkel Web 1', 4, 'kerajaan', 'KVKS/KPM/BHA3001/890', '29/12/2023', 'Bluescreen', NULL, '65712f331637e.png', NULL, NULL, NULL, 0),
(35, 47, '12/12/2023', 4, 'PC NO 20', 2, 'kerajaan', 'kpm/hhs/sad112/as', '07/12/2023', 'CPU TIDAK BOLEH ON', 7, '6571362f2f8ea.jpg', '300', '500', 'ffvxfb', 0),
(37, 103, '03/01/2024', 1, 'PUSAT AKSES PERPUSTAKAAN IBNU FIRNAS', 2, 'sumbangan', 'pc 1', '03/01/2024', 'KABEL VGA', 9, '6594c95124834.jpeg', '0.00', '0.00', 'Telah dibaiki', 0),
(38, 56, '05/01/2024', 2, 'PC 20', 4, 'kerajaan', '111772/0', '03/01/2024', 'CPU TAK HIDUP', NULL, NULL, NULL, NULL, NULL, 0),
(40, 44, '04/01/2024', 1, 'pejabat akaun 1', 4, 'kerajaan', 'KPM', '03/01/2024', 'microsoft office tidak aktif.. word & powerpoint tidak dapat taip', 9, NULL, '0', '0', 'Telah berjaya diselesaikan.', 0),
(41, 56, '08/01/2024', 1, 'Pejabat Akaun 1', 4, 'kerajaan', 'sewa', '03/01/2024', 'Microsoft Office tidak aktif', 9, '659b608b71cfc.jpeg', '', '', 'telah selesai', 0),
(42, 56, '09/01/2024', 1, 'pejabat akaun 1', 4, 'kerajaan', 'sewa', '09/01/2024', 'PC19 crash.. tiba-tiba auto restart', 9, NULL, '0', '0', 'masih menunggu pihak teknikal syarikat SNS Network.', 0),
(43, 27, '12/01/2024', 8, 'PC no 12', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/13/14', '08/01/2024', 'Tidak boleh taip di ruang search, tidak boleh connect internet', 9, '659e18d39cc64.jpeg', '0', '0', 'Setelah diperiksa terdapat masalah pada taskbar. Saya telah hidden kan search bar. untuk menggunakannya perlu menekan butang home. (windows classic). -Selesai\r\nMasalah internet, saya perlu melakukan troubleshooting. -masih belum selesai', 0),
(44, 27, '12/01/2024', 8, 'PC no 7', 2, 'kerajaan', 'KPM/BPTV/BHA3001/H/13/9', '08/01/2024', 'Monitor tidak berfungsi dengan baik', 9, '659e193cb8008.jpeg', '0.00', '0.00', 'Setelah saya periksa. Monitor berfungsi seperti biasa.', 0),
(45, 109, '24/01/2024', 1, 'BILIK JURUTEKNIK', 2, 'kerajaan', 'KPM/BPTV/BHA3001/H/07/5', '23/01/2024', 'INSTALL SCAN EPSON', 9, NULL, '0', '0', 'Telah selesai', 0),
(46, 28, '31/01/2024', 1, 'BILIK ANGGERIK', 7, 'persendirian', 'TIADA', '30/01/2024', 'PRINTER BERKEDIP DAN TIDAK BOLEH PRINT', 9, NULL, '0', '0', 'Telah selesai', 0),
(47, 103, '', 1, 'PUSAT AKSES P.I.F', 4, 'sumbangan', 'PC NO.5', '20/02/2024', 'CPU boleh on tapi tiada respon.', 9, '65d42c8bb9f9d.jpeg', '0.00', '', 'Perlu dibaiki.', 0),
(48, 103, '07/03/2024', 1, 'PERPUSTAKAAN IBNU FIRNAS', 2, 'sumbangan', 'SUMBANGAN', '04/03/2024', 'Tarikh dan masa tidak dikemaskini secara automatik/ cmos ', 9, '65e53e40bb8f7.jpeg', '0.00', '', 'Telah selesai', 0),
(49, 93, '29/03/2024', 8, 'Makmal web 1', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/13/9', '27/03/2024', 'Tidak boleh ON', 9, '660392856793f.jpg', '0.00', '', 'Perlu dibaiki', 0),
(50, 93, '29/03/2024', 8, 'PC11', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/B/13', '27/03/2024', 'Bunyi current bila komputer dihidupkan', 9, '6603930d86d48.jpg', '0.00', '', 'Perlu dibaiki', 0),
(51, 93, '29/03/2024', 8, 'PC12', 4, 'kerajaan', 'KPM/BLTV/BGA3001/H/13/14', '27/03/2024', 'Masalah windows. Beberapa button tidak boleh tekan. ', 9, '66039381de07e.jpg', '0.00', '', 'Perlu dibaiki', 0),
(52, 93, '29/03/2024', 8, 'PC9', 4, 'kerajaan', 'KPM/BPTV/ BHA3001/H/B/11', '27/03/2024', 'Windows tidak boleh on. Masuk bios', 9, '660393e21dc75.jpg', '0.00', '', 'Perlu dibaiki', 0),
(53, 93, '02/04/2024', 8, 'Belakang makmal', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/19/62', '27/03/2024', 'Tidak pasti', NULL, '660654342c564.jpeg', NULL, NULL, NULL, 0),
(54, 93, '02/04/2024', 8, 'Belakang makmal', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/19/52', '27/03/2024', 'Tidak pasti', NULL, '6606d1cb25b79.jpeg', NULL, NULL, NULL, 0),
(55, 93, '02/04/2024', 8, 'Belakang makmal', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/16/494', '27/03/2024', 'Tidak pasti', 9, '6606d2102b7d7.jpeg', '0.00', '', 'Rosak. Perlu dibaiki', 0),
(56, 93, '02/04/2024', 8, 'Belakang makmal', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/19/57', '27/03/2024', 'Tidak pasti', 9, '6606d24d5978a.jpeg', '0.00', '', 'Rosak. Perlu dibaiki', 0),
(57, 109, '03/04/2024', 1, 'Bilik juruteknik', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/07/5', '02/04/2024', 'Cpu tidak boleh digunakan', 9, '660b9d4628d1a.jpg', '0.00', '', 'Telah selesai', 0),
(58, 109, '19/04/2024', 1, 'Bilik juruteknik', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/07/5', '18/04/2024', 'Sofware word sudah expired', 9, '6620d02e85415.jpg', '0.00', '', 'Telah selesai', 0),
(59, 46, '26/04/2024', 1, 'BENGKEL PEMASARAN (CPU 6) ', 4, 'kerajaan', 'KPM/BPTV/BHA3001/R/16/43', '24/04/2024', 'TIDAK BOLEH ON CPU/ TIDAK BERFUNGSI ', 9, NULL, '0.00', '', 'Perlu dibaiki', 0),
(60, 46, '29/04/2024', 5, 'BENGKEL PEMASARAN (CPU 17) ', 6, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/37', '29/04/2024', 'Cursor tidak detect', 9, NULL, '0.00', '', 'Telah selesai', 0),
(61, 46, '29/04/2024', 5, 'BENGKEL PEMASARAN (CPU 13) ', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/45', '25/04/2024', 'CPU tidah boleh ON ', 9, NULL, '0.00', '', 'Perlu dibaiki', 0),
(62, 46, '29/04/2024', 5, 'BENGKEL PEMASARAN (CPU 20) ', 2, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/49', '29/04/2024', 'GOOGLE tidak boleh conect ', 9, NULL, '0.00', '', 'Telah selesai', 0),
(63, 93, '14/06/2024', 8, 'PC20', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/13/1', '11/06/2024', 'Komputer slow', 9, '6667b8cc96424.jpg', '0.00', '', 'Telah dibaiki', 0),
(64, 93, '11/03/2025', 8, 'PC8', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/19/57', '03/03/2025', 'Tidak dapat on', NULL, '67c90883cd4ac.jpg', NULL, NULL, NULL, 1),
(65, 93, '11/03/2025', 8, 'Pc12', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/19/50', '03/03/2025', 'Tidak dapat on', NULL, '67c908d7efb4d.jpg', NULL, NULL, NULL, 1),
(66, 93, '11/03/2025', 8, 'Pc15', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/19/70', '03/03/2025', 'Tidak dapat on', NULL, '67c9092f0b79d.jpg', NULL, NULL, NULL, 1),
(67, 63, '22/05/2025', 2, 'BLOK C, ARAS 3, BENGKEL TM2', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/4', '19/05/2025', 'KELUAR PAPARAN REBOOT AND SELECT PROPER DEVICE', NULL, '682abb60bcd72.jpg', NULL, NULL, NULL, 1),
(68, 63, '22/05/2025', 2, 'BLOK C, ARAS 3, BENGKEL TM2', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/6', '19/05/2025', 'KELUAR PAPARAN AUTOMATIC REPAIR. KLIK RESTART TAPI PAPARAN YANG SAMA KELUAR.', NULL, '682abba43017f.jpg', NULL, NULL, NULL, 1),
(69, 63, '22/05/2025', 2, 'BLOK C, ARAS 3, BENGKEL TM2, PC5', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/8', '19/05/2025', 'KELUAR PAPARAN REBOOT AND SELECT PROPER DEVICE', NULL, '682abc0e36220.jpg', NULL, NULL, NULL, 1),
(70, 63, '22/05/2025', 2, 'BLOK C, ARAS 3, BENGKEL TM2, PC8', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/11', '19/05/2025', 'KELUAR PAPARAN REBOOT AND SELECT PROPER DEVICE', NULL, '682abc34879e0.jpg', NULL, NULL, NULL, 1),
(71, 63, '22/05/2025', 2, 'BLOK C, ARAS 3, BENGKEL TM2, PC10', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/13', '19/05/2025', 'KELUAR PAPARAN REBOOT AND SELECT PROPER DEVICE', NULL, '682abe12a590c.jpg', NULL, NULL, NULL, 1),
(72, 63, '22/05/2025', 2, 'BLOK C, ARAS 3, BENGKEL TM2, PC12', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/15', '19/05/2025', 'KELUAR PAPARAN REBOOT AND SELECT PROPER DEVICE', NULL, '682abe383a856.jpg', NULL, NULL, NULL, 1),
(73, 63, '22/05/2025', 2, 'BLOK C, ARAS 3, BENGKEL TM2, PC16', 4, 'kerajaan', 'KPM/BPTV/BHA3001/H/16/19', '19/05/2025', 'KELUAR PAPARAN REBOOT AND SELECT PROPER DEVICE', NULL, '682abe55bb383.jpg', NULL, NULL, NULL, 1),
(74, 103, '03/06/2025', 1, 'BILIK PERSEDIAAN MAKMAL SAINS', 4, 'sumbangan', 'SUMBANGAN', '30/05/2025', 'PC BEEPING', NULL, '6839218fdc660.jpeg', NULL, NULL, NULL, 1),
(75, 103, '13/06/2025', 1, 'PUSAT AKSES P.I.F', 2, 'sumbangan', 'SUMBANGAN', '11/06/2025', 'Layar skrin monitor tidak memaparkan apa-apa visual', NULL, '6848ed88e1fa6.jpeg', NULL, NULL, NULL, 1),
(76, 93, '14/08/2025', 8, 'PC19', 4, 'kerajaan', 'KPM/BOTV/BHA3001/H/13/22', '04/08/2025', 'Hard disk problem', NULL, '689c10136b8cc.jpeg', NULL, NULL, NULL, 1),
(77, 73, '15/08/2025', 2, 'Bengkel TM2 (web)', 7, 'kerajaan', 'KPM/BPTV/ BHA3001/R/20/172', '08/08/2025', 'Ups tidak menyala', NULL, '689d4a1a073ad.jpg', NULL, NULL, NULL, 1),
(78, 73, '15/08/2025', 2, 'Bengkel TM2', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/20/178', '11/08/2025', 'Ups tidak menyala', NULL, '689d4b07546a0.jpg', NULL, NULL, NULL, 1),
(79, 73, '15/08/2025', 2, 'Bengkel Tm2 ', 7, 'kerajaan', 'KPM/BPTV/BHA3001/R/20/176', '13/08/2025', 'Ups tidal menyala', NULL, '689d4ba49b7c6.jpg', NULL, NULL, NULL, 1),
(80, 73, '15/08/2025', 2, 'Bengkel TM2 (web)', 7, 'kerajaan', 'KPM/BPTV/ BHA3001/R/20/169', '08/08/2025', 'Ups tidak menyala', NULL, '689d4c6799c60.jpg', NULL, NULL, NULL, 1),
(81, 73, '15/08/2025', 2, 'Bengkel TM2 (web)', 7, 'kerajaan', 'KPM/BPTV/ BHA3001/R/20/177', '08/08/2025', 'Ups tidak menyala', NULL, '689d4ca942438.jpg', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aduan_kerosakan_penyaman_udara`
--

CREATE TABLE `aduan_kerosakan_penyaman_udara` (
  `id_aduan` int(11) NOT NULL,
  `id_kakitangan` int(11) NOT NULL,
  `waktu_lokasi_kosong` varchar(50) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `nombor_siri_pendaftaran_aset` varchar(100) NOT NULL,
  `tarikh_kerosakan` varchar(50) NOT NULL,
  `perihal_kerosakan` text NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `nama_img_ref` varchar(50) DEFAULT NULL,
  `kos_penyelengaraan_terdahulu` varchar(50) DEFAULT NULL,
  `kos_penyelengaraan_anggaran` varchar(50) DEFAULT NULL,
  `ulasan_aduan` text DEFAULT NULL,
  `status_aduan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aduan_kerosakan_penyaman_udara`
--

INSERT INTO `aduan_kerosakan_penyaman_udara` (`id_aduan`, `id_kakitangan`, `waktu_lokasi_kosong`, `lokasi`, `nombor_siri_pendaftaran_aset`, `tarikh_kerosakan`, `perihal_kerosakan`, `id_admin`, `nama_img_ref`, `kos_penyelengaraan_terdahulu`, `kos_penyelengaraan_anggaran`, `ulasan_aduan`, `status_aduan`) VALUES
(5, 81, '10/01/2024', 'lab animasi b', 'KPM/BPTV/BHA3001/H/13/94', '10/01/2024', 'aircond tidak berfungsi', NULL, '659de7df8e3f4.jpg', NULL, NULL, NULL, 0),
(6, 91, '16/01/2024', 'Bilik Guru Teratai', 'KPM/BPTV/BHA3001/99/15', '16/01/2024', 'Penghawa dingin tidak berfungsi', 7, '65a6137936932.jpg', '', '', 'Telah diperiksa. Kerosakan pada Elektronik Board.\r\nKerosakan tidak dapat dibaiki segera. Perlu rujuk kontraktor aircond untuk pembaikan', 2),
(7, 63, '26/01/2024', 'Bengkel Web 2 (Blok C, Tingkat 3)', 'KPM/BPTV/BHA3001/H/13/97', '24/01/2024', 'AIRCOND TIDAK SEJUK', 7, '65b0766f20b1a.jpg', '', '', 'Telah diperiksa. Aircond dalam keadaan berabuk dan perlu diservis oleh kontraktor.', 2),
(8, 63, '26/01/2024', 'Bengkel Web 2 (Blok C, Tingkat 3)', 'KPM/BPTV/BHA3001/H/13/98', '24/01/2024', 'AIRCOND TIDAK SEJUK', 7, '65b07683853f3.jpg', '', '', 'Telah diperiksa. Aircond dalam keadan berabuk dan perlu diservis oleh kontraktor.', 2),
(9, 63, '26/01/2024', 'Bengkel Web 2 (Blok C, Tingkat 3)', 'KPM/BPTV/BHA3001/H/13/99', '24/01/2024', 'AIRCOND TIDAK SEJUK', 7, '65b0769456a34.jpg', '', '', 'Telah diperiksa. Aircond dalam keadan berabuk dan perlu diservis oleh kontraktor.', 2),
(10, 63, '26/01/2024', 'Bilik Persediaan Web (Blok C, Tingkat 3)', 'KPM/BPTV/BHA3001/H/13/86', '24/01/2024', 'AIRCOND TIDAK SEJUK', 7, '65b077fc49af2.jpg', '', '', 'Telah diperiksa. Aircond dalam keadan berabuk dan perlu diservis oleh kontraktor.', 2),
(11, 84, '24/01/2024', 'STUDIO 1 PEMASARAN ', '-', '24/01/2024', 'SUIS AIRCOND TIDAK BOLEH TUTUP', NULL, NULL, NULL, NULL, NULL, 1),
(12, 81, '25/01/2024', 'lab animasi b', 'KPM/BPTV/BHA3001/H/13/95', '24/01/2024', 'aircond tidak berfungsi', NULL, '65b09add9a601.jpg', NULL, NULL, NULL, 0),
(13, 81, '25/01/2024', 'lab animasi b', 'KPM/BPTV/BHA3001/H/13/96', '24/01/2024', 'aircond tidak berfungsi', NULL, '65b09b030b7a7.jpg', NULL, NULL, NULL, 0),
(14, 81, '29/01/2024', 'lab animasi a', 'KPM/BPTV/BHA3001/H/13/88', '26/01/2024', 'air menitik di atas meja', 7, '65b320ca924ba.jpg', '', '', 'Telah diperiksa. \r\nAircond dalam keadan berabuk dan perlu diservis oleh kontraktor.', 2),
(15, 28, '30/01/2024', 'BENGKEL 3 ', 'KPM/BPTV/BHA3001/H/13/87', '30/01/2024', 'AIR MENITIK', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(16, 28, '30/01/2024', 'BENGKEL 3', '/BPTV/BHA3001/H/13/88', '30/01/2024', 'PANAS', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(17, 28, '30/01/2024', 'BENGKEL 3', 'KPM/BPTV/BHA3001/H/13/89', '30/01/2024', 'TIDAK BERFUNGSI', 7, NULL, '', '', 'Telah diperiksa. Aircond trip (kabel kena gigit tikus) dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(18, 28, '30/01/2024', 'BENGKEL 3', 'KPM/BPTV/BHA3001/H/13/90', '30/01/2024', 'TIDAK BERFUNGSI', 7, NULL, '', '', 'Telah diperiksa. Kabel sensor problem dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(19, 28, '30/01/2024', 'BILIK PERSEDIAAN BAKERI', 'KPM/BPTV/BHA3001/H/13/765', '30/01/2024', 'TIDAK SEJUK', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(20, 28, '30/01/2024', 'BENGKEL 4', 'KPM/BPTV/BHA3001/H/13/91', '30/01/2024', 'TIDAK BERFUNGSI', 7, NULL, '', '', 'Telah diperiksa. Aircond trip (reset semula) tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(21, 28, '30/01/2024', 'BENGKEL 4', 'KPM/BPTV/BHA3001/H/13/92', '30/01/2024', 'TIDAK BERFUNGSI', 7, NULL, '', '', 'Telah diperiksa. Aircond trip (reset semula) tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(22, 28, '30/01/2024', 'BENGKEL 4', 'KPM/BPTV/BHA3001/H/13/93', '30/01/2024', 'TIDAK BERFUNGSI', 7, NULL, '', '', 'Telah diperiksa. Aircond trip (reset semula) tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(23, 28, '30/01/2024', 'BENGKEL 4', 'KPM/BPTV/BHA3001/H/13/93', '30/01/2024', 'TIDAK SEJUK', NULL, NULL, NULL, NULL, NULL, 0),
(24, 28, '30/01/2024', 'BENGKEL 4', 'KPM/BPTV/BHA3001/H/13/94', '30/01/2024', 'TIDAK BERFUNGSI', 7, NULL, '', '', 'Telah diperiksa. Aircond trip (reset semula) dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(25, 50, '', 'Makmal Animasi A, aircond tengah', 'KPM/BPTV/BHA3001/H/13/89', '30/01/2024', 'air menitik dan kurang sejuk', 7, '65b873445ce04.jpg', '', '', 'Telah diperiksa. Aircond dalam keadan berabuk dan saluran air buang tersumbat. Aircond perlu diservis oleh kontraktor.', 0),
(26, 50, '', 'Mak', 'KPM/BPTV/BHA3001/H/13/88', '30/01/2024', 'kurang sejuk', NULL, '65b8736f9339a.jpg', NULL, NULL, NULL, 0),
(27, 23, '30/01/2024', 'Bilik Persediaan Bengkel Paip, Blok D', 'KPM/BPTV/BHA3001/1/13/765', '30/01/2024', 'Alat penghawa dingin tidak sejuk.', 7, '65b8772b9927d.jpg', '', '', 'Telah diperiksa. Aircond dalam keadan berabuk dan perlu diservis oleh kontraktor.', 2),
(28, 50, '14/02/2024', 'Makmal Animasi A, aircond depan', 'KPM/BPTV/BHA3001/H/13/88', '30/01/2024', 'kurang sejuk', NULL, '65b879366436b.jpg', NULL, NULL, NULL, 0),
(29, 50, '14/02/2024', 'Makmal Animasi A, aircond belakang', 'KPM/BPTV/BHA3001/H/13/90', '30/01/2024', 'kurang sejuk', 7, '65b8796720bb6.jpg', '', '', 'Telah diperiksa. Aircond dalam keadan berabuk dan perlu diservis oleh kontraktor.', 2),
(30, 50, '14/02/2024', 'Makmal Animasi B, aircond depan', 'KPM/BPTV/BHA3001/H/13/93', '30/01/2024', 'kurang sejuk', NULL, '65b879fbb5442.jpg', NULL, NULL, NULL, 0),
(31, 50, '14/02/2024', 'Makmal Animasi B, aircond tengah', 'KPM/BPTV/BHA3001/H/13/94', '30/01/2024', 'kurang sejuk', NULL, '65b87a25bfc62.jpg', NULL, NULL, NULL, 0),
(32, 50, '14/02/2024', 'Makmal Animasi B, aircond belakang', 'KPM/BPTV/BHA3001/H/13/95', '30/01/2024', 'kurang sejuk', NULL, '65b87a3f70a58.jpg', NULL, NULL, NULL, 0),
(33, 115, '31/01/2024', 'Bilik Pengarah', 'KPM/BPTV/BHA3001/H/01/3', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 0),
(34, 115, '31/01/2024', 'Bilik KJK', 'KPM/BPTV/BHA3001/H/00/8', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(35, 115, '31/01/2024', 'Bilik TPSA', 'KPM/BPTV/BHA3001/H/01/4', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(36, 115, '31/01/2024', 'Bilik TPA', 'KPM/BPTV/BHA3001/H/01/8', '31/01/2024', 'Aircond kurang sejuk dan air menitik', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 0),
(37, 111, '31/01/2024', 'Bilik KJK', 'KPM/BPTV/BHA3001/H/00/8', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(38, 111, '31/01/2024', 'Bilik Pengarah', 'KPM/BPTV/BHA3001/H/01/3', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(39, 63, '08/02/2024', 'Bengkel Web 1, Blok C, Aras 3', 'KPM/BPTV/BHA3001/H/13/94 93', '31/01/2024', 'Air Cond tak boleh on.', 7, '65b9bd4d4fc5a.jpg', '', '', 'Telah diperiksa. Aircond trip (reset semula) dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(40, 63, '08/02/2024', 'Bengkel Web 1, Blok C, Aras 3', 'KPM/BPTV/BHA3001/H/13/93', '31/01/2024', 'Air Cond tak sejuk', 7, '65b9bd8eb075f.jpg', '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(41, 63, '08/02/2024', 'Bengkel Web 1, Blok C, Aras 3', 'KPM/BPTV/BHA3001/H/13/95', '31/01/2024', 'Air Cond tak sejuk', 7, '65b9bda39a625.jpg', '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(42, 81, '31/01/2024', 'Animasi A', 'KPM/BPTV/BHA3001/H/13/87', '31/01/2024', 'Aircond kurang sejuk dan air menitik', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(43, 81, '31/01/2024', 'Animasi A', 'KPM/BPTV/BHA3001/H/13/89', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(44, 50, '31/01/2024', 'Animasi B', 'KPM/BPTV/BHA3001/H/13/91', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(45, 50, '31/01/2024', 'Animasi A', 'KPM/BPTV/BHA3001/H/13/92', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(46, 112, '31/01/2024', 'Bilik ketua kerani', 'KPM/BPTV/BHA3001/H/01/5', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(47, 115, '31/01/2024', 'Ruang depan pejabat', 'KPM/BPTV/BHA3001/R/18/55', '31/01/2024', 'Aircond kurang sejuk', 7, NULL, '', '', 'Telah diperiksa. Aircond tidak sejuk dan dalam keadaan berabuk, perlu diservis oleh kontraktor.', 2),
(48, 25, '18/03/2024', 'Studio Pemasaran 1, Blok D (Jabatan Bisnes)', 'KPM/BPLTV BHA3001/H/13/101', '18/03/2024', 'Aircond tidak sejuk', NULL, '65f7be4263b98.jpg', NULL, NULL, NULL, 1),
(49, 87, '25/03/2024', 'Aircond Bilik Guru Melur', 'Tiada', '25/03/2024', 'Aircond panas - berkelip-kelip warna oren', NULL, '6601176c6775a.jpg', NULL, NULL, NULL, 1),
(50, 28, '16/04/2024', 'Bengkel 3 bakeri', 'KPM/bptv/BHA/H/14/89', '16/04/2024', 'Suiz ketuhar industri terbakar', NULL, NULL, NULL, NULL, NULL, 1),
(51, 23, '07/06/2024', 'Bilik Persediaan Bengkel Paip', 'KPM/BHA3001/R/13/766', '07/06/2024', 'A/C tal sejuk. Lampu indikator merah menyala. ', NULL, '66624d01ab17b.jpg', NULL, NULL, NULL, 1),
(52, 92, '10/06/2024', 'Bilik Persediaan Program Bakeri dan Pastri', 'KPM/BPTV/BHA3001/1/13/765', '10/06/2024', 'Air aircond leaking', NULL, '6666ade48a7de.jpg', NULL, NULL, NULL, 1),
(53, 13, '', 'Bilik kj 2', '11/6/2024', '', 'Tak sejuk', NULL, NULL, NULL, NULL, NULL, 1),
(54, 13, '', 'Bilik kj 2', '11/6/2024', '', 'Tak sejuk', NULL, NULL, NULL, NULL, NULL, 1),
(55, 13, '', 'Bilik kj 2', '11/6/2024', '', 'Tak sejuk', NULL, NULL, NULL, NULL, NULL, 1),
(56, 66, '', 'Bengkel 3 dan 4 bakeri', 'KPM/BPTV/BHA3001/H/13/87', '02/07/2024', 'Aircond trip', NULL, NULL, NULL, NULL, NULL, 1),
(57, 79, '09/08/2024', 'BILIK BAHASA', '-', '09/08/2024', 'SYILING BOCOR', NULL, '66b58d4362d04.jpeg', NULL, NULL, NULL, 1),
(58, 79, '06/09/2024', 'BILIK KULIAH 11', 'SMTKS/MKE/007/99(A04)', '04/09/2024', 'MEJA GURU ROSAK', NULL, '66d7d2c09acba.jpeg', NULL, NULL, NULL, 1),
(59, 88, '05/09/2024', 'Bengkel 2', 'Kpm/bptv/bha3001/h/14/44', '05/09/2024', 'Suhu chiller tinggi', NULL, NULL, NULL, NULL, NULL, 1),
(60, 66, '', 'Bengkel 4 ', 'KPM/BPTV/BHA3001/H/20/9', '22/05/2025', 'Chiller dan freezer tidak sejuk', NULL, NULL, NULL, NULL, NULL, 1),
(61, 23, '12/06/2025', 'Bilio KJ1', 'Sumbangan', '12/06/2025', 'Switch tidak berfungsi dan penghawa dingin tidak dapat dihidupkan', NULL, '684a18de1d6ab.jpg', NULL, NULL, NULL, 1),
(62, 98, '12/06/2025', 'Bilik persediaan seni kulinari', 'KPM/BPTV/BHA3001/H/13/59', '12/06/2025', 'Aircond tidak sejuk', NULL, NULL, NULL, NULL, NULL, 1),
(63, 92, '01/07/2025', 'Bengkel 3', 'KPM/BPTV/BHA3001/H/17/16', '01/07/2025', 'Tidak sejuk', NULL, '686363637ad7e.jpg', NULL, NULL, NULL, 1),
(64, 92, '01/07/2025', 'Bengkel 3', 'KOM/BPTV/BHA3001/H/17/5', '01/07/2025', 'Tidak sejuk', NULL, '6863638776f68.jpg', NULL, NULL, NULL, 1),
(65, 98, '14/07/2025', 'Bilik persediaan seni kulinari', 'KPM/BPTV/BHA3001/H/13/59', '14/07/2025', 'Aircond x sejuk', NULL, NULL, NULL, NULL, NULL, 1),
(66, 23, '21/08/2025', 'Bilik KJ1', 'Sumbangan', '21/08/2025', 'Angin dari penghawa dingin tak sejuk', NULL, '68a6ab71140a9.jpg', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aduan_kerosakan_umum`
--

CREATE TABLE `aduan_kerosakan_umum` (
  `id_aduan` int(11) NOT NULL,
  `nama_pelapor` varchar(500) NOT NULL,
  `lokasi_terperinci_aduan` varchar(500) NOT NULL,
  `butiran_kerosakan` varchar(100) NOT NULL,
  `tarikh_aduan` varchar(50) NOT NULL,
  `tarikh_tindakkan_aduan` varchar(50) DEFAULT NULL,
  `ulasan_aduan` text DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `nama_img_ref` varchar(100) DEFAULT NULL,
  `status_aduan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aduan_kerosakan_umum`
--

INSERT INTO `aduan_kerosakan_umum` (`id_aduan`, `nama_pelapor`, `lokasi_terperinci_aduan`, `butiran_kerosakan`, `tarikh_aduan`, `tarikh_tindakkan_aduan`, `ulasan_aduan`, `id_admin`, `nama_img_ref`, `status_aduan`) VALUES
(26, 'Mohd Zamri Bin Mustapa', 'bilik DB blok uthman aras 4', 'DB terbakar', '08/12/2023', '12/12/2023', 'Telah dibaiki/ok\r\nPenggantian 4 unit mcb 20Amp yang baru', 7, '65730327892a3.jpg', 2),
(27, 'Mohd Zamri Bin Mustapa', 'blok siti hajar (blkg)', 'spotlight tak hidup', '08/12/2023', '14/12/2023', 'Telah dibaiki/ok\r\nPenggantian mentol spotlight 400w', 7, '657303960f437.jpg', 2),
(28, 'Mohd Zamri Bin Mustapa', 'aspura & aspuri', '3 lampu tak nyala', '29/12/2023', '04/01/2024', 'Telah dibaiki/ok\r\nGanti 5 unit mentol dan starter', 7, NULL, 2),
(29, 'Mohd Zamri Bin Mustapa', 'tandas Blok P aras 4 ', 'flush rosak #tercabut', '29/12/2023', '09/01/2024', 'Telah dibaiki/ok\r\nGanti handle flush', 7, '658e2fd308d78.jpg', 2),
(30, 'Mohd Zamri Bin Mustapa', 'pantry blok P aras 3', 'kepala paip tanggal', '29/12/2023', '09/01/2024', 'Telah dibaiki/ok\r\n', 7, '658e304d87e8d.jpg', 2),
(31, 'Mohd Zamri Bin Mustapa', 'pantry blok P aras 3 ', 'sinki tersumbat', '29/12/2023', '11/01/2024', 'Telah dibaiki/ok', 7, '658e308f0a406.jpg', 2),
(32, 'Mohd Zamri Bin Mustapa', 'tandas blok M & N (aras 1 & 2)', 'lampu x nyala = 5 biji', '29/12/2023', '11/01/2024', 'Telah dibaiki/ok\r\nGanti 5 unit mentol dan starter', 7, NULL, 2),
(33, 'Muhd Arif Bin Mat Wani', 'asrama bilik uthman 2', 'kipas rosak dan lampu tandas rosak', '02/01/2024', '05/01/2024', 'Telah dibaiki/ok\r\nPenggantian kipas baru 1 unit', 7, NULL, 2),
(34, 'Aswa Amanina Binti Abu Shairi', 'Siti Aisyah 4', 'Kipas tidak berfungsi', '02/01/2024', '05/01/2024', 'Telah dibaiki/ok\r\n', 7, '6593bc2dcd229.jpeg', 2),
(35, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Asram Dorm Ali 4', 'Tombol pintu patah', '03/01/2024', '15/01/2024', 'Telah dibaiki/ok\r\nGanti tombol lain.', 7, NULL, 2),
(36, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Asram Dorm Ali 1', 'Selak pintu tercabut', '03/01/2024', '08/01/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(37, 'Fatimah Binti Satu', 'perpustakaan ibnu firnas ', 'mentol lampu terbakar-4 unit', '03/01/2024', '09/01/2024', 'Telah dibaiki?ok\r\nPenggantian 4 unit lampu dan 4 unit starter', 7, '6594ce6f46939.jpeg', 2),
(38, 'Iszam Rozrizal Bin Yahya', 'Pejabat Akaun 1', 'Microsoft Office tak aktif. pelajar tidak boleh menaip ', '03/01/2024', NULL, NULL, NULL, '6594d3ebbde8d.jpeg', 0),
(39, 'Nur Ietrah Shahira Binti Sahrum', 'Bilik Kuliah 14', 'Semua plugpoint tidak berfungsi. Pensyarah tidak boleh menggunakan projector di dalam kelas.', '04/01/2024', '05/01/2024', 'Telah dibaiki/ok\r\nReset semula RCCB', 7, '659609a0d06ec.jpeg', 2),
(40, 'Norfarahin Binti Ab Rahim', 'Vanilla cafe', 'Pili paip longgar', '', '09/01/2024', 'Telah dibaiki/ok\r\nPenggantian kepala paip baru.', 7, '659642ea8c6dd.jpg', 2),
(41, 'Marzatul Syahirah Binti Mohd Lotiffi', 'Bk 14', 'Elektrik dan plug elektrik masih tiada', '04/01/2024', NULL, NULL, NULL, NULL, 0),
(42, 'Mohd Zamri Bin Mustapa', 'wakaf aspura @ astaka ', 'lampu tak menyala', '08/01/2024', '10/01/2024', 'Telah dibaiki/ok\r\nGanti 1 unit mentol dan starter', 7, '659b552902579.jpg', 2),
(43, 'Noor Asma Binti Zakaria', 'BILIK KULIAH 22', 'KIPAS DEPAN TERLALU PERLAHAN', '08/01/2024', '12/02/2024', 'Telah diperiksa\r\nRujuk projek Osspun', 7, '659b6c68f17f6.jpeg', 2),
(44, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', 'Sinki tersumbat dan bocor', '08/01/2024', '09/01/2024', 'Telah dibaiki/ok\r\nSaluran paip tersumbat.Potong dan servis.', 7, NULL, 2),
(45, 'Sarina Binti Shahman', 'Bilik Disiplin, HEP', 'Lampu malap', '09/01/2024', '09/01/2024', 'Telah dibaiki/ok\r\nPenggantian 2 unit lampu', 7, NULL, 2),
(46, 'Fadzilah Binti Khamis', 'Bilik Guru Melur', 'Siling bocor di ruang meja pensyarah', '10/01/2024', '10/01/2024', 'Telah diperiksa/belum dibaiki.\r\nKerja-kerja penyelenggaraan bumbung telah dirujuk dalam kerja-kerja Osspun', 7, NULL, 2),
(47, 'Zurainika Bin Abdul Rahim', 'Loby kolej kediaman aspura', 'Lampu terbakar', '13/01/2024', '15/01/2024', 'Telah dibaiki/ok\r\nGanti 1 unit mentol dan starter', 7, '65a29e344d114.jpg', 2),
(48, 'Siti Zarina Binti Muhamad Julaini', 'Bilik Guru Teratai', 'Penghawa Dingin 3 (KPM/BPTV/BHA3001/99/15)', '15/01/2024', NULL, NULL, NULL, '65a4a6970b882.jpg', 0),
(49, 'Mohd Zamri Bin Mustapa', 'bilik prep uthman', 'soket tanggal @ pecah', '15/01/2024', '15/01/2024', 'Telah diabiki/ok\r\nGanti Base double dan 2 unit sso 13amp', 7, '65a4a8f18c313.jpg', 2),
(50, 'Mohd Zamri Bin Mustapa', 'bilik prep uthman', 'soket pecah / tanggal', '15/01/2024', NULL, NULL, NULL, '65a4a9332c180.jpg', 0),
(51, 'Mohd Zamri Bin Mustapa', 'bilik prep uthman', 'soket tanggal', '15/01/2024', NULL, NULL, NULL, NULL, 0),
(52, 'Mohd Zamri Bin Mustapa', 'bilik prep uthman', 'soket tanggal / pecah', '15/01/2024', '15/01/2024', 'Telah dibaiki/ok\r\nGanti sso 13amp.', 7, '65a4a9ca0a51d.jpg', 2),
(53, 'Aisyah Hakimah Binti Huslan', 'Bilik disiplin lama tingkat 3 bersebelahan tangga. (Surau pelajar prmpuan)', 'Tingkat tidak boleh tutup', '15/01/2024', '16/01/2024', 'Telah dibaiki/ok', 7, '65a4aa004b5ab.jpeg', 2),
(54, 'Mohd Zamri Bin Mustapa', 'bilik prep uthman', 'soket tanggal', '15/01/2024', NULL, NULL, NULL, NULL, 0),
(55, 'Marzatul Syahirah Binti Mohd Lotiffi', 'Bk14', 'Kipas blkg goyang2, kipas depan perlahan', '15/01/2024', '26/02/2024', 'Telah dibaiki/ok', 7, '65a4e9adca690.png', 2),
(56, 'Mohd Zamri Bin Mustapa', 'dorm SH7', 'kipas siling', '16/01/2024', NULL, NULL, NULL, NULL, 0),
(57, 'Mohd Zamri Bin Mustapa', 'dorm SH7', 'kipas siling', '16/01/2024', NULL, NULL, NULL, NULL, 0),
(58, 'Mohd Zamri Bin Mustapa', 'dorm sh7', 'kipas siling', '16/01/2024', '18/01/2024', 'Telah dibaiki/ok\r\n', 7, NULL, 2),
(59, 'Irzaharyantie Binti Bustami', 'Bilik persediaan animasi', 'Kerosakan lampu kalimantan terbakar dan berkelip²  3biji lampu', '19/01/2024', '22/01/2024', 'Telah dibaiki/ok\r\nGanti 3 unit mentol dan starter', 7, '65a9d4fcbccf0.jpeg', 2),
(60, 'Zurainika Bin Abdul Rahim', 'Bengkel 2 kulinari ', 'Saluran sinki tercabut', '24/01/2024', NULL, NULL, NULL, '65b077e823ff7.jpg', 0),
(61, 'Zurainika Bin Abdul Rahim', 'Bengkel 2 kulinari ', 'Saluran sinki tercabut', '24/01/2024', '30/01/2024', 'Telah di baiki/ok', 7, '65b077ee45343.jpg', 2),
(62, 'Mohd Zamri Bin Mustapa', 'dorm SH6', 'lampu berkelip-kelip (1 unit)', '24/01/2024', '16/02/2024', 'Telah dibaiki/ok\r\nGanti mentol baru', 7, NULL, 2),
(63, 'Mohd Zamri Bin Mustapa', 'bilik basuh blok P (S.Khadijah)', 'lampu selalu x nyala (trip) ', '24/01/2024', '16/02/2024', 'Telah dibaiki/ok\r\nReset semula Rccd', 7, NULL, 2),
(64, 'Iszam Rozrizal Bin Yahya', 'Pejabat Akaun 1', 'Plug xhidup 1 line', '26/01/2024', '30/01/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(65, 'Hazirah Binti Mahmud', 'Rumah warden', 'Paip utama tiada aliran air', '26/01/2024', '26/01/2024', 'Telah dibaiki/ok\r\n', 7, NULL, 2),
(66, 'Norehan Binti Nasiruddin', 'Dorm Aspuri Blok Aisyah 7', 'Soket rosak akibat plug patah dalam soket', '01/02/2024', '16/02/2024', 'Telah dibaiki/ok\r\nGanti sso 13amp', 7, '65bbad7bc4f4d.jpg', 2),
(67, 'Norehan Binti Nasiruddin', 'Dorm Aspuri Blok Aisyah 7', 'Pintu loker tercabut', '01/02/2024', '16/02/2024', 'Telah dibaiki/ok\r\n', 7, '65bbad9f8dabd.jpg', 2),
(68, 'Irzaharyantie Binti Bustami', 'BILIK STUDIO/BILIK SEMINAR ARAS 3 BLOK C', 'Tiada Elektrik ', '05/02/2024', '06/02/2024', 'Telah dibaiki/ok\r\nReset semula Rccd', 7, '65c04023e3294.jpg', 2),
(69, 'Norazura Binti Mahat', 'Siti khadijah 3', 'Kipas rosak', '13/02/2024', '16/02/2024', 'Telah dibaiki/ok\r\nGanti kipas baru', 7, '65cb0a4af2bda.jpg', 2),
(70, 'Mohd Zamri Bin Mustapa', 'jejantas antara blok P & Q tingkat 1', 'lampu kalimantan 18w rosak', '13/02/2024', '16/02/2024', 'Telah dibaiki/ok\r\nGanti lampu led 1 set', 7, '65cb16522623d.jpg', 2),
(71, 'Zurainika Bin Abdul Rahim', 'Restoran Bunga Lawang kulinari', 'Semua Soket tak boleh guna (trip)', '13/02/2024', '14/02/2024', 'Telah dibaiki/ok\r\nReset semula ELR.', 7, NULL, 2),
(72, 'Mohd Fauzi Bin Mohd Johari', 'Animation lane', 'lampu gantung tercabut…minta cabut terus yer..', '19/02/2024', '21/02/2024', 'Telah dicabut/ok\r\nBukan lampu tapi aksesori perhiasan sahaja', 7, '65d2b7aea1dcb.jpeg', 2),
(73, 'Iszam Rozrizal Bin Yahya', 'Bilik Kuliah 22', 'Kipas depan perlahan', '19/02/2024', '20/02/2024', 'Telah diperiksa\r\nRujuk projek Osspun', 7, NULL, 2),
(74, 'Iszam Rozrizal Bin Yahya', 'Bilik Orked', 'Tiada Internet', '26/02/2024', '26/02/2024', 'Mohon rujuk pd Pn.Intan untuk tindakan', 7, NULL, 2),
(75, 'Mohd Zamri Bin Mustapa', 'tandas blok SK tingkat 3', 'lampu x nyala = 1', '26/02/2024', '27/02/2024', 'Telah dibaiki/ok\r\nGanti mentol dan starter baru', 7, '65dc16d6dc48a.jpg', 2),
(76, 'Mohd Zamri Bin Mustapa', 'tandas blok SA tingkat 2', 'lampu x nyala = 1', '26/02/2024', '27/02/2024', 'Telah dibaiki/ok\r\nGanti mentol dan starter baru', 7, '65dc17070aefc.jpg', 2),
(77, 'Fatimah Binti Satu', 'Bilik Persediaan Makmal Sains', 'Plug trip. ', '01/03/2024', '01/03/2024', 'Telah dibaiki/ok\r\nReset semula Rcd', 7, '65e12c49755b7.jpg', 2),
(78, 'Suraini Binti Mohd Hashim', 'Surau An Nur', 'Paip air yang pertama dari kiri tak boleh tutup, air sentiasa keluar ', '28/02/2024', '12/03/2024', 'Telah dibaiki/ok\r\nGanti kepala paip baru', 7, '65e2b2d1b6add.jpg', 2),
(79, 'Nor Siah Binti Abdullah', 'JKR.KS 2856-B KUARTERS KV KS', 'Sinki diruang tamu bocor', '06/03/2024', '08/03/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(80, 'Nur Shafaainaa Binti Muhammad Yunus', 'JKR.K.S 1855 A-P  Kuarters KVKS', 'Tangki bocor', '06/03/2024', '07/03/2024', 'Telah dibaiki/ok\r\nKontraktor buat bypass paip air masuk dan keluar', 7, '65e7dbf46a16f.jpeg', 2),
(81, 'Fatimah Binti Satu', 'PERPUSTAKAAN IBNU FIRNAS', '2 unit mentol lampu terbakar ', '11/03/2024', '14/03/2024', 'Telah dibaiki/ok', 7, '65ee4f51ae7cc.jpeg', 2),
(82, 'Ainatul Shahira Binti Musa', 'Dorm siti hajar 4', 'Kipas rosak', '11/03/2024', '13/03/2024', 'Telah dibaiki/ok\r\nGanti kipas baru', 7, NULL, 2),
(83, 'Nuraida Binti Saman', 'Student Square', '17 biji lampu rosak', '12/03/2024', '20/03/2024', 'Telah dibaiki/ok\r\nGanti mentol LED baru', 7, '65ef9b7c5e82a.jpeg', 2),
(84, 'Nuraida Binti Saman', 'Student Square', 'Sebuah kipas tidak berfungsi', '12/03/2024', '20/03/2024', 'Telah dibaiki/ok\r\nGanti kipas baru ', 7, '65ef9cc4bb4af.jpeg', 2),
(85, 'Noorsyafila Binti Zulkafli', 'Bengkel Animasi B.  Baris 2 meja komputer', 'Plak tidak berfungsi akibat letupan pada UPS han 10.48am harini ini..', '12/03/2024', '12/03/2024', 'Telah dibaiki/ok\r\nReset semula mcb', 7, '65efe39b2f6b9.jpg', 2),
(86, 'Ainatul Shahira Binti Musa', 'Blok hajar', 'Tiada air di semua tandas setiap aras', '12/03/2024', '13/03/2024', 'Kerosakan akibat projek Osspun. Telah rujuk kontraktor untuk pembaikan', 7, NULL, 2),
(87, 'Ainatul Shahira Binti Musa', 'Blok hajar', 'Tiada air di semua tandas setiap aras', '12/03/2024', NULL, NULL, NULL, NULL, 0),
(88, 'Mohd Zamri Bin Mustapa', 'dorm SA 8', 'kipas siling rosak', '14/03/2024', '19/03/2024', 'Telah dibaiki/ok\r\nGanti kipas siling baru', 7, NULL, 2),
(89, 'Mohd Zamri Bin Mustapa', 'tandas blok SA ', 'kepala paip rosak @ loose', '15/03/2024', '18/03/2024', 'Telah dibaiki/ok\r\n', 7, NULL, 2),
(90, 'Zurainika Bin Abdul Rahim', 'Dorm Ali 5 Aspura', 'Suis kipas tak boleh off', '15/03/2024', '20/03/2024', 'Telah dibaiki/ok\r\nGanti suis 4g1w', 7, NULL, 2),
(91, 'Mohd Zamri Bin Mustapa', 'Tandas S.Hajar aras 3', 'kepala paip xleh tutup (loose)', '18/03/2024', '18/03/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(92, 'Mohd Zamri Bin Mustapa', 'Dorm SK4', 'soket tak de letrik', '18/03/2024', '19/03/2024', 'Telah dibaiki/ok\r\nGanti 6 unit mcb 20 Amp', 7, NULL, 2),
(93, 'Mohd Zamri Bin Mustapa', 'DM', 'suis lampu \'jammed\' x boleh on', '18/03/2024', '21/03/2024', 'Telah dibaiki/ok\r\nGanti suis 3g1w dan 4g1w', 7, NULL, 2),
(94, 'Nur Hani Binti Halim', 'Bengkel bata', 'Trip ', '18/03/2024', '18/03/2024', 'Telah dibaiki/ok.\r\nReset semula emergency stop', 7, '65f7868e53034.jpg', 2),
(95, 'Aswa Amanina Binti Abu Shairi', 'Ssiti aisyah 1', 'Tombol pintu tercabut', '19/03/2024', '20/03/2024', 'Telah dibaiki/ok', 7, '65f8c9bf7a96b.jpeg', 2),
(96, 'Nur Shafaainaa Binti Muhammad Yunus', 'Kuarters Guru 1855 A-P', 'paip pecah', '19/03/2024', '20/03/2024', 'Telah dibaiki/ok', 7, '65f8fb6de0c9c.png', 2),
(97, 'Nabilah Binti Nadzri', 'Bengkel Web 1', 'Burung buat sarang dalam aircond. Mohon utk buangkan dan tutup lubang aircond', '21/03/2024', '26/03/2024', 'Telah diperiksa /ok', 7, '65fbc6f34511b.jpg', 2),
(98, 'Nur Hidayah Binti Mohd Zaki', 'Ruai', 'Leaking', '22/03/2024', '22/03/2024', 'Telah diperiksa/ok', 7, '65fceebc280c0.png', 2),
(99, 'Muhd Arif Bin Mat Wani', 'dorm uthman 4 di asrama', 'lampu depan dorm rosak', '24/03/2024', '26/03/2024', 'Telah dibaiki/ok\r\nGanti mentol baru', 7, NULL, 2),
(100, 'Norazura Binti Mahat', 'Pantry siti khadijah Aras 1', 'Water dispenser rosak', '24/03/2024', '27/03/2024', 'Telah diperiksa/ok', 7, NULL, 2),
(101, 'Nur Ietrah Shahira Binti Sahrum', 'Dorm Siti Khadijah 7', 'Lock locker rosak. Locker nombor 9', '25/03/2024', '26/03/2024', 'Telah dibaiki/ok', 7, '6601013486970.jpeg', 2),
(102, 'Nur Ietrah Shahira Binti Sahrum', 'Dorm Siti Khadijah 7', 'Kipas tidak berfungsi. ', '25/03/2024', '26/03/2024', 'Telah dibaiki/ok\r\nGanti kipas baru', 7, '660101466494e.jpeg', 2),
(103, 'Md Zaifuzinakmal Bin Adnan', ' Bilik guru Bengkel bata', 'Lampu tak nyala', '25/03/2024', '28/03/2024', 'Telah dibaiki/ok', 7, '660113b9912ee.jpg', 2),
(104, 'Aswa Amanina Binti Abu Shairi', 'Siti aisyah 2', 'Lampu berkelip', '25/03/2024', '26/03/2024', 'Telah dibaiki/ok\r\nGanti mentol baru', 7, NULL, 2),
(105, 'Mohd Zamri Bin Mustapa', 'dorm Uth 5', 'kipas auto', '27/03/2024', '29/03/2024', 'Telah dibaiki/ok\r\nGanti kipas baru', 7, NULL, 2),
(106, 'Nur Shafaainaa Binti Muhammad Yunus', 'KUARTERS 1855 A-P', 'siling bocor(air hujan masuk ke dalam)', '28/03/2024', '01/08/2024', 'Telah dibaiki oleh kontraktor', 7, '660565890719f.jpeg', 2),
(107, 'Radin Nur Izzati Binti Radin Sharuddin', 'Bengkel 2 seni kulinari', 'Paip sinki bocor', '01/04/2024', '17/04/2024', 'Telah dibaiki/ok', 7, '660a14e351fa7.jpeg', 2),
(108, 'Mohd Zamri Bin Mustapa', 'uth 5', 'suis kipas tak berfungsi', '04/04/2024', '15/04/2024', 'Telah dibaiki/ok\r\nGanti suis kipas ', 7, NULL, 2),
(109, 'Mohd Zamri Bin Mustapa', 'Blk mandi & tandas S.Aisyah (aras 2)', 'trip', '04/04/2024', '18/04/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(110, 'Radin Nur Izzati Binti Radin Sharuddin', 'Bilik guru teratai', 'Suis aircond tidak menyala', '15/04/2024', '15/04/2024', 'Telah dibaiki/ok', 7, '661c71e39e20a.jpeg', 2),
(111, 'Norazrin Binti Mohd Shahar', 'Blok B aras 1', 'Tiada elektrik', '15/04/2024', '15/04/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(112, 'Nur Umirah Binti Mamat', 'Bilik kuliah 05', 'Elektrik tiada dalam bilik kuliah', '15/04/2024', '15/04/2024', 'Telah dibaiki/ok\r\nReset semula RCCB', 7, '661c79d5b364c.jpg', 2),
(113, 'Mohd Zamri Bin Mustapa', 'bilik basuh @ dobi blok Ali', 'tiada letrik @ trip', '15/04/2024', '19/04/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(114, 'Zurainika Bin Abdul Rahim', 'Kuarters Guru dan Staf', 'Semua lampu jalan di kuarters tidak menyala', '17/04/2024', '19/04/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(115, 'Mohd Zamri Bin Mustapa', 'pantry tingkat 2 blok P (S.Khadijah)', 'lampu x nyala = 1 or 2 (x dinyatakan)', '18/04/2024', '23/04/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(116, 'Mohd Zamri Bin Mustapa', 'tandas Blok Q (tingkat 1) sblh rmh rehan', 'lampu x nyala (kuantiti x pasti)', '18/04/2024', '19/04/2024', 'Telah dibaiki/ok\r\nGanti lampu baru', 7, NULL, 2),
(117, 'Mohd Zamri Bin Mustapa', 'bilik dobi @ bilik basuh Ali (blok N)', 'lampu x nyala (trip) sejak hr isnin 15/4', '18/04/2024', '19/04/2024', 'Telah dibaiki/ok\r\nGanti lampu', 7, '662134977a89f.jpg', 2),
(118, 'Mohd Zamri Bin Mustapa', 'dorm SK6', 'kipas auto', '20/04/2024', '23/04/2024', 'Telah dibaiki/ok\r\nGanti kipas baru', 7, NULL, 2),
(119, 'Mohd Zamri Bin Mustapa', 'dorm SK 3 & SK 6', 'kipas auto ', '22/04/2024', '23/04/2024', 'Telah dibaiki/ok\r\nGanti kipas baru', 7, NULL, 2),
(120, 'Zurainika Bin Abdul Rahim', 'Bengkel 2 kulinari ', 'Saluran sinki tercabut', '23/04/2024', '23/04/2024', 'Telah dibaiki/ok', 7, '662704aeae5b7.jpg', 2),
(121, 'Zurainika Bin Abdul Rahim', 'Bengkel 2 kulinari ', 'Saluran sinki tercabut', '23/04/2024', '23/04/2024', 'Telah dibaiki/ok', 7, '66270ece7155b.jpg', 2),
(122, 'Nur Ietrah Shahira Binti Sahrum', 'Kolej Kediaman Siti Khadijah 8 (SK8)', 'Lampu dorm berkelip', '23/04/2024', '25/04/2024', 'Telah dibaiki/ok', 7, '662736326e0b6.jpeg', 2),
(123, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', '3D Animation Lane', 'Lampu rosak', '24/04/2024', '26/04/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(124, 'Nurazreen Idayu Binti Rameley', 'Bilik kuliah 22', 'Kipas hadapan (K1) sangat perlahan', '25/04/2024', '26/04/2024', 'Telah dibaiki/ok', 7, '662a09c485c8a.jpg', 2),
(125, 'Rozita Binti Mohd Tahir', 'Bilik Kuliah 22', 'Lampu depan berkelip² ', '25/04/2024', '30/04/2024', 'Telah dibaiki/ok', 7, '662a15d0c64e1.jpeg', 2),
(126, 'Rozita Binti Mohd Tahir', 'Bilik Kuliah 22', 'Siling dekat kipas 1 bocor, air menitik..', '25/04/2024', NULL, NULL, NULL, '662a1898a9ccd.jpeg', 0),
(127, 'Rozita Binti Mohd Tahir', 'Bilik Kuliah 22', 'Siling dekat kipas 1 bocor, air menitik..', '25/04/2024', '26/04/2024', 'Telah dibaiki/ok', 7, '662a189aa20b1.jpeg', 2),
(128, 'Rozita Binti Mohd Tahir', 'Ruai & dalam Koop', 'Semua suis lampu & kipas tak berfungsi ', '29/04/2024', '30/04/2024', 'Telah diperiksa/ok\r\nReset semula RCCB', 7, '662f9eb064f47.jpeg', 2),
(129, 'Nor Hishma Binti Basir', 'BK1', 'Lampu 1 tidak menyala. Lampu 3 tiada', '29/04/2024', '30/04/2024', 'Telah dibaiki/ok', 7, '6630373530285.jpg', 2),
(130, 'Nor Hishma Binti Basir', 'BK4', 'Lampu 3 tidak menyala', '29/04/2024', '30/04/2024', 'Telah dibaiki/ok', 7, '6630375b00ab5.jpg', 2),
(131, 'Mohd Zamri Bin Mustapa', 'pejabat p.asrama baru', 'tukar soket single ke triple dan ganti kipas siling', '30/04/2024', '30/04/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(132, 'Mohd Zamri Bin Mustapa', 'hujung blok SK SA SH (3 unit)', 'spotlight tak nyala', '30/04/2024', '02/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(133, 'Nur Ietrah Shahira Binti Sahrum', 'Bilik Pantri Siti Khadijah Aras Atas', 'Lampu di bilik pantri tidak menyala. Lampu di SK8 juga belum dibaiki', '30/04/2024', '02/05/2024', 'Telah dibaiki/ok', 7, '663095cdafa21.jpeg', 2),
(134, 'Nur Ietrah Shahira Binti Sahrum', 'Bilik Pantry Siti Khadijah Aras Atas', 'Sinki tersumbat.', '02/05/2024', '03/05/2024', 'Telah dibaiki/ok', 7, '6632f06574442.jpeg', 2),
(135, 'Nor Farhana Binti Abd Kader', 'BILIK TERATAI', 'LAMPU BERKELIP-KELIP', '06/05/2024', '08/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(136, 'Masni Binti Rahman', 'BILIK GURU HEP', 'Paip Bocor. ', '07/05/2024', '08/05/2024', 'Telah dibaiki/ok.\r\nGanti Sink bottle trap ', 7, '6639983aec822.jpg', 2),
(137, 'Mohd Zamri Bin Mustapa', 'dorm SA6', 'lampu berkelip-kelip (1 unit)', '07/05/2024', '08/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(138, 'Mohd Zamri Bin Mustapa', 'Hujung # belakang blok SK & SA ', 'sportlight tak fungsi (2 or 3 unit)', '07/05/2024', '10/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(139, 'Mohd Zamri Bin Mustapa', 'tnds blok Aisyah (tgkt 2)', 'lampu x nyala (1), pintu tnds nak tercabut (1), cistern rosak (1)', '10/05/2024', '10/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(140, 'Norlaile Binti Amin', 'Bilik KJ 2', 'Mohon potongkan mangga di pintu kerana anak kuncinya tiada', '13/05/2024', '13/05/2024', 'Telah dibaiki/ok', 7, '66416639ed84b.jpeg', 2),
(141, 'Mohd Zamri Bin Mustapa', 'laluan susur gajah menghala ke bengkel bata', 'lampu x nyala (2 unit)', '13/05/2024', '16/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(142, 'Mohd Zamri Bin Mustapa', 'bilik basuh (dobi) siti hajar', 'lampu malap (1 unit)', '13/05/2024', '14/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(143, 'Zalia Fatin Binti Zaini', 'Bilik Persediaan Web 2', 'Pendingin hawa tidak berfungsi. ', '13/05/2024', '13/05/2024', 'Telah diperiksa/ok', 7, '664188d1e8820.jpg', 2),
(144, 'Norehan Binti Nasiruddin', ' Siti khadijah Aras 1 (Bilik Prep)', 'Semua suis kipas ,lampu dan soket tidak berfungsi', '', '22/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(145, 'Nurul Nadhifah Binti Mohd Azli', 'pejabat akaun 1', 'lampu rosak', '14/05/2024', '24/05/2024', 'Telah dibaiki/ok', 7, '6642e5e592cf3.jpg', 2),
(146, 'Mohd Zamri Bin Mustapa', 'tandas S.Aisyah tingkat 2', 'lampu x nyala (1 unit)', '15/05/2024', '18/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(147, 'Mohd Zamri Bin Mustapa', 'tangga blok S.A', 'lampu x nyala (x pasti berapa biji)', '15/05/2024', '18/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(148, 'Syarifah Nurul Syuhada Binti Syed Abdul Rahman', 'Bilik anggerik', 'Lampu berkelip dan tidak menyala', '16/05/2024', '17/05/2024', 'Telah dibaiki/ok', 7, '6644355acdd83.jpeg', 2),
(149, 'Zaidatul Syahirah Binti Zainal Abidin', 'Bengkel kulinari 2', 'Lampu di syiling tidak berfungsi', '16/05/2024', '21/05/2024', 'Telah dibaiki/ok', 7, '6645621bb7e1b.jpg', 2),
(150, 'Zaidatul Syahirah Binti Zainal Abidin', 'Bengkel kulinari 2', 'Sinki bocor', '16/05/2024', '20/05/2024', 'Telah dibaiki/ok', 7, '66456a0170e19.jpg', 2),
(151, 'Syarifah Nurul Syuhada Binti Syed Abdul Rahman', 'Makmal web 1', 'Bumbung bocor', '16/05/2024', '17/05/2024', 'Telah diperiksa. Kerosakan bukan berpunca dari bumbung tapi ada air bertakung di lantai tingkat atas', 7, '6645c982c6d9a.jpeg', 2),
(152, 'Mohd Yasmizi Bin Yaacob', 'BK 26', 'Kipas tidak berfungsi.', '17/05/2024', '20/05/2024', 'Telah dibaiki/ok', 7, '664615d00df1f.jpg', 2),
(153, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', 'Suis lampu dah off tapi lampu masih menyala', '20/05/2024', '22/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(154, 'Hasima Shahidah Binti Hashim', 'BILIK ANGGERIK', '3 unit lampu terbakar', '21/05/2024', '24/05/2024', 'Telah dibaiki/ok', 7, '664be4772dadc.jpg', 2),
(155, 'Hazirah Binti Mahmud', 'Bengkel bakeri 3', 'Ketuhar tidak boleh dihidup', '22/05/2024', '22/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(156, 'Norehan Binti Nasiruddin', 'Bilik Prep Siti Khadijah', 'Lampu tercabut', '22/05/2024', '24/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(157, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Student square', 'Tiada eletrik di kawasan ruai', '24/05/2024', '24/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(158, 'Mohd Zamri Bin Mustapa', 'bilik dobi siti hajar', '2 unit lampu x nyala', '29/05/2024', '31/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(159, 'Mohd Zamri Bin Mustapa', 'pejabat sementara P.Asrama blok Q', 'lampu x nyala (1 unit)', '29/05/2024', '31/05/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(160, 'Mohd Zamri Bin Mustapa', 'laluan susur gajah aspuri', '4 unit lampu x nyala', '29/05/2024', '04/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(161, 'Mohd Nazly Bin Abd Hamid', 'Bilik KJK', 'Lampu kalimantang berkelip tak menyala dengan sempurna', '04/06/2024', '04/06/2024', 'Telah dibaiki/ok', 7, '665e59966098d.jpg', 2),
(162, 'Muhammad Hariz Hifzhuddin Bin Halim', 'BK26', 'kipas tidak berfungsi', '04/06/2024', '07/06/2024', 'Telah dibaiki/ok', 7, '665e69ab85059.jpg', 2),
(163, 'Mohd Zamri Bin Mustapa', 'bilik basuh & tnds blok Ali tkt 1', 'lampu x nyala 3 unit', '05/06/2024', '10/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(164, 'Mohd Zamri Bin Mustapa', 'dorm SH1', 'lampu balkoni x nyala', '05/06/2024', '10/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(165, 'Mohd Zamri Bin Mustapa', 'dorm SA3', 'kipas siling x idup', '05/06/2024', '10/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(166, 'Mohd Zamri Bin Mustapa', 'blk mandi blok Ali tkt 2', 'lampu x nyala = 1 unit', '06/06/2024', '10/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(167, 'Mohd Zamri Bin Mustapa', 'Pantri Ali aras 3', 'lampu x nyala = 2 unit', '07/06/2024', '10/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(168, 'Norlaile Binti Amin', 'Laluan blok A ke blok B di aras satu ', 'mohon cabutkan banner EKSA yang telah lusuh', '07/06/2024', '07/06/2024', 'Telah dicabut/ok', 7, '666286e0a954f.jpeg', 2),
(169, 'Fatimah Binti Satu', 'PUSAT AKSES', 'plug soket bila on ada keluar spark.', '07/06/2024', '10/06/2024', 'Telah dibaiki/ok', 7, '6662c673479e6.jpeg', 2),
(170, 'Sutra Azureen Binti Saharudin', 'Bengkel 3 Bakeri dna Pastri', 'Air aircond leaking', '10/06/2024', '10/06/2024', 'Perlu isi aduan pada Kew.PA 10', 7, '66665ccb88e05.jpg', 2),
(171, 'Mohd Zamri Bin Mustapa', 'RNR blok P ', 'lampu tak nyala 1 unit', '10/06/2024', '12/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(172, 'Mohd Zamri Bin Mustapa', 'pantry blok N (ali) tkt 2', 'lampu x nyala = 1', '10/06/2024', '10/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(173, 'Fatimah Binti Satu', 'PUSAT AKSES', 'mentol lampu berkelip-1 unit, mentol lampu terbakar-3 unit', '10/06/2024', '10/06/2024', 'Telah dibaiki/ok', 7, '666663a7f3bcb.jpeg', 2),
(174, 'Norazrin Binti Mohd Shahar', 'BENGKEL MASAK 2', 'Singki bocor', '14/06/2024', '17/06/2024', 'Telah dibaiki/ok', 7, '666b83af91596.jpg', 2),
(175, 'Norazrin Binti Mohd Shahar', 'BENGKEL MASAK 2', 'Air keluar dari sinki x diguna @ punca Tidak pasti', '14/06/2024', '20/06/2024', 'Telah dibaiki/ok', 7, '666b842110d9f.jpg', 2),
(176, 'Mohd Zamri Bin Mustapa', 'tandas blok SK aras 3', 'lampu x nyala = 1', '24/06/2024', '26/06/2024', 'Telah dibaiki/ok', 7, '6679974f9810f.jpg', 2),
(177, 'Mohd Zamri Bin Mustapa', 'koridor gf blok M & N', 'lampu x nyala = 2', '24/06/2024', '27/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(178, 'Norazura Binti Mahat', 'Tandas siti khadijah aras 3', 'Lampu rosak', '25/06/2024', '27/06/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(179, 'Zurainika Bin Abdul Rahim', 'Bengkel 2 kulinari ', 'Sinki tersumbat dan bocor', '30/06/2024', '01/07/2024', 'Telah dibaiki/ok', 7, '6680d00725ef5.jpg', 2),
(180, 'Mohd Zamri Bin Mustapa', 'dorm uth.5', 'lampu jatuh @ pecah', '01/07/2024', '01/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(181, 'Mohd Zamri Bin Mustapa', 'koridor S.Hajar aras 3', 'lampu pandu arah KELUAR nak jatuh @ tercabut', '02/07/2024', '03/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(182, 'Mohd Zamri Bin Mustapa', 'koridor blok S.Hajar aras 3', 'lampu pandu arah KELUAR nak jatuh', '02/07/2024', '03/07/2024', 'Telah dibaiki/ok', 7, '668368fe4ec99.jpg', 2),
(183, 'Norazura Binti Mahat', 'Siti khadijah 2', 'Lampu rosak', '09/07/2024', '12/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(184, 'Norazura Binti Mahat', 'Bilik warden', 'Lampu rosak', '09/07/2024', '12/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(185, 'Mohd Zamri Bin Mustapa', 'dorm S. Aisyah 2', 'lampu berkelip-kelip = 1 unit', '09/07/2024', '12/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(186, 'Norazura Binti Mahat', 'Dorm siti aisyah 5', 'Lampu rosak dan kipas perlahan', '09/07/2024', '12/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(187, 'Norazura Binti Mahat', 'Tandas siti aisyah aras atas. ', 'Bilik air 4. Paip bocor', '09/07/2024', '10/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(188, 'Sutra Azureen Binti Saharudin', 'Bengkel bakeri & pastri 4', 'Plug trip/tiada elektrik', '10/07/2024', '10/07/2024', 'Telah dibaiki/ok', 7, '668dd3234dac9.jpg', 2),
(189, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', 'Paip sinki pecah', '10/07/2024', '12/07/2024', 'Telah dibaiki/ok', 7, '668dee6a5bb8d.jpg', 2),
(190, 'Zalia Fatin Binti Zaini', 'Bengkel Web 1 ', 'Kebocoran - Air hujan masuk mengalir hingga lantai dan air juga terkena system unit pc terdekat.', '10/07/2024', '11/10/2024', 'Telah diperiksa. Kerosakan akibat air bertakung di lantai tingkat atas', 7, '668defd75b7b1.jpg', 2),
(191, 'Mohd Zamri Bin Mustapa', 'pantry S.Aisyah (blok Q) aras 3 ', 'lampu x nyala = 1 unit (pnjg)', '10/07/2024', '12/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(192, 'Mohd Zamri Bin Mustapa', 'dorm Uth 5', 'lampu jatuh pecah = 1', '10/07/2024', '11/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(193, 'Norhamisah Binti Ahmad', 'Bilik Dtulip Pelangi', 'Aircond tidak sejuk', '15/07/2024', '16/07/2024', 'Telah diperiksa/ok', 7, '6694ceb564d4c.jpg', 2),
(194, 'Mohd Zamri Bin Mustapa', 'dapur dwn mkn', 'lampu pnjg x nyala 2 biji', '23/07/2024', '25/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(195, 'Mohd Zamri Bin Mustapa', 'bilik prep blok R (siti hajar)', 'soket meletup @ terbakar ', '23/07/2024', '24/07/2024', 'Telah dibaiki/ok', 7, '669fb47096999.jpg', 2),
(196, 'Zurainika Bin Abdul Rahim', 'Aspura - dorm Ali 6', 'Paip bocor - tangki', '25/07/2024', NULL, NULL, NULL, '66a211cf371aa.jpg', 0),
(197, 'Zurainika Bin Abdul Rahim', 'Aspura - dorm Ali 6', 'Paip bocor - tangki', '25/07/2024', '26/07/2024', 'Telah diperiksa. Telah rujuk kontraktor Osspun untuk Pembaikan', 7, '66a211cf38a5b.jpg', 2),
(198, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Blok asrama dan dewan makan', 'Tiada bekalan eletrik', '27/07/2024', '27/07/2024', 'Telah dibaiki/ok.', 7, NULL, 2),
(199, 'Norehan Binti Nasiruddin', 'Kelas 4 OPP', 'Semua soket tidak berfungsi', '29/07/2024', '29/07/2024', 'Telah dibaiki/ok', 7, '66a6ecfbe58c9.jpg', 2),
(200, 'Irzaharyantie Binti Bustami', 'Bengkel animasi B', 'Kerosakn 1 baris Plug point (aliran elektrik tidak ada untuk 1 baris komputer)', '29/07/2024', '29/07/2024', 'Telah dibaiki/ok\r\n', 7, NULL, 2),
(201, 'Mohd Zamri Bin Mustapa', 'bilik mandi @ tnds aras 1 blok Q ', 'tiada letrik (trip)', '29/07/2024', '30/07/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(202, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'Dorm Siti Hajar 6 ', 'Kipas mengeluarkan bunyi', '30/07/2024', '01/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(203, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'Dorm Siti Hajar 6 ', 'Pintu susah untuk dibuka', '31/07/2024', '01/08/2024', 'Tealh dibaiki/ok', 7, NULL, 2),
(204, 'Zurainika Bin Abdul Rahim', 'Dewan Makan', '1 unit kipas siling rosak', '04/08/2024', '06/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(205, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Dorm Ali 3', 'Soket rosak', '07/08/2024', '09/08/2024', 'Telah dibaiki/ok', 7, '66b2c74ab10c5.jpg', 2),
(206, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', 'Paip watercooler bocor', '07/08/2024', '08/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(207, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Dorm Ali 3', 'Lampu tak hidup', '07/08/2024', '09/08/2024', 'Telah dibaiki/ok', 7, '66b387fdaff8a.jpg', 2),
(208, 'Mohd Zamri Bin Mustapa', 'S.Hajar 6', 'kipas auto bunyi bising', '08/08/2024', '09/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(209, 'Noor Asma Binti Zakaria', 'BK22', 'Tiada elektrik', '12/08/2024', '12/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(210, 'Nur Ietrah Shahira Binti Sahrum', 'Dorm Siti Khadijah 8', 'Lampu di balkoni tidak menyala. ', '12/08/2024', '14/08/2024', 'Telah dibaiki/ok', 7, '66b9496c50a50.jpeg', 2),
(211, 'Mohd Zamri Bin Mustapa', 'DM', 'kebocoran gas', '12/08/2024', '13/08/2024', 'Telah diperiksa, kebocoran gas tidak dapat dikesan dan perlu panggil kontraktor gas yang berkelayakan untuk periksa.', 7, '66b98b6d90563.jpg', 2),
(212, 'Zurainika Bin Abdul Rahim', 'Tandas aspura blok ali aras atas', 'Paip shower tak boleh tutup', '13/08/2024', '13/08/2024', 'Telah dibaiki/ok', 7, '66bb6a7923e5b.jpg', 2),
(213, 'Sivapradha a/p Palaniswami', 'Makmal komputer pemasaran Blok D ', 'Aircond Dan kipas tiba tiba berhenti /blackout semasa kelas dilaksanakan ', '14/08/2024', '14/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(214, 'Noorsyafila Binti Zulkafli', 'pejabat akaun 2', 'lampu tak menyala', '15/08/2024', '16/08/2024', 'Telah dibaiki/ok', 7, '66bd4dd64c181.jpg', 2),
(215, 'Aswa Amanina Binti Abu Shairi', 'Siti aisyah 4', 'Kipas terlalu perlahan', '16/08/2024', '21/08/2024', 'Telah dibaiki/ok', 7, '66bf15ffdc6b4.png', 2),
(216, 'Syarifah Nurul Syuhada Binti Syed Abdul Rahman', 'Bilik kuliah 5', 'Tiada letrik', '16/08/2024', '16/08/2024', 'Telah dibaiki/ok', 7, '66c2aefc29d80.jpg', 2),
(217, 'Aswa Amanina Binti Abu Shairi', 'Siti aisyah 4', 'Soket rosak', '19/08/2024', '21/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(218, 'Mohd Zamri Bin Mustapa', 'aspuri blok P & Q (tkt 2)', 'lampu tnds x nyala = 4', '19/08/2024', '21/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(219, 'Mohd Zamri Bin Mustapa', 'susur gajah aspuri', 'lampu x nyala = 1', '20/08/2024', '21/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(220, 'Mohd Zamri Bin Mustapa', 'koridor blok ali (gf)', 'lqmpu x nyala = 1', '20/08/2024', NULL, NULL, NULL, NULL, 0),
(221, 'Mohd Zamri Bin Mustapa', 'koridor blok ali (gf)', 'lqmpu x nyala = 1', '20/08/2024', '21/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(222, 'Mohd Zamri Bin Mustapa', 'bilik prep blok R', 'lampu x nyala = 8', '20/08/2024', '21/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(223, 'Nabilah Binti Nadzri', 'Bengkel Web 1', 'Siling bocor dekat kawasan wire. Air keluar masa hujan lebat. ', '20/08/2024', NULL, NULL, NULL, '66c4409b08575.jpg', 0),
(224, 'Nuraida Binti Saman', 'Koperasi dan student square', 'Trip eletrik', '22/08/2024', '22/08/2024', 'Telah dibaiki/ok', 7, '66c67524e7c9a.jpeg', 2),
(225, 'Md Zaifuzinakmal Bin Adnan', 'Bengkel bata ', 'Soket tak ada elektrik ', '22/08/2024', '22/08/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(226, 'Fatimah Binti Satu', 'PERPUSTAKAAN IBNU FIRNAS', 'mentol lampu berkelip/terbakar-1 unit', '26/08/2024', '27/08/2024', 'Telah dibaiki/ok', 7, '66cbe7fe49f8c.jpeg', 2),
(227, 'Nurul Syuhada Binti Idris', 'bengkel 4 bakeri ', 'Plug trip', '29/08/2024', '29/08/2024', 'Telah dibaiki/ok', 7, '66cfd85535acb.jpg', 2),
(228, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Laluan blok ali (dorm ali 3)', 'Lampu kecemasan tak hidup ', '01/09/2024', '04/09/2024', 'Telah dibaiki/ok', 7, '66d4566ce7d7c.jpg', 2),
(229, 'Nur Hidayah Binti Mohd Zaki', 'Bilik Kuliah 17', 'Hasp Staple lock di pintu kelas bengkok. Pintu tidak boleh di lock dgn mangga. TQ', '02/09/2024', '03/09/2024', 'Telah dibaiki/ok', 7, '66d5209ed42e2.jpeg', 2),
(230, 'Fauzana Binti Mat Rahik', 'BENGKEL Animasi A', 'Mohon alihkan projector kepada jarak yang lebih dekat dengan skrin projektor', '02/09/2024', '03/10/2024', 'Tealh dialihkan/ok', 7, '66d53485230e6.jpg', 2),
(231, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', 'Sinki tersumbat dan bocor', '04/09/2024', '06/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(232, 'Norehan Binti Nasiruddin', 'Laluan aspuri sebelah Blok D ', 'Besi penutup lubang tiada', '09/09/2024', '12/09/2024', 'Telah dibaiki/ok', 7, '66de3c5c9b2cb.jpg', 2),
(233, 'Norehan Binti Nasiruddin', 'Siti Aisyah 7', 'Tombol pintu utama dorm tercabut', '09/09/2024', '09/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(234, 'Norehan Binti Nasiruddin', '  sitiaisyah 6', 'Lampu dorm aisyah 6 berkelip', '09/09/2024', '11/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(235, 'Norehan Binti Nasiruddin', 'Tandas aisyah aras atas', 'Pam tandas no 4 rosak', '09/09/2024', '11/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(236, 'Zaidatul Syahirah Binti Zainal Abidin', 'Bengkel kulinari 1', 'Paip rosak', '10/09/2024', '13/09/2024', 'Telah dibaiki/ok', 7, '66dfa01af00cf.jpg', 2),
(237, 'Nurul Nadhifah Binti Mohd Azli', 'bk 23', 'lampu rosak  ujit', '10/09/2024', '12/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(238, 'Nurul Syuhada Binti Idris', 'BENGKEL 3 BAKERI', 'Chiller dan freezer tak berfungsi', '23/09/2024', '23/09/2024', 'Telah dibaiki/ok. Reset semula RCD', 7, '66f0b4cca9c12.jpg', 2),
(239, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', 'Paip bocor- bawah sinki', '23/09/2024', '24/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(240, 'Nurul Syuhada Binti Idris', 'Bengkel bakeri 3 dan 4', 'Trip tiada bekalan elektrik', '23/09/2024', '23/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(241, 'Norfarahin Binti Ab Rahim', 'Bilik guru teratai', 'Aircond tidak sejuk', '23/09/2024', '23/09/2024', 'Perlu isi aduan di borang adaun kewpa 10', 7, '66f0f4a8346b9.jpg', 2),
(242, 'Mohd Zamri Bin Mustapa', 'blok P aras 1 (koridor)', 'lampu pecah = 1', '24/09/2024', '27/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(243, 'Muhd Arif Bin Mat Wani', 'TANDAS ASRAMA LELAKI TINGKAT 4 (BLOK ALI)', 'PAIP SYILING BOCOR', '24/09/2024', '25/09/2024', 'Telah dibaiki/ok', 7, '66f2686be2f43.png', 2),
(244, 'Mohd Zamri Bin Mustapa', 'tandas S.Khadijah (aras 2)', 'lampu x nyala = 2', '24/09/2024', '27/09/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(245, 'Nur Ietrah Shahira Binti Sahrum', 'Dorm Siti Khadijah 8', 'Tombol pintu tercabut.', '29/09/2024', '30/09/2024', 'Telah dibaiki/ok', 7, '66f959707d937.jpeg', 2),
(246, 'Fauzana Binti Mat Rahik', 'Bilik Guru Anggerik ', 'Lampu berkelip-kelip', '30/09/2024', '01/10/2024', 'Telah dibaiki/ok', 7, '66fa0dd086532.jpg', 2),
(247, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'Siti Hajar 6 ', 'Kipas berbunyi & pintu dorm sukar dibuka dari dalam', '30/09/2024', '02/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(248, 'Aswa Amanina Binti Abu Shairi', 'Bilik prep sk', 'Kipas slow', '01/10/2024', '04/10/2024', 'Telah dibaiki/ok', 7, '66fb712489c58.jpg', 2),
(249, 'Fatimah Binti Satu', 'PERPUSTAKAAN IBNU FIRNAS', 'Kabel HDMI rosak-tidak berfungsi', '07/10/2024', '07/10/2024', 'Telah diperiksa. kabel rosak', 7, '670357dbe397c.jpeg', 2),
(250, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', '2 sinki tersumbat dan 1 paip sinki rosak', '08/10/2024', '09/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(251, 'Mohd Zamri Bin Mustapa', 'blok s.hajar aras 4', 'soket x boleh guna, tiada letrik', '10/10/2024', '14/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(252, 'Noraini Binti Yahya', 'Bengkel bakeri 4', 'Soket tidak beerfungsu', '10/10/2024', '10/10/2024', 'Telah dibaiki/ok', 7, '6707243632e03.jpg', 2),
(253, 'Aisyah Hakimah Binti Huslan', 'Bengkel 4 bakeri', 'Air sinki bocor', '10/10/2024', '11/10/2024', 'Telah dibaiki/ok', 7, '67073a91bbc9e.jpg', 2),
(254, 'Norehan Binti Nasiruddin', 'Tandas Aisyah Aras Atas', 'Lampu tidak menyala', '13/10/2024', '15/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(255, 'Muhd Arif Bin Mat Wani', 'blok uthman dorm uthman 2', 'lampu tidak hidup', '13/10/2024', '16/10/2024', 'Telah dibaiki/ok', 7, '670bdfbf26a41.jpeg', 2),
(256, 'Muhd Arif Bin Mat Wani', 'blok uthman dorm uthman 4', 'lampu tiada', '13/10/2024', '16/10/2024', 'Telah dibaiki/ok', 7, '670be0cf20065.jpeg', 2),
(257, 'Norehan Binti Nasiruddin', 'Aisyah 6', '2 lampu tidak menyala', '13/10/2024', '15/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(258, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'Dorm Siti Hajar 6 ', 'Pintu dorm rosak susah untuk dibuka ', '15/10/2024', '18/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(259, 'Nur Ietrah Shahira Binti Sahrum', 'Dorm Siti Khadijah 5', 'Pintu dorm sukar dibuka.', '16/10/2024', '16/10/2024', 'Telah dibaiki/ok', 7, '670f084c3647b.jpeg', 2),
(260, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'Dorm Siti Hajar 6 ', 'Lampu balkoni rosak', '19/10/2024', '21/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(261, 'Norehan Binti Nasiruddin', 'Aisyah 6', 'Lampu dorm rosak (2 lampu)', '19/10/2024', '21/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(262, 'Mohd Zamri Bin Mustapa', 'blkg pjbt warden (blok N)', 'lampu tak nyala = 1', '19/10/2024', '21/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(263, 'Mohd Zamri Bin Mustapa', 'RnR blok Uthman ', 'lampu tak nyala = 1', '19/10/2024', '21/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(264, 'Aswa Amanina Binti Abu Shairi', 'Rumah warden dan kuarters pensyarah', 'Tiada air', '22/10/2024', '22/10/2024', 'Telah dibaiki/ok. ', 7, NULL, 2),
(265, 'Nuraida Binti Saman', 'Student square', '2 kipas tidak berfungsi', '24/10/2024', '28/10/2024', 'Telah dibaiki/ok. Ganti kipas baru', 7, '67199cefa0357.jpeg', 2),
(266, 'Mohd Zamri Bin Mustapa', 'Dorm S. Aisyah 3', 'lampu balkoni tak nyala', '24/10/2024', '25/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(267, 'Mohd Zamri Bin Mustapa', 'susur gajah aspura', 'lampu tak nyala', '24/10/2024', '24/10/2024', 'Telah dibaiki/ok. Ganti mentol baru', 7, NULL, 2),
(268, 'Norlaile Binti Amin', 'Tandas perempuan di blok A bersebelahan surau guru wanita', 'pam di dalam tandas 2 tidak berfungsi dan di tandas 3 rosak', '25/10/2024', '28/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(269, 'Nor Hayati Binti Abu Bakar', 'Bilik JPP', 'Pintu grill tercabut', '25/10/2024', '25/10/2024', 'Telah dibaiki/ok', 7, '671b67c4986db.jpeg', 2),
(270, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'Rumah Kuarters JKR.KS 1857-C-P', 'Paip bocor', '27/10/2024', '28/10/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(271, 'Norehan Binti Nasiruddin', 'Bilik Prep Siti Khadijah', 'Soket tercabut dan plug laptop terlekat', '28/10/2024', '22/11/2024', 'Telah dibaiki/ok', 7, '671f76da02c42.jpg', 2),
(272, 'Muhd Arif Bin Mat Wani', 'dorm uth 2', 'lampu berwarna oren', '28/10/2024', '29/10/2024', 'Pasang stok lampu yang ada', 7, '671fa436dbfa3.jpeg', 2),
(273, 'Mohd Zamri Bin Mustapa', 'bilik prep blok P (siti khadijah)', 'kipas siling rosak = 1 (no.3)', '05/11/2024', '08/11/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(274, 'Mohd Zamri Bin Mustapa', 'bilik pantri tingkat 2 blok P (s.k)', 'suis kipas rosak', '05/11/2024', '08/11/2024', 'Telah dibaiki/ok', 7, '67296c8b0955f.jpg', 2),
(275, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', 'Sinki tersumbat dan bocor', '05/11/2024', '06/11/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(276, 'Nurul Hidayah Binti Hamzah', 'BIKIK WARDEN DI BLOK ALI', 'Lampu tak nyala', '06/11/2024', '08/11/2024', 'Telah dibaiki/ok. Ganti mentol baru', 7, '672ad11c639cd.jpg', 2),
(277, 'Norehan Binti Nasiruddin', 'Bilik Prep Siti Khadijah', 'Kipas no 2 dr hadapan tidak berfungsi', '07/11/2024', '15/11/2024', 'Telah dibaiki/ok', 7, '672cbb07878e4.jpg', 2),
(278, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Dorm Ali 1 Blok Ali', 'Lampu tak hidup', '13/11/2024', '14/11/2024', 'Telah dibaiki/ok. Ganti mentol baru', 7, '673430440914d.jpg', 2),
(279, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'Dorm Siti Hajar 6 ', 'Suis kipas tercabut', '13/11/2024', '15/11/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(280, 'Nor Hishma Binti Basir', 'Stor Peralatan JPP', 'Mohon ditutup lubang ini kerana menjadi laluan tikus ke stor tersebut', '18/11/2024', '19/11/2024', 'Telah dibaiki/ok. Lubang telah ditutup', 7, '673aeb95d222a.jpeg', 2),
(281, 'Nur Ietrah Shahira Binti Sahrum', 'Bilik Pantri Siti Khadijah Aras Atas', 'Sinki tersumbat. ', '19/11/2024', '21/11/2024', 'Telah dibaiki/ok', 7, '673c9c42b8077.jpeg', 2),
(282, 'Mohd Zamri Bin Mustapa', 'Dorm SH6', 'kipas auto rosak = 1', '21/11/2024', '22/11/2024', 'Telah dibaiki/ok. Ganti kipas baru', 7, NULL, 2),
(283, 'Sivapradha a/p Palaniswami', 'Bilik guru teratai', 'Semua plug point sisi dinding tidak berfungsi', '26/11/2024', '26/11/2024', 'Telah dibaiki/ok', 7, '6745106119a6b.jpg', 2),
(284, 'Syarifah Nurul Syuhada Binti Syed Abdul Rahman', 'Bengkel TM1', 'Lampu rosak 1', '28/11/2024', '29/11/2024', 'Telah dibaiki/ok', 7, '6747d1ac3fdef.jpeg', 2),
(287, 'Fatimah Binti Satu', 'Makmal Sains A', 'Jubin tertanggal daripada permukaan.', '03/12/2024', NULL, NULL, NULL, '674e767ddaad6.jpeg', 0),
(288, 'Fatimah Binti Satu', 'Makmal Sains B', 'Bumbung bocor.', '03/12/2024', '06/12/2024', 'Telah dibaiki/ok', 7, '674e77759a4ae.jpeg', 2),
(289, 'Fatimah Binti Satu', 'Makmal Sains A dan B', 'Ada sesetengah paip air menitik. Ada yang tak keluar air.', '03/12/2024', NULL, NULL, NULL, '674e7819a8db4.jpeg', 0),
(290, 'Fatimah Binti Satu', 'Makmal Sains A dan B', 'Kerusi pelajar tercabut/ tertanggal', '03/12/2024', '05/12/2024', 'Telah dibaiki/ok', 7, '674e787be107e.jpeg', 2),
(291, 'Fatimah Binti Satu', 'Perpustakaan Ibnu Firnas dan bilik Red spot', 'mentol lampu terbakar dan berkelip-kelip ( 2 unit)', '03/12/2024', '05/12/2024', 'Telah dibaiki/ok', 7, '674e7b5e4ccf6.jpeg', 2),
(292, 'Fatimah Binti Satu', 'Makmal Sains A dan B', 'Lantai stage meja kerja guru reput/rosak', '04/12/2024', '05/12/2024', 'Telah diperiksa. Perlu buat permohonan pada Bpltv', 7, '674fcc753af19.jpg', 2),
(293, 'Fatimah Binti Satu', 'Makmal Sains A ', 'Bumbung bocor', '04/12/2024', NULL, NULL, NULL, '674fd865e93bb.jpg', 0),
(294, 'Mohd Zamri Bin Mustapa', 'dorm S.Aisyah 3', 'suis kipas rosak & lampu balkoni x nyala', '03/12/2024', '04/12/2024', 'Telah dibaiki/ok. Ganti suis dan mentol baru', 7, NULL, 2),
(295, 'Nur Hani Binti Halim', 'Tandas Pensyarah Wanita Block A Ground Floor', 'Mozek pecah ( risiko cedera)', '05/12/2024', NULL, NULL, NULL, '67511cbcca0dd.jpg', 0),
(296, 'Nur Ietrah Shahira Binti Sahrum', 'Dorm Siti Khadijah 8 ', 'Tombol pintu tercabut.', '06/12/2024', '09/12/2024', 'Telah dibaiki/ok', 7, '675289e06b4f2.jpeg', 2),
(297, 'Nor Hayati Binti Abu Bakar', 'Bilik JPP', 'Lampu tidak menyala', '09/12/2024', '10/12/2024', 'Telah dibaiki/ok. Ganti mentol baru', 7, '6756305dd0ba1.jpg', 2),
(298, 'Noraini Binti Yahya', 'Bengkel Bakeri 4', 'Lampu kelap kelip di tengah laut', '12/12/2024', '13/12/2024', 'Telah dibaiki/ok. Ganti mentol baru', 7, '675a6bd748a88.jpg', 2),
(299, 'Nur Ietrah Shahira Binti Sahrum', 'Dorm Siti Khadijah 7', 'Lampu di dalam dorm tidak menyala', '12/12/2024', '13/12/2024', 'Telah dibaiki/ok. Ganti mentol baru', 7, '675a6c59aaacd.jpeg', 2),
(300, 'Aimi Nabilah Binti Asmuni', 'Pejabat HEP', 'Lampu tidak menyala', '16/12/2024', '16/12/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(301, 'Norazrin Binti Mohd Shahar', 'Stor peralatan Bengkel Masak Seni Kulinari', 'lampu berkelip-kelip, mentol nak terbakar', '16/12/2024', '17/12/2024', 'Telah dibaiki/ok. Ganti mentol baru', 7, '675ff31007d63.jpg', 2),
(302, 'Aimi Nabilah Binti Asmuni', 'Tandas Pelajar perempuan Blok A', 'Lampu tidak menyala', '18/12/2024', '18/12/2024', 'Telah dibaiki/ok', 7, '67623aff55373.jpeg', 2),
(303, 'Mohd Zamri Bin Mustapa', 'laluan susur gajah (dr ruai ke bengkel bata)', 'lampu tak nyala = 2 unit', '09/12/2024', '11/12/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(304, 'Zurainika Bin Abdul Rahim', 'Stor Bahan Seni Kulinari ', 'Suis kipas rosak', '19/12/2024', '20/12/2024', 'Telah dibaiki/ok. Ganti suis baru', 7, NULL, 2),
(305, 'Zurainika Bin Abdul Rahim', 'Bengkel 1 kulinari ', 'Paip dlm lantai bocor menyebabkan bengkel  banjir', '20/12/2024', '23/12/2024', 'Telah dibaiki/ok', 7, NULL, 2),
(306, 'Mohd Zamri Bin Mustapa', 'dewan makan', 'lampu x nyala = 2 unit', '07/01/2025', '09/01/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '677c7fe61c988.jpg', 2),
(307, 'Mohd Zamri Bin Mustapa', 'DM', 'kipas siling x idup', '07/01/2025', '10/01/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, NULL, 2),
(308, 'Mohd Zamri Bin Mustapa', 'ali 7', 'kipas dinding rosak', '07/01/2025', '08/01/2025', 'Telah diperiksa. Kipas rosak, belum ganti tiada stok', 7, NULL, 2),
(309, 'Nur Ietrah Shahira Binti Sahrum', 'DORM SITI KHADIJAH 8 ', 'KIPAS HADAPAN TIDAK BERFUNGSI.', '07/01/2025', '08/01/2025', 'Telah dibaiki/ok. Kabel tercabut', 7, '677c8b1dc6511.jpeg', 2),
(310, 'Nurul Syuhada Binti Idris', 'BK 15', 'Kipas tidak berfungsi', '07/01/2025', '09/01/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, '677c8d3b89c83.jpg', 2),
(311, 'Noor Asma Binti Zakaria', 'BK22', 'Lampu rosak', '08/01/2025', '09/01/2025', 'Telah dibaiki/ok', 7, '677dd142d8eb7.jpeg', 2),
(313, 'Mohd Zamri Bin Mustapa', 'Bilik mandi Ali tingkat 2', 'suis ', '08/01/2025', '09/01/2025', 'Telah dibaiki/ok. Ganti suis baru', 7, NULL, 2),
(314, 'Aswa Amanina Binti Abu Shairi', 'Siti aisyah 4', 'Tombol pintu cabut', '10/01/2025', '13/01/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(315, 'Aimi Nabilah Binti Asmuni', 'Pejabat Hep', 'Lampu & kipas tidak berfungsi', '17/01/2025', '17/01/2025', 'Telah dibaiki/ok. Ganti kipas dan mentol', 7, '6789a38d00862.jpeg', 2),
(316, 'Muhammad Hariz Hifzhuddin Bin Halim', 'Bilik Ketua Bidang', 'Lampu tidak menyala', '20/01/2025', '21/01/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '678d97b7e78cf.jpg', 2),
(317, 'Norlaile Binti Amin', 'tandas pensyarah perempuan bersebelahan surau', 'lampu tandas bahagian dalam tidak menyala', '20/01/2025', '21/01/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, NULL, 2),
(318, 'Mohd Zamri Bin Mustapa', 'dewan makan', 'kipas = 4 & lampu = 8', '22/01/2025', '23/01/2025', 'Telah dibaiki/ok. Ganti kipas dan mentol baru', 7, NULL, 2),
(319, 'Ainatul Shahira Binti Musa', 'Dorm siti hajar 4', '2 Lampu berkelip2', '02/02/2025', '03/02/2025', 'Telah dibaiki/. Ganti mentol baru', 7, '679f4344d5631.jpg', 2),
(320, 'Ainatul Shahira Binti Musa', 'Dorm siti hajar 4', '2 Lampu berkelip2', '02/02/2025', NULL, NULL, NULL, '679f43479d549.jpg', 0),
(321, 'Muhd Arif Bin Mat Wani', 'dorm uthman 4', 'suis kipas x boleh tekan', '03/02/2025', '04/02/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, NULL, 2),
(322, 'Siti Zarina Binti Muhamad Julaini', 'Bilik Guru Teratai', 'Lampu tidak berfungsi dengan baik-berkelip2', '03/02/2025', '04/02/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67a033e7cc258.jpeg', 2),
(323, 'Marzatul Syahirah Binti Mohd Lotiffi', 'Bengkel 4', 'Trip di bengkel 4..chiller dgn freezer tak berfungsi', '06/02/2025', '06/02/2025', 'Telah dibaiki/ok. Reset semula RCD', 7, '67a40bcc05420.jpeg', 2),
(324, 'Norehan Binti Nasiruddin', 'Dorm Aisyah 6', 'Pemegang kunci pintu tercabut', '06/02/2025', '07/02/2025', 'Telah dibaiki/ok. ', 7, '67a40cc74613b.jpg', 2),
(325, 'Mohd Zamri Bin Mustapa', 'Dorm SK1=2 SK2=1 SK3=3', 'lampu x nyala', '10/02/2025', '12/02/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, NULL, 2),
(326, 'Mohd Zamri Bin Mustapa', 'Ali 1 - Ali 8', 'lampu tak nyala = 22 biji', '12/02/2025', '13/02/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, NULL, 2),
(327, 'Siti Nor Arifah Binti Md Piah', 'Bilik Guru Melur', 'Lampu berkelip ', '17/02/2025', '18/02/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67b27eb804f0f.jpeg', 2),
(328, 'Fatimah Binti Satu', 'Bilik akses Perpustakaan Ibnu Firnas', 'printer tidak berfungsi', '17/02/2025', '17/02/2025', 'Buat aduan pada borang aduan kewpa 10', 7, '67b29d3d9fe25.jpeg', 2),
(330, 'Sutra Azureen Binti Saharudin', 'Bengkel bakeri pastri 3', 'Air aircond bocor', '17/02/2025', '18/02/2025', 'Buat aduan pada borang kewpa 10', 7, NULL, 2),
(331, 'Nur Ietrah Shahira Binti Sahrum', 'Tandas Aras Atas Siti Khadijah', 'Lampu tidak menyala', '17/02/2025', '18/02/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67b2e74fad420.jpeg', 2),
(332, 'Norehan Binti Nasiruddin', 'Tandas Blok Aisyah Aras 1', 'Lampu tandas tidak menyala', '17/02/2025', '18/02/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67b2fe5d1751f.jpg', 2),
(333, 'Fatimah Binti Satu', '1856C-P Rumah Kakitangan ', 'Besi pemegang wayar elektrik reput/patah', '18/02/2025', '19/02/2025', 'Tunggu pembaikan dari kontraktor', 7, '67b40dc229244.jpg', 2);
INSERT INTO `aduan_kerosakan_umum` (`id_aduan`, `nama_pelapor`, `lokasi_terperinci_aduan`, `butiran_kerosakan`, `tarikh_aduan`, `tarikh_tindakkan_aduan`, `ulasan_aduan`, `id_admin`, `nama_img_ref`, `status_aduan`) VALUES
(334, 'Sarina Binti Shahman', 'Surau pelajar outsider', 'Lampu terbakar sehingga menyebabkan gelap seluruh bilik guru melur', '19/02/2025', NULL, NULL, NULL, '67b58ce77dcbd.jpeg', 0),
(335, 'Sarina Binti Shahman', 'Surau pelajar outsider', 'Lampu terbakar sehingga menyebabkan gelap seluruh bilik guru melur', '19/02/2025', '19/02/2025', 'Telah dibaiki/ok. Reset semula RCD', 7, '67b58ceb2268d.jpeg', 2),
(336, 'Norlaile Binti Amin', 'Bilik KJ2', 'Kipas tidak berfungsi', '20/02/2025', '21/02/2025', 'Telah dibaiki/ok', 7, '67b6e6582f470.jpg', 2),
(337, 'Nur Ietrah Shahira Binti Sahrum', 'Tandas Aras Atas Siti Khadijah & Balkoni Dorm Siti Khadijah 7', 'Lampu di tandas dan balkoni tidak menyala. ', '21/02/2025', '24/02/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67b82a452f88a.jpeg', 2),
(338, 'Ainatul Shahira Binti Musa', 'Dorm siti hajar 4', 'Kipas rosak', '24/02/2025', '25/02/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, '67bc50be31a76.jpg', 2),
(339, 'Norasidah Binti Agman', 'Bilik mesyuarat. ', 'Plug pecah', '26/02/2025', '26/02/2025', 'Telah dibaiki/ok. Ganti sso 13 amp baru', 7, '67beb880e7d23.jpg', 2),
(340, 'Nabilah Binti Nadzri', 'Student Square', 'Semua Soket plug tidak berfungsi', '27/02/2025', '27/02/2025', 'Telah dibaiki/ok. Reset semula RCD', 7, '67bfb0eb1fcf8.jpg', 2),
(341, 'Zaidatul Syahirah Binti Zainal Abidin', 'Bilik CA', 'Kipas tidak berfungsi. ', '27/02/2025', '28/02/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, NULL, 2),
(342, 'Zaidatul Syahirah Binti Zainal Abidin', 'Bilik CA', 'Lampu perlu ditambah', '27/02/2025', NULL, NULL, NULL, NULL, 0),
(343, 'Irzaharyantie Binti Bustami', 'Bengkel animasi A', 'Plug 7pc tak berfungsi', '27/02/2025', '28/02/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(344, 'Ainatul Shahira Binti Musa', 'Dorm siti hajar 4', 'Kipas rosak', '04/03/2025', '05/03/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, '67c6449b363f8.jpg', 2),
(345, 'Nur Ietrah Shahira Binti Sahrum', 'Gym Blok Siti Aisyah', 'Kipa terlalu perlahan. Pelajar kepanasan. Minggu depan exam takut terganggu emosi.', '04/03/2025', '05/03/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, '67c65c24a2a62.jpeg', 2),
(346, 'Nurul Syuhada Binti Idris', 'Bengkel 4 bakeri', 'Lampu berkelip kelip', '06/03/2025', '07/03/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67c8e92fc50e5.jpg', 2),
(347, 'Norehan Binti Nasiruddin', 'Tandas OKU Pusat Islam', 'Kepala paip tercabut ', '07/03/2025', '07/03/2025', 'Telah dibaiki/ok. Ganti kepala paip baru', 7, NULL, 2),
(348, 'Nurul Syuhada Binti Idris', 'bengkel 4 bakeri ', 'Chiller tidak berfungsi', '10/03/2025', '10/03/2025', 'Telah dibaiki/ok. Reset semula RCD', 7, '67ce37bb2200e.jpg', 2),
(349, 'Norfarahin Binti Ab Rahim', 'Bengkel 4 bakeri dan pastri ', 'Semua plug tidak dapat digunakan, trip', '10/03/2025', '10/03/2025', 'Telah dibaiki/ok. Reset semula RCD', 7, '67ce5b42b8933.jpg', 2),
(350, 'Norehan Binti Nasiruddin', 'Semua Pintu stor pintu aras atas dan pintu bilik telekung', 'Pemsangan padlock dan tombol baru.', '12/03/2025', '13/03/2025', 'Tiada stok untuk penggantian', 7, '67d2212626f43.jpg', 2),
(351, 'Norehan Binti Nasiruddin', 'Pusat Islam ', 'Bumbung Pusat Islam bocor', '13/03/2025', '14/03/2025', 'Telah dirujuk pada kontraktor Osspun', 7, '67d221d747848.jpg', 2),
(352, 'Nabilah Binti Nadzri', 'BILIK GURU ANGGERIK', 'SOKET PLUG AIRCOND PECAH. ', '13/03/2025', '14/03/2025', 'Telah dibaiki/ok. Ganti suis aircond baru', 7, '67d22831e3cea.jpg', 2),
(353, 'Marzatul Syahirah Binti Mohd Lotiffi', 'Bengkel 4 bakeri dan pastri', 'Paip singki bocor', '13/03/2025', '14/03/2025', 'Telah dibaiki/ok', 7, '67d253000fd45.jpeg', 2),
(354, 'Sarina Binti Shahman', 'Bililk guru melur', 'lampu terbakar', '13/03/2025', '14/03/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67d27a250de05.jpeg', 2),
(355, 'Nurul Hidayah Binti Hamzah', 'BILIK PREP BLOK UMAR', 'LAMPU DAN KIPAS TIDAK BERFUNGSI', '17/03/2025', '17/03/2025', 'Telah dibaiki/ok', 7, '67d7816c1f6c8.jpg', 2),
(356, 'Noor Azian Erdawaty Binti Zainudin', 'Stor Bahan Bengkel Bakeri KVKS', 'Lampu rosak & stor gelap', '17/03/2025', '18/03/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67d7b7f1a4b49.jpeg', 2),
(357, 'Norehan Binti Nasiruddin', 'Pusat Islam ', 'Mohon untuk gantungkan semula jam azan', '19/03/2025', '20/03/2025', 'Selesai', 7, '67da5636ae972.jpg', 2),
(358, 'Noraini Binti Yahya', 'Tepi blok A', 'Lampu jatuh pecah reput mungkin', '21/03/2025', '24/03/2025', 'Telah dibaiki/ok', 7, '67dceda076013.jpg', 2),
(359, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Bilik mandi blok abu bakar aras atas', 'Bumbung bocor', '21/03/2025', '21/03/2025', 'Telah maklum pada kontraktor Osspun untuk tindakan', 7, '67dd0c67daa9a.jpg', 2),
(360, 'Nurul Hidayah Binti Hamzah', 'BILIK PREP BLOK UMAR ', 'Lampu dan kipas tidak berfungsi.plug ok', '24/03/2025', '27/03/2025', 'Telah dibaiki/ok', 7, '67e0bd9c8718a.jpg', 2),
(361, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Pantri umar aras atas', 'Saluran paip tercabut', '24/03/2025', '25/03/2025', 'Telah dibaiki/ok', 7, '67e0bfcc29267.jpg', 2),
(362, 'Nur Dyanah Binti Abd Rahim', 'Bilik Guru Melur', 'Suis lampu tak boleh tekan.', '26/03/2025', '27/03/2025', 'Telah dibaiki/ok. Ganti suis baru', 7, '67e35075ab515.jpg', 2),
(363, 'Halimatun Asikin Binti Zolkifli', 'Bilik Ketua Jabatan 1', 'Pemegang pintu patah', '27/03/2025', '28/03/2025', 'Telah dibaiki/ok. Ganti tombol baru', 7, '67e4906727464.jpg', 2),
(364, 'Fatimah Binti Satu', 'Bilik akses Perpustakaan Ibnu Firnas', 'printer tidak berfungsi', '28/03/2025', '24/03/2025', 'Buat aduan pada borang aduan kewpa 10', 7, '67e61bd7dd931.jpeg', 2),
(365, 'Fatimah Binti Satu', 'Perpustakaan Ibnu Firnas dan bilik akses', 'mentol lampu terbakar 4 unit', '28/03/2025', '31/03/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67e61dfc75caa.jpeg', 2),
(366, 'Nur Umirah Binti Mamat', 'Bilik Pensyarah Anngerik', 'Lampu berkelip', '07/04/2025', '09/04/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '67f319a4c3f56.jpeg', 2),
(367, 'Nuraida Binti Saman', 'Student square', 'Saluran sinki bocor', '08/04/2025', '09/04/2025', 'Telah dibaiki/ok', 7, '67f48881ace16.jpeg', 2),
(368, 'Che Noor Nura Adilla Binti Che Ahmad', 'BK17', 'Semua plug tidak berfungsi ', '08/04/2025', '08/04/2025', 'Telah dibaiki/ok. Reset semula RCD', 7, '67f49ad40f878.jpg', 2),
(369, 'Noor Asma Binti Zakaria', 'Bilik guru Melur', 'Suis lampu x boleh tekan', '21/04/2025', '22/04/2025', 'Telah dibaiki/ok. Ganti suis baru', 7, '6805a2b4ec904.jpeg', 2),
(370, 'Rozita Binti Mohd Tahir', 'Bilik Kuliah 26', 'Siling bocor - air bertakung di lantai', '22/04/2025', '23/04/2025', 'Telah diperiksa. Tunggu pembaikan oleh projek Osspun', 7, '6806defd96599.jpeg', 2),
(371, 'Fadzilah Binti Khamis', 'Bilik Guru Melur', 'Aircond Leaking', '28/04/2025', '29/04/2025', 'Buat aduan pada borang kewpa 10', 7, '680f451590a45.jpeg', 2),
(372, 'Norazrin Binti Mohd Shahar', 'Bilik Persediaan Bengkel Masak Seni Kulinari', 'Lampu tetap menyala walaupun suis telah di tutup', '28/04/2025', '25/04/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '680f47eda2709.jpg', 2),
(373, 'Fauzana Binti Mat Rahik', 'Bilik Guru Anggerik ', 'Aircond xboleh on, mungkin cable digigit tikus', '29/04/2025', '30/04/2025', 'Buat aduan pada borang kewpa 10', 7, '6810193b7d081.jpg', 2),
(374, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Blok Umar Aras Atas', 'Bottle Trap tercabut', '29/04/2025', '30/04/2025', 'Telah dibaiki/ok', 7, '6810766366cbc.jpg', 2),
(375, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Blok Umar Aras Bawah', 'Tiada air', '29/04/2025', '30/04/2025', 'Telah diperiksa. Dalam proses pembaikan tangki air', 7, '68107675d0517.jpg', 2),
(376, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Pantry Blok Umar Aras Bawah', 'Bottle Trap tercabut', '29/04/2025', '30/04/2025', 'Telah dibaiki/ok', 7, '6810769074390.jpg', 2),
(377, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Pantry Blok Umar Aras Bawah', 'Tiada air', '29/04/2025', '30/04/2025', 'Telah diperiksa. Dalam proses pembaikan tangki air', 7, '681076ad38eb7.jpg', 2),
(378, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Bilik prep blok abu bakar', 'Plug tidak berfungsi (tiada eletrik)', '29/04/2025', '30/04/2025', 'Telah dibaiki/ok', 7, '6810f57b0224d.jpg', 2),
(379, 'Zaidatul Syahirah Binti Zainal Abidin', 'Stor pusat kulinari (sebelah bilik sukan) ', 'Lampu tidak berfungsi', '30/04/2025', '30/04/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '681183f492ff6.jpg', 2),
(380, 'Mohd Zamri Bin Mustapa', 'Asrama Putera & Puteri', 'lampu, suis dan lain2', '15/05/2025', NULL, NULL, NULL, NULL, 0),
(381, 'Nurul Hidayah Binti Hamzah', 'Siti Khadijah 4', 'Soket tidak berfungsi', '16/05/2025', '16/05/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(382, 'Halimatun Asikin Binti Zolkifli', 'Bilik Ketua Jabatan 1', 'Lampu berkelip-kelip', '19/05/2025', '19/05/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '682a7c1db8ee6.jpg', 2),
(383, 'Mohd Zamri Bin Mustapa', 'susur gajah aspuri', 'semua lampu tak idup # trip', '03/06/2025', NULL, NULL, NULL, NULL, 0),
(384, 'Mohd Zamri Bin Mustapa', 'dewan makan', 'kipas siling tak idup = 3 unit dan 1 unit sgt slow', '06/06/2025', '10/06/2025', 'Telah dibaiki/ok. Ganti kipas lain', 7, NULL, 2),
(385, 'Mohd Zamri Bin Mustapa', 'dewan makan', 'kipas dinding tak idup = 1 unit', '06/06/2025', '09/06/2025', 'Telah dibaiki/ok. Ganti kipas lain', 7, NULL, 2),
(386, 'Mohd Zamri Bin Mustapa', 'dewan makan', 'kipas siling tak idup = 3 unit dan 1 unit sgt slow', '06/06/2025', NULL, NULL, NULL, NULL, 0),
(387, 'Mohd Zamri Bin Mustapa', 'dewan makan', 'kipas dinding tak idup = 1 unit', '06/06/2025', NULL, NULL, NULL, NULL, 0),
(388, 'Sivapradha a/p Palaniswami', 'BK9', 'Simen siling jatuh, ada cracks , takut jatuh lagi. ', '10/06/2025', '10/06/2025', 'Telah diperiksa/ok', 7, '6847eaf8388b8.jpg', 2),
(389, 'Syarifah Nurul Syuhada Binti Syed Abdul Rahman', 'Bengkel TM1', 'Lampu tidak menyala', '11/06/2025', '11/06/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '6849019d38a7a.jpeg', 2),
(390, 'Aswa Amanina Binti Abu Shairi', 'Bk 13', 'Kipas terlalu perlahan ', '11/06/2025', '12/06/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, '684925ce0e87f.jpeg', 2),
(391, 'Zurainika Bin Abdul Rahim', 'Bengkel 2 kulinari', 'Pintu tercabut', '13/06/2025', '13/06/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(392, 'Mohd Zamri Bin Mustapa', 'Bilik Basuh Siti Hajar (GF)', 'Lampu tak nyala', '15/06/2025', '16/06/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '684ed05bceca8.jpg', 2),
(393, 'Norhamisah Binti Ahmad', 'Bilik Dtulip Pelangi', 'Suiz aircond tidak berfungsi', '16/06/2025', '16/06/2025', 'Tealh dibaiki/ok', 7, '684f5f682289b.jpg', 2),
(394, 'Nor Farhana Binti Abd Kader', 'BK13', 'Kipas terlalu perlahan', '19/06/2025', '23/06/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, NULL, 2),
(395, 'Nurazreen Idayu Binti Rameley', 'Bilik bahasa @ one stop centre', 'Kedua - dua aircond tidak sejuk', '19/06/2025', '19/06/2025', 'Buat aduan pada borang kewpa 10', 7, '6853bbf41fa7b.jpg', 2),
(396, 'Mohd Zamri Bin Mustapa', 'bilik mandi/tandas tingkat 3 blok P & Q', 'lampu tak nyala 2 unit', '24/06/2025', '24/06/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, NULL, 2),
(397, 'Mohd Zamri Bin Mustapa', 'laluan susur gajah aspura', 'lampu tak nyala 1 unit', '24/06/2025', '24/06/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, NULL, 2),
(398, 'Mohd Zamri Bin Mustapa', 'dorm SH 4', 'lampu berkelip2 (balkoni)', '24/06/2025', '25/06/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, NULL, 2),
(399, 'Mohd Zamri Bin Mustapa', 'laluan susur gajah aspuri', 'trip ', '25/06/2025', NULL, NULL, NULL, '685ad6601f4e6.jpg', 0),
(400, 'Nur Syazwani Binti Ahmad Kamarrudin', 'bengkel TM2', 'skru besi pintu utama bengkel tercabut', '26/06/2025', '26/06/2025', 'Telah dibaiki/ok', 7, '685cccbe12415.jpg', 2),
(401, 'Fadzilah Binti Khamis', 'Air cond Bilik Guru Melor', '1. Air menitis dan kurang sejuk', '26/06/2025', '26/06/2025', 'Buat aduan guna borang kewpa 10', 7, '685ced7759257.jpg', 2),
(402, 'Zakiah Binti Soid', 'Bilik Guru Melur', 'Lampu berkelip2', '01/07/2025', '02/07/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '68634c98db0ff.jpg', 2),
(403, 'Nurfazlen Binti Che Anuar', 'bengkel animasi B', 'lampu tidak menyala', '01/07/2025', '01/07/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '68636965f1f3d.jpg', 2),
(404, 'Fauzana Binti Mat Rahik', 'BENGKEL ANIMASI A', 'LAMPU ROSAK - 4 ', '01/07/2025', '01/07/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '68636a0059a89.jpeg', 2),
(405, 'Mohd Zamri Bin Mustapa', 'dorm umar 4 & abu bakar 4', 'kipas auto = 2 unit', '03/07/2025', '03/07/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, NULL, 2),
(406, 'Siti Salmiah Binti Hassan', 'Bilik Kuliah 10', 'Kipas siling bahagian tengah berbunyi bising', '07/07/2025', '08/07/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, '686b2f2d8899f.jpg', 2),
(407, 'Mohd Zamri Bin Mustapa', 'dapur DM', 'soket tkde api (trip)', '08/07/2025', '08/07/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(408, 'Norazrin Binti Mohd Shahar', 'BENGKEL MASAK 2', 'Air menitik Dari tingkat atas...berbau busuk..', '14/07/2025', '14/07/2025', 'Telah dibaiki/ok. Air dari paip aircond.', 7, '6874a4efa8a94.jpeg', 2),
(409, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'SITI Hajar 8 ', 'Flush tandas duduk (no 1) patah dan tidak berfungsi', '15/07/2025', '16/07/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(411, 'Aainaa Zawani Binti Azemi', 'Rumah warden sementara (tepi padang)', 'Paip bocor', '22/07/2025', '24/07/2025', 'Telah dibaiki/ok', 7, '687ec24acfd0a.jpeg', 2),
(412, 'Mohd Zamri Bin Mustapa', 'tandas blok P & Q tingkat 3', 'lampu tak nyala = 2', '22/07/2025', '23/07/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(413, 'Mohd Zamri Bin Mustapa', 'tandas duduk blok Q (tingkat 2 )', 'flush @ pam tandas rosak', '22/07/2025', '24/07/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(414, 'Mohd Zamri Bin Mustapa', 'dorm umar 4', 'kipas auto tak idup', '22/07/2025', '23/07/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(415, 'Mohd Zamri Bin Mustapa', 'dorm abu bakar 4', 'kipas auto tak idup', '22/07/2025', '23/07/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(416, 'Mohd Zamri Bin Mustapa', 'susur gajah aspuri', 'lampu tak nyala (trip)', '22/07/2025', '23/07/2025', 'Telah dibaiki/ok', 7, NULL, 2),
(417, 'Norazrin Binti Mohd Shahar', 'Restoran Bunga Lawang', 'Engsel pintu tercabut', '23/07/2025', '24/07/2025', 'Telah dibaiki/ok', 7, '68809b3ec96ba.jpeg', 2),
(418, 'Noor Asma Binti Zakaria', 'Bilik mesyuarat utama', 'Lampu dan kipas tidak berfungsi', '24/07/2025', '24/07/2025', 'Telah dibaiki/ok', 7, '68819634141fc.jpeg', 2),
(419, 'Mohd Zamri Bin Mustapa', 'tandas blok K & L', 'pintu tandas takde = 5', '31/07/2025', NULL, NULL, NULL, NULL, 1),
(420, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Balkoni Dorm Siti Aisyah 2', 'Lampu rosak', '07/08/2025', '11/08/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '689471957407d.jpg', 2),
(421, 'Aisyah Hakimah Binti Huslan', 'Bengkel 3 bakeri pastri', 'Paip patah', '08/08/2025', NULL, NULL, NULL, '68956ce85061e.jpeg', 1),
(422, 'Ainatul Shahira Binti Musa', 'Dorm siti hajar 3', 'Kipas rosak', '08/08/2025', '11/08/2025', 'Telah dibaiki/ok. Ganti kipas baru', 7, NULL, 2),
(423, 'Syed Muhammad Fahmi B. Syed Ahmad Marzuki', 'Dorm abu bakar 2', 'Kipas rosak', '12/08/2025', NULL, NULL, NULL, '689af3d960205.jpg', 1),
(424, 'Rozita Binti Mohd Tahir', 'Student Square ', 'Lampu kalimantang sentiasa menyala', '13/08/2025', '14/08/2025', 'Telah dibaiki/ok. Ganti suis baru', 7, NULL, 2),
(425, 'Rozita Binti Mohd Tahir', 'Dalam Koperasi', 'Lampu berkelipÂ² ', '21/08/2025', '22/08/2025', 'Telah dibaiki/ok. Ganti mentol baru', 7, '68a65ef3d9eb1.jpeg', 2),
(426, 'Nor Awatif Binti Mahmad Lazim', 'BILIK JPP', 'Suiz lampu tak boleh matikan dan dan lampu tidak menyala', '21/08/2025', '22/08/2025', 'Telah dibaiki/ok. Ganti suis baru', 7, '68a6b43a1a43e.jpeg', 2),
(427, 'Fadzilah Binti Khamis', 'Bilik Guru Melor', 'TIDAK BOLEH SWITCH ON', '25/08/2025', '25/08/2025', 'Telah dibaiki/ok. Ganti mcb baru', 7, '68abb2e09983d.jpg', 2),
(428, 'Fadzilah Binti Khamis', 'Bilik Guru Melor', 'TIDAK BOLEH SWITCH ON', '25/08/2025', NULL, NULL, NULL, '68abb2ea41fef.jpg', 0),
(429, 'Farihan Bin Jamingan', 'Bilik Guru Melur', 'Lampu berkelip', '02/09/2025', '03/09/2025', 'Telah dibaiki/ok. Ganti mentol led ', 7, '68b633d4a966f.jpg', 2),
(430, 'Norehan Binti Nasiruddin', 'Tandas Lelaki Pusat Islam', 'Paip tidak boleh di tutup', '02/09/2025', NULL, NULL, NULL, '68b685d575ebf.jpg', 1),
(431, 'Marzatul Syahirah Binti Mohd Lotiffi', 'Bengkel 4', 'Power bengkel 4 semua off termasuk power plug, chiller, freezer', '02/09/2025', '02/09/2025', 'Telah diperiksa/ok. Release semula Emergency Stop', 7, '68b6b19c8f521.jpeg', 2),
(432, 'Siti Lathipah Radiyah Binti Mohamad Ghazali', 'Tandas blok hajar aras atas', 'Shower no 1 tidak boleh ditutup ', '04/09/2025', NULL, NULL, NULL, NULL, 1),
(433, 'Mohd Zamri Bin Mustapa', 'bilik mandi blok L aras 3', 'shower tap rosak (loose) ', '04/09/2025', NULL, NULL, NULL, NULL, 1),
(434, 'Mohd Zamri Bin Mustapa', 'tandas & blk mandi blok L aras 3', 'pintu & kepala paip tercabut', '04/09/2025', NULL, NULL, NULL, '68b934b29a516.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `id_aset` int(11) NOT NULL,
  `nama_aset` varchar(100) NOT NULL,
  `jenis_aset` varchar(100) NOT NULL,
  `status_aset` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`id_aset`, `nama_aset`, `jenis_aset`, `status_aset`) VALUES
(2, 'Monitor', 'KOMPUTER', 1),
(4, 'Central Processing Unit (CPU)', 'KOMPUTER', 1),
(5, 'Keyboard', 'KOMPUTER', 1),
(6, 'Mouse', 'KOMPUTER', 1),
(7, 'Uninterruptible Power Supply (UPS)', 'KOMPUTER', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kakitangankvks`
--

CREATE TABLE `kakitangankvks` (
  `id_kakitangan` int(11) NOT NULL,
  `nama_kakitangan` varchar(100) DEFAULT NULL,
  `jawatan_kakitangan` varchar(50) DEFAULT NULL,
  `status_kakitangan` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `pelan_lantai_img` varchar(200) DEFAULT NULL,
  `status_lokasi` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`, `pelan_lantai_img`, `status_lokasi`) VALUES
(1, 'LAIN LAIN', NULL, 1),
(2, 'BENGKEL WEB 2', NULL, 1),
(3, 'BENGKEL ANIMASI A', NULL, 1),
(4, 'BENGKEL ANIMASI B', NULL, 1),
(5, 'BENGKEL PEMASARAN', NULL, 1),
(6, 'KOLEJ KEDIAMAN ', NULL, 1),
(7, 'PEJABAT', NULL, 1),
(8, 'BENGKEL WEB 1', NULL, 1),
(9, 'STUDIO PEMASARAN 1', NULL, 1),
(10, 'STUDIO PEMASARAN 2', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_teknikal`
--

CREATE TABLE `pegawai_teknikal` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `password_pegawai` varchar(100) NOT NULL,
  `jawatan_pegawai` varchar(100) NOT NULL,
  `status_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai_teknikal`
--

INSERT INTO `pegawai_teknikal` (`id_pegawai`, `nama_pegawai`, `password_pegawai`, `jawatan_pegawai`, `status_pegawai`) VALUES
(6, 'DANIAL', '$2y$10$hEGy451SJqhpESoXNUibI.OPrjlRNQ5V8SuplKVYce5PGFmjJb7NG', 'DEV', 0),
(7, 'NOOR ASLAM BIN NOORULLDIN', '$2y$10$y5D5KdyAcOtge5yoaZ.4jOGXXxjtGShDdSFy7j3MqvZcF2J2Edi0G', 'PEMBANTU KEMAHIRAN', 1),
(9, 'INTAN FAIRUZ BT JA\'AFAR', '$2y$10$N2KvoRzWTrRV1GwX6GUnA.n1yDvHoYeZGStuPS8mUwZDU4Fu3ZSj2', 'PENOLONG PEGAWAI TEKNOLOGI MAKLUMAT', 1),
(13, 'MOHD NAZLY BIN ABD HAMID', '$2y$10$sHfM25iwcBFYZsVriUn.m.QoMIf4SNSrLTM.tsppodF7I.bkNV/Ti', 'PENGURUSAN', 1),
(15, 'MUHAMAD NAZMI BIN MUZAHAR', '$2y$10$zgWUF4P4icSNReE7qnjQX.Ku2jOJRNFB1.B7q.pbEwarB3OS/M0JS', 'PEMBANTU KEMAHIRAN', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aduan_kerosakan_komputer`
--
ALTER TABLE `aduan_kerosakan_komputer`
  ADD PRIMARY KEY (`id_aduan`);

--
-- Indexes for table `aduan_kerosakan_penyaman_udara`
--
ALTER TABLE `aduan_kerosakan_penyaman_udara`
  ADD PRIMARY KEY (`id_aduan`);

--
-- Indexes for table `aduan_kerosakan_umum`
--
ALTER TABLE `aduan_kerosakan_umum`
  ADD PRIMARY KEY (`id_aduan`);

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id_aset`);

--
-- Indexes for table `kakitangankvks`
--
ALTER TABLE `kakitangankvks`
  ADD PRIMARY KEY (`id_kakitangan`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `pegawai_teknikal`
--
ALTER TABLE `pegawai_teknikal`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aduan_kerosakan_komputer`
--
ALTER TABLE `aduan_kerosakan_komputer`
  MODIFY `id_aduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `aduan_kerosakan_penyaman_udara`
--
ALTER TABLE `aduan_kerosakan_penyaman_udara`
  MODIFY `id_aduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `aduan_kerosakan_umum`
--
ALTER TABLE `aduan_kerosakan_umum`
  MODIFY `id_aduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `id_aset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kakitangankvks`
--
ALTER TABLE `kakitangankvks`
  MODIFY `id_kakitangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai_teknikal`
--
ALTER TABLE `pegawai_teknikal`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
