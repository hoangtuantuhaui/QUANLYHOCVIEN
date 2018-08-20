 <?php
$conn = mysqli_connect("localhost", "root", "", "qlhocvien");
mysqli_set_charset($conn, 'UTF8');

if (!$conn) {
    echo "Kết nối không thành công";
}
echo '<br>';
$qr = $conn->query("select * from hocvien");

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	<h1 style="padding-left: 390px;">Danh sách học viên</h1>
	<table border=1>
		<tr>
			<th>STT</th>
			<th>Họ và tên</th>
			<th>Ngày sinh</th>
			<th>Giới tính</th>
			<th>Số điện thoại</th>
			<th>Email</th>
			<th>Skype</th>
			<th>Địa chỉ</th>
			<th>Action</th>
		</tr>
		<?php 
			$i =1;
			while ($rs=mysqli_fetch_array($qr)) {
			    echo '<tr>';
			    echo '<td>'.$i.'</td>';
			    echo '<td>'.$rs["hv_name"].'</td>';
			    echo '<td>'.$rs["hv_date"].'</td>';
			    echo '<td>'.$rs["hv_gender"].'</td>';
			    echo '<td>'.$rs["hv_phone"].'</td>';
			    echo '<td>'.$rs["hv_email"].'</td>';
			    echo '<td>'.$rs["hv_skype"].'</td>';
			    echo '<td>'.$rs["hv_address"].'</td>';
			    echo '<td><a href="addhocvien.php"> Thêm </a> | <a href=""> Sửa </a> | <a href=""> Xóa </a></td>';
			    echo '</tr>';
			    $i++;
			}
		 ?> 
	</table>
</body>
</html>