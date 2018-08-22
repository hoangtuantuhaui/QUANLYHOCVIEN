<?php
$conn = mysqli_connect("localhost", "root", "", "qlhv");
mysqli_set_charset($conn, 'UTF8');

if (!$conn) {
    echo "Kết nối không thành công";
}
echo 'ok';
echo '<br>';
$qr = $conn->query("select student.st_id, student.st_name, student.st_date, student.st_gender, student.st_phone, student.st_email, student.st_skype, student.st_address, school.school_name from student inner join school WHERE student.school_ID = school.school_ID ");
	if (!$conn) {
		echo 'Lỗi truy vấn ';
	}
echo 'ok';