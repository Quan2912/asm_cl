<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style >
		.carousel-inner  .item img {
			margin: auto;			
		}
		.images-detail img {
			margin-top: 5%;
			width: 100%;
			align-items: center;
			border-radius: 100%;
			margin-bottom: 30px;
			animation: app-logo-spin infinite 20s linear
		}
		
		.song-group ul li{
			list-style: none;
		}
		.product-group {
			background-color: pink;
		}

	</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<button type="botton" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"> </span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>		
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href=" " ><span class="glyphicon glyphicon-home">Home </span> </a></li>
				<li><a href=""><span class="glyphicon glyphicon-asterisk"> News</span></a></li>
				<li><a href=""> <span class="glyphicon glyphicon-envelope"> Contact</span></a></li>
				<li><a href="http://localhost:8080/Tunesourcewebsite/managesong.php"> <span class="glyphicon glyphicon-music"> Manage Song </span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right"  >
				<li><a href="http://localhost:8080/Tunesourcewebsite/dangnhap.php"> <span class="glyphicon glyphicon-log-in "> Login</span></a></li>
				<li><a href="http://localhost:8080/Tunesourcewebsite/register.php"><span class="glyphicon glyphicon-user"> Register </span></a></li>
			</ul>
			<ul>
				<form style="margin-left: 100px" class="form-inline my-2 my-lg-0" action="search.php" method="GET">
					<input class="form-control mr-sm-2" type="search" placeholder="Search for song" style="width: 400px" name="Search">
					<input type="submit"name="search" value="Search" />
				</form>
			</ul>
		</div>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active">
				</li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>

			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="https://daiphatvienthong.vn/upload/images/003-mua-ban-xe-o-to-bien-hinh-do-choi-sieu-xe-lambogini-gia-re-hcm-2.jpg" width="500px" height="500px">
				</div >
				<div class="item">
					<img src="http://image.xedoisong.vn/w1024/Uploaded/2019/ycivopcg/2017_12_13/supercar/xedoisong_sieu_xe_nhat_ban_1_jusk.jpg " width="500px" height="500px" >
				</div >
				<div class="item">
					<img src="http://anhnendep.net/wp-content/uploads/2015/07/hinh-nen-xe-dep-hd-10.jpg" width="500px" height="500px" >
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>			
	</nav>
	<div class="product-group" >
		<div class="row">            
			<?php
			$connect = mysqli_connect('3.132.234.157','quanvh','123@123a','toy_car');
			$sql = "SELECT * FROM product";
			$result = mysqli_query($connect, $sql);
			while ($row_toy = mysqli_fetch_array($result))
			{
				$product_id=$row_toy['product_id'];
				$product_name=$row_toy['product_name'];
				$product_price=$row_toy['product_price'];
				$product_img=$row_toy['product_img'];
				// $song_audio=$row_song['song_audio'];
				// $song_img=$row_song['song_img'];
				// $genre_id=$row_song['song_id'];
				// $singer_id=$row_song['singer_id'];
				?>

				<div class="col-md-3 col-sm-6 col-12">
					<ul >
						<div class="song-group">
							<div class="card">
								<img class="card-img-top" src="img/<?php echo"$product_img"?>" style = "height: 200px; width: 250px; margin-top: 100px">
								<div class="card-body"></div>
								<h5 style="color: white" class="card-title"><?php echo"$product_id"?></h5>
								<h5 style="color: white" class="card-title"><?php echo"$product_name"?></h5>
								<h5 style="color: white" class="card-title"><?php echo"$product_price"?></h5>
								</div>
								</div>
								</ul>
								</div> 

							<?php
							}
							?>




		</div>

	</div>


				</body>
				</html>