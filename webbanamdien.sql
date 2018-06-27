-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 02:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webbanamdien`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`idadmin` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`id` int(11) NOT NULL,
  `fullname` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `createdate`) VALUES
(15, 'admin', '2017-05-12 16:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE IF NOT EXISTS `cart_detail` (
`id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(25, 15, 99, 1, '290000');

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

CREATE TABLE IF NOT EXISTS `dangky` (
`id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachinhan` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
`id_gallery` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinhanhsp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_sp`, `hinhanhsp`) VALUES
(57, 86, 'canon-eos-1d-x-2-1-min1493696682.jpg'),
(58, 92, 'am-da-nang-ELEK-212W-nau1494600779.jpg'),
(59, 93, '03011_1-150323073614031494601245.jpg'),
(60, 93, '03011_3-150323073614031494601253.jpg'),
(61, 93, '03011_2-150323073614031494601259.jpg'),
(62, 94, 'ruot-am-sac-thuoc-bat-tien1494601937.jpg'),
(63, 95, '7SgCO1D0syo-1494602160.jpg'),
(64, 96, 'sieu-toc-binh-thuy-misushita-2-90x901494602405.jpg'),
(65, 96, 'sieu-toc-binh-thuy-misushita-3-90x901494602412.jpg'),
(66, 96, 'sieu-toc-binh-thuy-misushita-7-90x901494602423.jpg'),
(67, 96, 'sieu-toc-binh-thuy-misushita-8-90x901494602429.jpg'),
(68, 96, 'sieu-toc-binh-thuy-misushita-51494602435.jpg'),
(69, 96, 'sieu-toc-binh-thuy-misushita-4-90x901494602443.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hieusp`
--

CREATE TABLE IF NOT EXISTS `hieusp` (
`idhieusp` int(11) NOT NULL,
  `tenhieusp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `hieusp`
--

INSERT INTO `hieusp` (`idhieusp`, `tenhieusp`, `tinhtrang`) VALUES
(14, 'Lock&Lock', '1'),
(15, 'SunHouse', '1'),
(16, 'Gali', '1'),
(17, 'Happy Cook', '1'),
(18, 'Misushita', '1'),
(19, 'Joy Cook', '1'),
(20, 'HÃ£ng khÃ¡c', '1');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE IF NOT EXISTS `loaisp` (
`idloaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`, `tinhtrang`) VALUES
(24, 'áº¤m siÃªu tá»‘c', '1'),
(25, 'áº¤m sáº¯c thuá»‘c', '1'),
(26, 'áº¤m Ä‘iá»‡n Ä‘a dá»¥ng', '1'),
(27, 'LÃ² vi sÃ³ng', '1'),
(28, 'KhÃ¡c', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
`idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giadexuat` float NOT NULL,
  `giagiam` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `nhasx` int(11) NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giadexuat`, `giagiam`, `soluong`, `loaisp`, `nhasx`, `tinhtrang`, `noidung`) VALUES
(82, 'Bá»™ Sáº¡c T2H5', 'b6', '2.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(83, 'Bá»™ Sáº¡c T2H5', 'b6', '3.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(84, 'Bá»™ Sáº¡c T2H5', 'b6', 'download.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(85, 'Canon EOS-1D X', 'canon', 'canon-eos-1d-x-1-1-min.jpg', 12000000, 12000000, 6, 22, 1, '1', '<p>Sáº£n pháº«m h&agrave;ng ch&iacute;nh h&atilde;ng v&agrave; ráº¥t l&agrave; Ä‘áº¹p.</p>'),
(86, 'Canon EOS 6D', 'canon 6d', '3-4a620da2-d3d1-46b3-82b7-6522066a48ed.jpg', 27000000, 27000000, 6, 22, 1, '1', '<p>Äáº¹p</p>'),
(88, 'áº¤m sáº¯c thuá»‘c hÃ¬nh tranh Ä‘ong há»“ GL-1801', 'GL1801', 'medium_ljv1402910886.jpg', 500000, 459000, 50, 25, 20, '1', ''),
(89, 'áº¤m sáº¯c thuá»‘c hÃ¬nh rá»“ng GL-1802', 'GL1802', 'medium_qzz1402910884.jpg', 600000, 549000, 10, 25, 20, '1', '<p>Sáº£n Pháº©m cháº¥t lÆ°á»£ng cao</p>'),
(90, 'áº¤m sáº¯c thuá»‘c tráº¯ng GL-1806', 'GL1806', 'medium_xuf1402910889.jpg', 800000, 699000, 8, 25, 20, '1', '<p>Sáº£n Pháº©m cháº¥t lÆ°á»£ng cao</p>'),
(91, 'áº¤m sáº¯c thuá»‘c GL-1800', 'GL1800', 'reg1402910877.png', 400000, 299000, 100, 25, 20, '1', '<p>Sáº£n Pháº©m cháº¥t lÆ°á»£ng cao</p>'),
(92, 'áº¤m Ä‘iá»‡n Ä‘a nÄƒng mÃ u tráº¯ng Lock&Lock ELEK-212W', 'ELEK-212W', 'am-da-nang-ELEK-212W-ham.jpg', 1500000, 1330000, 20, 26, 14, '1', '<p>áº¤m Ä‘iá»‡n Ä‘a nÄƒng m&agrave;u tráº¯ng Lock&amp;Lock ELEK-212W cháº¥t lÆ°á»£ng cao cáº¥p</p>'),
(93, 'áº¤m Ä‘iá»‡n inox Sunhouse 3 lÃ­t - SH-KS300E ', 'SH-KS300E ', '03011_4-15032307361403.jpg', 400000, 320000, 25, 24, 15, '1', '<p>Sáº£m pháº©m ráº¥t Ä‘áº¹p</p>'),
(94, 'áº¤m sáº¯c thuá»‘c bÃ¡t tiÃªn 3,2L lÃ m tá»« gá»‘m cao cáº¥p ', 'GL525', 'am-sac-thuoc-bat-tien-kieu-dang-sang-trong.jpg', 300000, 250000, 96, 25, 20, '1', '<p>áº¤m sáº¯c thuá»‘c b&aacute;t ti&ecirc;n 3,2L l&agrave;m tá»« gá»‘m cao cáº¥p cháº¥t lÆ°á»£ng khá»i b&agrave;n</p>'),
(95, 'áº¤m Äun Äiá»‡n Inox Happy Cook HCK-50SL - 5 LÃ­t', 'HCK-50SL', 'S5LySZliOksd.jpg', 450000, 410000, 100, 24, 17, '1', '<p>áº¤m Äun Äiá»‡n Inox Happy Cook HCK-50SL - 5 L&iacute;t cháº¥t lÆ°á»£ng qu&aacute; tá»‘t</p>'),
(96, 'áº¤m siÃªu tá»‘c 2 lá»›p inox giá»¯ nhiá»‡t Misushita 2.0L', 'ML223', 'sieu-toc-binh-thuy-misushita-6-300x300.jpg', 500000, 439000, 522, 24, 18, '1', '<p>Sáº£n pháº©m cháº¥t lÆ°á»£ng</p>'),
(97, 'áº¤m siÃªu tá»‘c Gali GL-010', 'GL010', 'AmDienGali.jpg', 280000, 270000, 500, 24, 16, '1', '<p>áº¤m si&ecirc;u tá»‘c 2 lá»›p inox cháº¥t lÆ°á»£ng ngon</p>'),
(98, 'áº¤m siÃªu tá»‘c Gali GL-018', 'GL018', 'AmSieuToc Gali GL-0018.jpg', 158000, 140000, 100, 24, 16, '1', '<p>Cháº¥t lÆ°á»£ng cao nhÆ°ng gi&aacute; cá»±c ráº»</p>'),
(99, 'áº¤m Ä‘iá»‡n HC-019', 'HC-019', 'AmSieuToc Happy Call.jpg', 290000, 250000, 56, 24, 17, '1', '<p>Cháº¥t lÆ°á»£ng cao</p>'),
(101, 'MÃ¡y lÃ m kem 3in1', 'AD123', 'MayLamKem3in1 Gali.jpg', 580000, 560000, 0, 28, 16, '1', '<p>Tiá»‡n lá»£i, gi&aacute; ph&ugrave; há»£p</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
`idtintuc` int(11) NOT NULL,
  `tentintuc` tinytext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matin` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idtintuc`, `tentintuc`, `matin`, `hinhanh`, `noidung`, `tinhtrang`) VALUES
(5, 'Máº«u  áº¥m Ä‘iá»‡n Ä‘a dá»¥ng PhÃ¡p thiáº¿t káº¿ Ä‘áº¹p, giÃ¡ dÆ°á»›i 2 triá»‡u Ä‘á»“ng', 'ELEK-212W', 'am-da-nang-ELEK-212W-ham.jpg', '<p>Sá»Ÿ há»¯u nhiá»u tin nÄƒng tiá»‡n dá»¥ng, Ä‘a nÄƒng, thiáº¿t káº¿ Ä‘áº¹p,...</p>', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangky`
--
ALTER TABLE `dangky`
 ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
 ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `hieusp`
--
ALTER TABLE `hieusp`
 ADD PRIMARY KEY (`idhieusp`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
 ADD PRIMARY KEY (`idloaisp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
 ADD PRIMARY KEY (`idsanpham`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
 ADD PRIMARY KEY (`idtintuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `dangky`
--
ALTER TABLE `dangky`
MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `hieusp`
--
ALTER TABLE `hieusp`
MODIFY `idhieusp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
MODIFY `idloaisp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
MODIFY `idtintuc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
