-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 21, 2018 lúc 07:39 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlhocvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocvien`
--

CREATE TABLE `hocvien` (
  `hv_id` int(5) NOT NULL,
  `hv_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hv_date` date DEFAULT NULL,
  `hv_gender` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hv_phone` int(10) DEFAULT NULL,
  `hv_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hv_skype` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hv_address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocvien`
--

INSERT INTO `hocvien` (`hv_id`, `hv_name`, `hv_date`, `hv_gender`, `hv_phone`, `hv_email`, `hv_skype`, `hv_address`, `t_id`) VALUES
(2, 'Bùi Thị Hảo', '1996-08-28', 'Nữ', 942015796, 'haobt966@gmail.com', 'buithiphuong86@live.com', 'Bắc Ninh', 1),
(12, 'Lương Thái Dương', '1997-10-08', 'Nữ', 902280921, 'luongthaiduong0801@gmail.com', 'duongluong@live.com', 'Hải Dương', 2),
(13, 'Tú Tú', '1996-02-09', 'Nam', 1258958954, 'tutu@gmail.com', 'tutu@skype.vn', 'Nam Định', 5),
(55, 'hh', '2018-08-15', 'bb', 0, 'gh', 'hh', 'hh', 1),
(56, '', '0000-00-00', '', 0, '', '', '', 5),
(57, 'Biện Thị Hoa', '1996-02-09', 'Nữ', 978987562, 'bienhoa@gmail.com', 'hoa@skype.vn', 'Thanh Hóa', 5),
(58, '', '0000-00-00', '', 0, '', '', '', 5),
(59, 'd', '1996-02-09', 'b', 0, 'bienhoa@gmail.com', 'b', 'b', 5),
(60, 'f', '1996-08-08', 'f', 0, 'f', 'f', 'f', 5),
(61, 'f', '1996-08-08', 'f', 0, 'f', 'f', 'f', 5),
(69, 'dev', '0000-00-00', '', 0, '', '', '', 9),
(74, 'dev', '0000-00-00', '', 0, '', '', '', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truong`
--

CREATE TABLE `truong` (
  `t_id` int(5) NOT NULL,
  `t_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `truong`
--

INSERT INTO `truong` (`t_id`, `t_name`) VALUES
(1, 'Đại học Xây dựng'),
(2, 'Đại học Hà Nội'),
(5, 'Đại học Quốc Gia Hà Nội'),
(6, 'Đại học Công Nghiệp'),
(9, 'DH ABC');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`hv_id`),
  ADD KEY `f1` (`t_id`);

--
-- Chỉ mục cho bảng `truong`
--
ALTER TABLE `truong`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  MODIFY `hv_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `truong`
--
ALTER TABLE `truong`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD CONSTRAINT `f1` FOREIGN KEY (`t_id`) REFERENCES `truong` (`t_id`) ON UPDATE CASCADE  ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
