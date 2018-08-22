<?php 		
	include "connect.php";
  	//lấy thông tin từ các form bằng phương thức POST
  	$hv_id = $_POST["hv_id"];
	$name = $_POST["hv_name"];
	$date = $_POST["hv_date"];
	$gender = $_POST["hv_gender"];
	$phone = $_POST["hv_phone"];
	$email= $_POST["hv_email"];
	$skype = $_POST["hv_skype"];
	$address = $_POST["hv_address"];
	$school = $_POST["t_id"];
	$query = $conn->query("SELECT t_id FROM truong where t_name = '$school'"); 
	//kiểm tra sự tồn tại của t_id
	$exist= mysqli_fetch_array($query);
	if($exist){
		$id = $exist[0];
	}else{
		$t = $conn->query("INSERT INTO truong (t_name) 
			VALUES ('$school')");
		$id = $conn->insert_id;
	}
	// thêm dữ liệu
	$qr = $conn->query("UPDATE hocvien SET hv_name = '$name', hv_date = '$date',hv_gender = '$gender',hv_phone = '$phone',hv_email = '$email',hv_skype = '$skype',hv_address = '$address', t_id = '$id' WHERE hv_id = '$hv_id'");	
	var_dump($qr);

	if ($qr) {
		header("location: hv_list.php");	
	} 