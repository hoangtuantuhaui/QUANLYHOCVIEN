<?php 
	$dbc=mysqli_connect('localhost','root','','qlhv');
	if (!$dbc) {
			echo 'Ket noi khong thanh cong';		
	}
	else {
		mysqli_set_charset($dbc,'utf8');
	}
 ?>