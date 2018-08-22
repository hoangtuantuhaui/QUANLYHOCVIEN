<?php 
	include "connect.php";
	$hv_id = $_GET['hv_id'];
	$qr = $conn->query("DELETE FROM hocvien WHERE hv_id = '$hv_id'");	
	if ($qr) {
		header("location: hv_list.php");	
	} 