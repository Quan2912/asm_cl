<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style type="text/css">
		body{
			margin: auto;
			background-color: rgb(200, 250, 250);
			background-image: url(https://img4.thuthuatphanmem.vn/uploads/2020/12/26/hinh-anh-am-nhac-trang-tri_050506865.jpg);
			background-size:  cover;
			
		}
		.register{
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
	<form method="POST">
		<div class="register" >
			<fieldset >
				<table>
					<p> Already have account<a href="http://localhost:8080/Tunesourcewebsite/dangnhap.php"> Login now </a></p>
					<tr>
						<td>user_id: </td>
						<td><input type="text" name="userid"></td>
					</tr>
					<tr>
						<td>username: </td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td> password: </td>
						<td><input type="text" name="password"></td>
					</tr>
					<tr>
						<td> fullname: </td>
						<td><input type="text" name="fullname"></td>
					</tr>
					<tr>
						<td> </td>
						<td><input type="submit" name="register" value="register"></td>	
					</tr>
					
				</table>
			</fieldset>
		</div>
		<?php 
		$connect =mysqli_connect('3.132.234.157','quan','123@123a','quanvh');
		if(!$connect){
			echo "kết nối that bai";
		}

   ////nêus click vào register thì mwois thực hiện
		if(isset($_POST['register'])){
			$user_id = $_POST['userid'];
			$username= $_POST['username'];
			$password= $_POST['password'];
			$fullname=$_POST['fullname'];
			$sql ="INSERT INTO users VALUES('$user_id','$username','$password','$fullname')";
			$result= mysqli_Query($connect,$sql);
			if($result){
				echo "<br>";
				echo "<script> alert('thêm mới thành công')</script>";
				echo"<script> window.open('dangnhap.php','_self') </script>";
			}
			else{
				echo "<script> alert('thêm mới thất bại')</script>";
			}
		}
		?>
		
	</form>
</body>
