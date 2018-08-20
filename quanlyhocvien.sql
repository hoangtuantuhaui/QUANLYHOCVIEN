CREATE TABLE `truong`
(
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
CREATE TABLE `khoadaotao`
(
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `id_nguoihuongdan` INT NOT NULL,
    `id_truong` INT NOT NULL,
	`name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `makhdt` varchar(255) NOT NULL,
    `ngaybatdau` datetime,
    `ngayketthuc` datetime,
    CONSTRAINT F1 FOREIGN KEY(id_truong) REFERENCES truong(id),
    CONSTRAINT F2 FOREIGN KEY(id_nguoihuongdan) REFERENCES nguoihuongdan(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
CREATE TABLE `monhoc`
(
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `id_khoadaotao` INT NOT NULL,
	`name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `content` varchar(255) NOT NULL,
    CONSTRAINT F3 FOREIGN KEY(id_khoadaotao) REFERENCES khoadaotao(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
CREATE TABLE `nguoihuongdan`
(
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `phone` INT NOT NULL,
    `email` varchar(255) NOT NULL,
    `skype` varchar(255) NOT NULL,
    `makhdt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;