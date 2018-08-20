<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	<h1>Thêm mới học viên</h1>
	<form action="xl-addhocvien.php">
		<table>
			<tr>
				<td>Họ và tên :</td>
				<td><input type="text" name="hv_name"></td>
			</tr>
			<tr>
				<td>Ngày sinh :</td>
				<td><input type="text" name="hv_date"></td>
			</tr>
			<tr>
				<td>Giới tính :</td>
				<td><input type="text" name="hv_gender"></td>
			</tr>
			<tr>
				<td>Số điện thoại :</td>
				<td><input type="text" name="hv_phone"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="hv_email"></td>
			</tr>
			<tr>
				<td>Skype :</td>
				<td><input type="text" name="hv_skype"></td>
			</tr>
			<tr>
				<td>Địa chỉ :</td>
				<td><input type="text" name="hv_address"></td>
			</tr>
			<tr>
				<td><input type="submit" name="add" value="Thêm học viên"></td>
				<td><input type="submit" name="cancel" value="Hủy"></td>
			</tr>
		</table>
	</form>
</body>
</html>