<?php
$conn = mysqli_connect("localhost", "root", "", "qlhocvien");
mysqli_set_charset($conn, 'UTF8');

if (!$conn) {
    echo "Kết nối không thành công";
}
echo '<br>';
$qr = $conn->query("select hocvien.hv_id, hocvien.hv_name, hocvien.hv_date, hocvien.hv_gender, hocvien.hv_phone, hocvien.hv_email, hocvien.hv_skype, hocvien.hv_address, truong.t_name from hocvien inner join truong WHERE hocvien.t_id = truong.t_id ");
	if (!$conn) {
		echo 'Lỗi truy vấn ';
	}