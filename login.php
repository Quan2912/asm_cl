<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style type="text/css">
		body{
			margin: auto;
			background-color: rgb(214, 248, 248);
			background-image: url(https://img4.thuthuatphanmem.vn/uploads/2020/12/26/hinh-anh-am-nhac-trang-tri_050506865.jpg);
			background-size:  cover;
			
		}
		.login{
			background-color: yellow;
			width: 410px;
			padding: 25px;
			border-radius: 8px;
			margin: auto;
			transform: translateY(125%);
		}
		
	</style>
</head>
<body>
	<form method ="POST">
		<div class="login">
			<table >
				<p> Don't have account?<a href = http://localhost:8080/Tunesourcewebsite/register.php> Register </a></p>
				<tr>
					<td> Username  </td>
					<td> <input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password </td>
					<td> <input type="password" name="password"></td>
				</tr>
				<tr>
					<td></td>
					<td> <input type="submit" name="login" value="login"></td>
				</tr>
			</table>
			<?php
			$connect = mysqli_connect('3.132.234.157','quan','123@123a','quanvh');
			if($connect){
				echo "";
			}
			else{
				echo"Kết nối thất bại";
			}
			if(isset($_POST['login'])){
				echo"";
				$username= $_POST['username'];
				$password= $_POST['password'];
				$sql="SELECT * FROM users WHERE username='$username' AND password='$password'";
				$result = mysqli_query($connect,$sql);
				$row = mysqli_num_rows($result);

				if($row>0){
					echo "<script> alert('đăng nhập thành công')</script>";
					echo"<script> window.open('demohomepage.php','_self') </script>";
				}
				else{
					echo "<script> alert('đăng nhập thất bại')</script>";
				}
			}	
			?>

		</div>
	</form>
</body>