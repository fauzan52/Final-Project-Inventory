-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 02:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `penerima`, `qty`) VALUES
(13, 27, '2022-07-29 09:11:08', 'OJAN', 50),
(14, 42, '2022-08-11 18:11:56', 'Tiara', 3);

-- --------------------------------------------------------

--
-- Table structure for table `keluardus`
--

CREATE TABLE `keluardus` (
  `idkeluardus` int(11) NOT NULL,
  `idnamadus` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`iduser`, `name`, `username`, `email`, `password`) VALUES
(1, '', '', 'lepoy@gmail.com', '1234567'),
(2, '', '', 'lepoylagiaja@gmail.com', '1234567'),
(6, 'tiara2', 'tiara2', 'tiara2@gmail.com', '123'),
(7, 'ara', 'ara', 'arara@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `keterangan`, `qty`) VALUES
(23, 27, '2022-07-29 09:10:55', 'FAUZAN', 100),
(24, 42, '2022-08-11 18:10:29', 'Tiara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `masukdus`
--

CREATE TABLE `masukdus` (
  `idmasukdus` int(11) NOT NULL,
  `idnamadus` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `tanggalbarang` date DEFAULT NULL,
  `namabarang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`idbarang`, `tanggalbarang`, `namabarang`, `deskripsi`, `stock`, `image`) VALUES
(42, '2022-07-01', '(A) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 98, '1226df5a2e7ca5c11c799cde129af03f.png'),
(43, '2022-07-01', '(B) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, '3491463d7bd61a891a34a7465f18d7a2.png'),
(44, '2022-07-01', '(C) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, '770380732bbefacaebac000412496e10.png'),
(45, '2022-07-01', '(D) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, '95b2f6ae62c0a716dc764dd31d75f60e.png'),
(46, '2022-07-01', '(E) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, 'e7da3cafedae1f43a475fdebbf0e978e.png'),
(47, '2022-07-01', '(F) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, 'b50aa567bc5c5cea834374fb9f55f38c.png'),
(48, '2022-07-01', '(G) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, '095241fc2911fc68438e6423c33d6dec.png'),
(49, '2022-07-01', '(H) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, 'd7abbd1f1a0be80abd116422ad042fbe.png'),
(50, '2022-07-01', '(I) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, '0e384f007b692acd3dfdafe4f25b177e.png'),
(51, '2022-07-01', '(J) Sunny Day Cream With Sunscreen By Camille.', '75.000/Pcs', 100, '7fd7d262f82a38d8594dc507ca430e75.png'),
(52, '2022-07-04', '(A) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, 'd938dbc7c1da879e04181e7969fd5a65.png'),
(53, '2022-07-04', '(B) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, '25d28e21bbeed78600ce31801fce43d5.png'),
(54, '2022-07-04', '(C) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, '11fb227a943ea19939656916b4e1308b.png'),
(55, '2022-07-04', '(D) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, 'bfc77f63c3642c3650721784c493b237.png'),
(56, '2022-07-04', '(E) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, '031ba6fc1bbef70545fe466a550f3b52.png'),
(57, '2022-07-08', '(F) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, '86e3f56dbda4c1e381ee660d11e86a3d.png'),
(58, '2022-07-08', '(G) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, '3b4953f549bd399b3db7e163b07df7a2.png'),
(59, '2022-07-08', '(H) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, '7773bfe6083dd9545db83d32a67769b3.png'),
(60, '2022-07-15', '(J) Say Glowry Moisturizer By Camille', '80.000/Pcs', 100, '87197a4244c87f2080599c0c5a5339f8.png'),
(61, '2022-07-11', '(A) Moon Night Cream By Camille', '80.000/Pcs', 100, '7ebf8171eef0754a453965a427994a79.png'),
(62, '2022-07-11', '(B) Moon Night Cream By Camille', '80.000/Pcs', 100, 'd4e488cd1023202ca373625fbbef604b.png'),
(63, '2022-07-11', '(C) Moon Night Cream By Camille', '80.000/Pcs', 100, '73acb394ce51ff5b008e199ad9692a63.png'),
(64, '2022-07-12', '(D) Moon Night Cream By Camille', '80.000/Pcs', 100, 'aa6ebdb0d02dc83bb2d8c800c6f56260.png'),
(65, '2022-07-14', '(E) Moon Night Cream By Camille', '80.000/Pcs', 100, 'bf42bbb838f28e891b420888c9c41942.png'),
(66, '2022-07-14', '(F) Moon Night Cream By Camille', '80.000/Pcs', 100, 'd098fa8442f9f84e7a329b2006034ec7.png'),
(67, '2022-07-15', '(G) Moon Night Cream By Camille', '80.000/Pcs', 100, 'c1352994bfdd5d27cf3d55e3b0263f44.png'),
(68, '2022-07-19', '(I) Moon Night Cream By Camille', '80.000/Pcs', 100, 'ef0a58906d04268ad9aee01ce3efbef3.png'),
(69, '2022-07-15', '(J) Moon Night Cream By Camille', '80.000/Pcs', 100, '91057d1119e33a58253331b09f4f8ab9.png'),
(70, '2022-07-18', '(A) Me With You Essence Toner By Camille', '75.000/Pcs', 100, '46a86accd40b9e79fc2de60a297a5a7e.png'),
(71, '2022-07-18', '(B) Me With You Essence Toner By Camille', '75.000/Pcs', 100, '406b1158a8e1ec707ca69b5bf04ac7da.png'),
(72, '2022-07-18', '(C) Me With You Essence Toner By Camille', '75.000/Pcs', 100, 'ec0e8b56676d3b72fcd768b296a5fca2.png'),
(73, '2022-07-20', '(D) Me With You Essence Toner By Camille', '75.000/Pcs', 100, '233cbbbad0cea00f9b05c0755b05df2c.png'),
(74, '2022-07-20', '(E) Me With You Essence Toner By Camille', '75.000/Pcs', 100, 'c661c5dc135de8f388391e3c67178319.png'),
(75, '2022-07-22', '(F) Me With You Essence Toner By Camille', '75.000/Pcs', 100, '62fd4392b8d4b5372e3f067023be0f4f.png'),
(76, '2022-07-22', '(G) Me With You Essence Toner By Camille', '75.000/Pcs', 100, '6ec7e503715fd3bf293d5ded9cd59e7e.png'),
(77, '2022-07-25', '(A) Little Pop Face Mist By Camille', '40.000/Pcs', 100, '6d81db771c9ab908559f4253a0fea7bf.png'),
(78, '2022-08-23', '(B) Little Pop Face Mist By Camille', '40.000/Pcs', 100, '54fbee4dff7806be68ed74e6a7e1898a.png'),
(79, '2022-08-24', '(C) Little Pop Face Mist By Camille', '40.000/Pcs', 100, 'cdfa73dc97be3ce559519ac65037573a.png'),
(80, '2022-08-25', '(D) Little Pop Face Mist By Camille', '40.000/Pcs', 100, 'eac700d8b2b0552b8fdd2a098a2cc985.png'),
(81, '2022-07-29', '(F) Little Pop Face Mist By Camille', '40.000/Pcs', 100, 'a8208eb7c86506c37b20db7aef04b9ab.png'),
(82, '2022-07-24', 'Happy Joy Serum By Camille', '85.000/Pcs', 100, 'c1cb64cfc6702eddc32d5662b5c440d6.png'),
(83, '2022-07-25', 'Bundling Skincare Camille Beauty', '450.000/Pcs', 100, '8de6f484d9d6d83d5a5923f860434838.png'),
(84, '2022-07-26', 'BPOM Camille Product 25gr-65gr', '40.000/Pcs', 100, '78bd3635295ac12448775cc768b12c31.png'),
(85, '2022-07-27', 'Bodyscrub Camille 250gr by camille', '45.000/Pcs', 100, '4cc8845e2d0be7b886c46270cf4da705.png'),
(86, '2022-07-28', 'BEAUTY CHARGE FACIAL CLEANCER by Camille', '85.000/Pcs', 100, 'ad98219706d7b4ee8f7f26f9e4fc4b31.png'),
(87, '2022-07-30', '(C) Bodyscrub Camille 250gr by camille', '75.000/Pcs', 100, 'e03dc0693d82e04899e4756dc53214c0.png'),
(88, '2022-08-02', '(B) Bodyscrub Camille 250gr by camille', '75.000/Pcs', 100, '899bd47e0ce4485e8fd979905bfee083.png'),
(89, '2022-08-06', '(A) Bodyscrub Camille 250gr by camille', '75.000/Pcs', 100, 'ad93edac97070ef549471f00ef30cf84.png'),
(90, '2022-08-08', '(B) Happy Joy Serum By Camille', '85.000/Pcs', 100, 'adfa0bbd2af838b868eb9d1a3684d587.png'),
(91, '2022-08-09', '(C) Happy Joy Serum By Camille', '85.000/Pcs', 100, '4a96afe2c9e7a4760626db5c1af86378.png');

-- --------------------------------------------------------

--
-- Table structure for table `stockdus`
--

CREATE TABLE `stockdus` (
  `iddus` int(11) NOT NULL,
  `namadus` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stockdus`
--

INSERT INTO `stockdus` (`iddus`, `namadus`, `deskripsi`, `stock`) VALUES
(1, 'dus pink', '2 pack', 100),
(2, 'dus kuning', '2 pack', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indexes for table `keluardus`
--
ALTER TABLE `keluardus`
  ADD PRIMARY KEY (`idkeluardus`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indexes for table `masukdus`
--
ALTER TABLE `masukdus`
  ADD PRIMARY KEY (`idmasukdus`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `stockdus`
--
ALTER TABLE `stockdus`
  ADD PRIMARY KEY (`iddus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `keluardus`
--
ALTER TABLE `keluardus`
  MODIFY `idkeluardus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `masukdus`
--
ALTER TABLE `masukdus`
  MODIFY `idmasukdus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `stockdus`
--
ALTER TABLE `stockdus`
  MODIFY `iddus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
