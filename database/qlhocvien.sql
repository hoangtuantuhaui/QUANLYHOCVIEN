-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 22, 2018 lúc 04:12 AM
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
  `school_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocvien`
--

INSERT INTO `hocvien` (`hv_id`, `hv_name`, `hv_date`, `hv_gender`, `hv_phone`, `hv_email`, `hv_skype`, `hv_address`, `school_ID`) VALUES
(2, 'Bùi Thị Hao', '1996-08-28', 'Nữ', 942015791, 'haobt966@gmail.com', 'haobui.skype', 'Bắc Ninh', 1),
(80, 'Bùi Quang Tú', '1989-01-01', 'Nam', 989841944, 'quangtu@gmail.com', 'tu.quang', 'Bắc Ninh', 15),
(81, 'Lương Thái Dương', '1997-06-06', 'Nữ', 162596254, 'luongthaiduong@gmail.com', 'duong.luong', 'Hải Dương', 2),
(82, 'tu', '1996-02-09', 'Nữ', 0, 'nhuquynh@gmail.com', 'nhu', 'yen phong', 18),
(83, 'Hoang Tuan Tu', '1996-02-09', 'Nam', 125965236, 'tuantu@gmail.com', 'tuan.tu', 'Nam Dinh', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truong`
--

CREATE TABLE `school` (
  `school_ID` int(5) NOT NULL,
  `school_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `truong`
--

INSERT INTO `school` (`school_ID`, `school_name`) VALUES
(1, 'Đại học Xây dựng'),
(2, 'Đại học Hà Nội'),
(5, 'Đại học Quốc Gia Hà Nội'),
(15, 'Đại học KTQD'),
(16, 'đh điện lực'),
(17, 'Đại học Báo Chí'),
(18, 'dev'),
(19, 'Dai hoc Cong Nghiep');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`hv_id`),
  ADD KEY `f1` (`school_ID`);

--
-- Chỉ mục cho bảng `truong`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  MODIFY `hv_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `truong`
--
ALTER TABLE `truong`
  MODIFY `school_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD CONSTRAINT `f1` FOREIGN KEY (`school_ID`) REFERENCES `truong` (`school_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
CREATE TABLE `subject` (
  `subject_id` int(10) NOT NULL,
  `subject_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `subject_content`) VALUES
(1, 'HCI', 'Human Computer Interaction'),
(2, 'PPL', 'Principle of Programming Language'),
(3, 'IST', 'Information System'),
(4, 'SAD', 'System Analysis and Design');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `tutor_id` int(10) NOT NULL,
  `tutor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tutor_phone` int(50) NOT NULL,
  `tutor_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tutor_skype` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`tutor_id`, `tutor_name`, `tutor_phone`, `tutor_email`, `tutor_skype`) VALUES
(1, 'Hien', 962674348, 'hien@gmail.com', 'hien'),
(2, 'Duong', 902207026, 'duong@gmail.com', 'duong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`tutor_id`);
COMMIT;

CREATE TABLE courses(
    course_ID int AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    course_name varchar(255),
    course_code varchar(255), 
    date_start date, 
    date_end date
);