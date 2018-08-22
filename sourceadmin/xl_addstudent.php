<?php 		
	include "connect.php";
  	//lấy thông tin từ các form bằng phương thức POST
  	$st_id = $_POST["st_id"];
	$name = $_POST["st_name"];
	$date = $_POST["st_date"];
	$gender = $_POST["st_gender"];
	$phone = $_POST["st_phone"];
	$email= $_POST["st_email"];
	$skype = $_POST["st_skype"];
	$address = $_POST["st_address"];
	$school = $_POST["school_ID"];
	$query = $conn->query("SELECT school_ID FROM school where school_name = '$school'"); 
	//kiểm tra sự tồn tại của t_id
	$exist= mysqli_fetch_array($query);
	if($exist){
		$id = $exist[0];
	}else{
		$t = $conn->query("INSERT INTO school (school_name) 
			VALUES ('$school')");
		$id = $conn->insert_id;
	}
	// thêm dữ liệu
	$qr = $conn->query("INSERT INTO student(st_id,st_name,st_date,st_gender,st_phone,st_email,st_skype,st_address, school_ID) 
		VALUES ('$st_id','$name','$date','$gender','$phone','$email','$skype','$address', '$id')");	
	if ($qr) {
		header("location: st_list.php");	
	} 