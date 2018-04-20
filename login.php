<?php
	error_reporting(E_ERROR | E_PARSE | E_NOTICE);
	include_once 'dbconnect.php';

	$passcode = $_GET['passcode'];
	$passcode = strip_tags($passcode);
	
	$user = $_GET['user'];
	$user = strip_tags($user)
	
	$found = false;

	$query = 'SELECT username, passcode, firstName, surname, email, age FROM Users WHERE username = \'' . $user . '\'';
	$result = mysqli_query($dbconnection, $query);
	if ($result->num_rows > 0)
	{
		$row = $result->fetch_assoc();
		if ($user == $row['username'] && $passcode == $row['passcode'])
		{
			$found = true;
		}

		if (!$found)
		{
			echo 'Invalid credentials';
		}
		else
		{
			$dataArray = array('user' => $row['username'], 'firstName' => $row['firstName'], 'surname' => $row['surname'], 'email' => $row['email'], 'age' => $row['age']);
			
			echo json_encode($dataArray);
		}
	}
	else
	{
		echo "<br><br>no results";
	}

	mysqli_close($dbconnection);
?>