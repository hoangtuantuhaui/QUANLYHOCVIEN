<?php 
	include "connect.php";
	$st_id = $_GET['st_id'];
	$qr = $conn->query("DELETE FROM student WHERE st_id = '$st_id'");	
	if ($qr) {
		header("location: st_list.php");	
	} 