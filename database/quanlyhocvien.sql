-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 22, 2018 lúc 10:01 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlyhocvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `courses_code` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `courses_code`, `date_start`, `date_end`) VALUES
(1, 'Human Computer Interaction', 'HCI', '2018-09-15', '2018-12-20'),
(2, 'Artificial Intelligent', 'AI', '2018-09-15', '2018-12-20'),
(3, 'System Analysis Design', 'SAD', '2018-09-15', '2018-12-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `school`
--

CREATE TABLE `school`(
  `school_id` int(11) NOT NULL,
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `school`
--

INSERT INTO `school` (`school_id`, `school_name`) VALUES
(1, 'Đại học Xây dựng'),
(2, 'Đại học Hà Nội'),
(3, 'Đại học Quốc Gia Hà Nội'),
(4, 'Đại học KTQD'),
(5, 'đh điện lực'),
(6, 'Đại học Báo Chí'),
(7, 'dev'),
(8, 'Dai hoc Cong Nghiep');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `st_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
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

INSERT INTO `student` (`st_id`, `school_id`, `st_name`, `st_date`, `st_gender`, `st_phone`, `st_email`, `st_skype`, `st_address`) VALUES
(1, 1, 'Bùi Thị Hao', '1996-08-28', 'Nữ', 942015791, 'haobt966@gmail.com', 'haobui.skype', 'Bắc Ninh'),
(2, 2, 'Bùi Quang Tú', '1989-01-01', 'Nam', 989841944, 'quangtu@gmail.com', 'tu.quang', 'Bắc Ninh'),
(3, 3, 'Lương Thái Dương', '1997-06-06', 'Nữ', 162596254, 'luongthaiduong@gmail.com', 'duong.luong', 'Hải Dương'),
(4, 4, 'tu', '1996-02-09', 'Nữ', 0, 'nhuquynh@gmail.com', 'nhu', 'yen phong'),
(5, 5, 'Hoang Tuan Tu', '1996-02-09', 'Nam', 125965236, 'tuantu@gmail.com', 'tuan.tu', 'Nam Dinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `subject_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_content` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`subject_id`, `course_id`, `tutor_id`, `subject_name`, `subject_content`) VALUES
(1, 1, 1, 'HCI', 'Human Computer Interaction'),
(2, 2, 2, 'PPL', 'Principle of Programming Language'),
(3, 3, 3, 'IST', 'Information System'),
(4, 3, 3, 'SAD', 'System Analysis and Design');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tutor`
--

CREATE TABLE `tutor` (
  `tutor_id` int(11) NOT NULL,
  `tutor_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tutor_phone` int(11) NOT NULL,
  `tutor_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tutor_skype` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tutor`
--

INSERT INTO `tutor` (`tutor_id`, `tutor_name`, `tutor_phone`, `tutor_email`, `tutor_skype`) VALUES
(1, 'Hien', 962674348, 'hien@gmail.com', 'hien'),
(2, 'Duong', 902207026, 'duong@gmail.com', 'duong'),
(3, 'Tu', 962674348, 'tu@gmail.com', 'tu'),
(4, 'Hao', 962674348, 'hao@gmail.com', 'hao'),
(5, 'Cuong', 962674348, 'cuong@gmail.com', 'cuong');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);
--
-- Chỉ mục cho bảng `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`);
--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `F1` (`school_id`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `F2` (`tutor_id`),
  ADD KEY `F3` (`course_id`);

--
-- Chỉ mục cho bảng `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`tutor_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tutor`
--
ALTER TABLE `tutor`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `F1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`);
--
-- Các ràng buộc cho bảng `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `F2` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`),
  ADD CONSTRAINT `F3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
