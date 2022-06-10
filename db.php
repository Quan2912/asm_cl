<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<?php
	$server = "sql200.epizy.com";
	$username = "epiz_31551581";
	$password = "6qo1oXSeR8CQtj";
	$dbname = "epiz_31551581_SDLC";

	$con = mysqli_connect($server, $username, $password, $dbname);

	if(!$conn){
		die("Connection Failed : ".mysqli_connect_error());
	}

} 

?>
</body>
</html>