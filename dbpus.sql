-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2019 at 12:48 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbanggota`
--

CREATE TABLE IF NOT EXISTS `tbanggota` (
  `idanggota` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jeniskelamin` varchar(10) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`idanggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbanggota`
--

INSERT INTO `tbanggota` (`idanggota`, `nama`, `jeniskelamin`, `alamat`, `status`) VALUES
('AG001', 'Riki Subekti', 'Pria', 'Jl.Semangka No 3', 'Sedang Meminjam'),
('AG002', 'Aini Rahmawati', 'Wanita', 'Jl.Anggrek No 45', 'Sedang Meminjam'),
('AG003', 'Rudi Hartono', 'Pria', 'Jl.Manggis 98', 'Sedang Meminjam'),
('AG004', 'Dino Riano', 'Pria', 'Jl.Melon No 33', 'Tidak Meminjam'),
('AG005', 'Agus Wardoyo', 'Pria', 'Jl.Cempedak No 88', 'Sedang Meminjam'),
('AG006', 'Shinta Riani', 'Wanita', 'JL.Jeruk No 1', 'Sedang Meminjam'),
('AG007', 'Irwan Hakim', 'Pria', 'Jl.Salak No 34', 'Sedang Meminjam'),
('AG008', 'Indah Dian', 'Wanita', 'Jl.Semangka No 23', 'Sedang Meminjam'),
('AG009', 'Rina Auliah', 'Wanita', 'Jl.Merpati No 44', 'Sedang Meminjam'),
('AG010', 'Septi Putri', 'Wanita', 'Jl.Beringin No 2', 'Sedang Meminjam'),
('AG011', 'Ita Kumala Sari', 'Wanita', 'Jl.Rambutan No 99', 'Tidak Meminjam'),
('AG012', 'Afdal Rohman', 'Pria', 'Jl.Anggur No 67', 'Tidak Meminjam'),
('AG013', 'Putra Sanjaya', 'Pria', 'Jl.Rajawali No 14', 'Tidak Meminjam'),
('AG014', 'Rangga', 'Pria', 'Jl.Manggis No 41', 'Sedang Meminjam'),
('AG015', 'Mohammad Rusdi', 'Pria', 'Brebes', 'Tidak Meminjam');

-- --------------------------------------------------------

--
-- Table structure for table `tbbuku`
--

CREATE TABLE IF NOT EXISTS `tbbuku` (
  `idbuku` varchar(5) NOT NULL,
  `judulbuku` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `pengarang` varchar(40) NOT NULL,
  `penerbit` varchar(40) NOT NULL,
  `Tgl-Masuk` char(20) NOT NULL,
  `jumlah` char(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`idbuku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbbuku`
--

INSERT INTO `tbbuku` (`idbuku`, `judulbuku`, `kategori`, `pengarang`, `penerbit`, `Tgl-Masuk`, `jumlah`, `status`) VALUES
('BK001', 'Belajar PHP', 'Ilmu Komputer', 'Candra', 'Media Baca', '', '', 'Dipinjam'),
('BK002', 'Belajar HTML', 'Ilmu Komputer', 'Rahmat Hakim', 'Media Baca', '', '', 'Dipinjam'),
('BK003', 'Kumpulan Puisi', 'Karya Sastra', 'Bejo', 'Media Kita', '', '', 'Dipinjam'),
('BK004', 'Sejarah Islam', 'Ilmu Agama', 'Sutejo', 'Media Kita', '', '', 'Dipinjam'),
('BK005', 'Pintar CSS', 'Ilmu Komputer', 'Anton', 'Graha Buku', '', '', 'Tersedia'),
('BK006', 'Kumpulan Cerpen', 'Karya Sastra', 'Rudi', 'Media Aksara', '', '', 'Tersedia'),
('BK007', 'Keamanan Data', 'Ilmu Komputer', 'Nusron', 'Media Cipta', '', '', 'Dipinjam'),
('BK008', 'Dasar-Dasar Database', 'Ilmu Komputer', 'Andi', 'Graha Media', '', '', 'Dipinjam'),
('BK009', 'Kumpulan Cerpen 2', 'Karya Sastra', 'Sutejo', 'Media Cipta', '', '', 'Dipinjam'),
('BK010', 'Peradaban Islam', 'Ilmu Agama', 'Aminnudin', 'Media Baca', '', '', 'Dipinjam'),
('BK011', 'Kumpulan Cerpen 3', 'Karya Sastra', 'Rudi', 'Media Baca', '', '', 'Tersedia'),
('BK012', 'Teknologi Informasi', 'Ilmu Komputer', 'Andi A', 'Media Baca', '', '', 'Dipinjam'),
('BK013', 'Dermaga Biru', 'Karya Sastra', 'Sutejo', 'Media Cipta', '', '', 'Dipinjam'),
('BK014', 'Teologi Al Ashr', 'Ilmu Agama', 'M. Azaki Khoirudin', 'Suara Muhammadiyah', '', '', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tbtransaksi`
--

CREATE TABLE IF NOT EXISTS `tbtransaksi` (
  `idtransaksi` varchar(5) NOT NULL,
  `idanggota` varchar(5) NOT NULL,
  `idbuku` varchar(5) NOT NULL,
  `tglpinjam` date NOT NULL,
  `Jatuh-Tempo` char(20) NOT NULL,
  `tglkembali` date NOT NULL,
  PRIMARY KEY (`idtransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbtransaksi`
--

INSERT INTO `tbtransaksi` (`idtransaksi`, `idanggota`, `idbuku`, `tglpinjam`, `Jatuh-Tempo`, `tglkembali`) VALUES
('TR001', 'AG002', 'BK002', '2016-11-03', '', '0000-00-00'),
('TR002', 'AG003', 'BK003', '2016-11-04', '', '2016-11-04'),
('TR003', 'AG001', 'BK001', '2016-11-04', '', '0000-00-00'),
('TR004', 'AG003', 'BK003', '2016-11-04', '', '2016-11-04'),
('TR005', 'AG006', 'BK004', '2016-11-04', '', '0000-00-00'),
('TR006', 'AG003', 'BK005', '2016-11-05', '', '2016-11-05'),
('TR007', 'AG008', 'BK013', '2016-11-05', '', '0000-00-00'),
('TR009', 'AG003', 'BK003', '2019-03-28', '', '0000-00-00'),
('TR010', 'AG004', 'BK012', '2019-03-28', '', '2019-03-28'),
('TR031', 'AG010', 'BK003', '2017-01-22', '', '2019-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE IF NOT EXISTS `tbuser` (
  `iduser` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`iduser`, `nama`, `alamat`) VALUES
('US001', 'Andi Rahman Hakim', 'Jl.Pramuka No 9'),
('US002', 'Mohammad Rusdi', 'Jl. Dr. Wahidin 123 Semarang');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
