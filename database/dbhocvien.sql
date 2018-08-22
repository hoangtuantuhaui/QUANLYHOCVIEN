-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 22, 2018 lúc 10:26 AM
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
-- Cơ sở dữ liệu: `qlstudent`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `st_id` int(11) NOT NULL,
  `school_ID` int(11) NOT NULL,
  `st_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_date` date DEFAULT NULL,
  `st_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_phone` int(11) DEFAULT NULL,
  `st_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`st_id`, `school_ID`, `st_name`, `st_date`, `st_gender`, `st_phone`, `st_email`, `st_skype`, `st_address`) VALUES
(1, 1, 'Bùi Thị Hao', '1996-08-28', 'Nữ', 942015791, 'haobt966@gmail.com', 'haobui.skype', 'Bắc Ninh'),
(2, 2, 'Bùi Quang Tú', '1989-01-01', 'Nam', 989841944, 'quangtu@gmail.com', 'tu.quang', 'Bắc Ninh'),
(3, 3, 'Lương Thái Dương', '1997-06-06', 'Nữ', 162596254, 'luongthaiduong@gmail.com', 'duong.luong', 'Hải Dương'),
(4, 4, 'tu', '1996-02-09', 'Nữ', 0, 'nhuquynh@gmail.com', 'nhu', 'yen phong'),
(5, 5, 'Hoang Tuan Tu', '1996-02-09', 'Nam', 125965236, 'tuantu@gmail.com', 'tuan.tu', 'Nam Dinh');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `school`
--

CREATE TABLE `school` (
  `school_ID` int(11) NOT NULL,
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `school`
--

INSERT INTO `school` (`school_ID`, `school_name`) VALUES
(1, 'Đại học Xây dựng'),
(2, 'Đại học Hà Nội'),
(3, 'Đại học Quốc Gia Hà Nội'),
(4, 'Đại học KTQD'),
(5, 'đh điện lực'),
(6, 'Đại học Báo Chí'),
(7, 'dev'),
(8, 'Dai hoc Cong Nghiep');
--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `f1` (`school_ID`);

--
-- Chỉ mục cho bảng `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `st_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `school`
--
ALTER TABLE `school`
  MODIFY `school_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `f1` FOREIGN KEY (`school_ID`) REFERENCES `school` (`school_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
