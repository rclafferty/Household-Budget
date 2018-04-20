<?php
	error_reporting(E_ERROR | E_PARSE | E_NOTICE);
	include_once 'dbconnect.php';

	$email = $_GET['email'];
	$email = strip_tags($email);
	
	$user = $_GET['user'];
	$user = strip_tags($user);

	$passcode = "aXF3cP94e";

	$query = 'INSERT INTO Users (username, passcode, email, firstName, surname) VALUES (\''. $user . '\', \''. sha1($passcode) . '\', \''. $email . '\', \'New\', \'User\')';
	$result = mysqli_query($dbconnection, $query);

	// $valid = false;

	// if ($result->num_rows > 0)
	// {
	// 	echo 'Signup complete';
	// }
	// else
	// {
	// 	echo 'Signup failed';
	// }

	echo passthru('python sendemail.py ' . $email . ' ' . $user . ' ' . $passcode);
	echo $email;
	echo $user;
	echo $passcode;
?>