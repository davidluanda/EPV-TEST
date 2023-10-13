<?php
	$conn = mysqli_connect("localhost", "root", "", "EPVATE");
	
	if(!$conn){
		die("Error: Failed to connect to database");
	}
?>