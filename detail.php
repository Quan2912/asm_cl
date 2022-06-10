<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>Chi tiết bài hát</title>
	<style type="text/css">
		.images-detail img {
	    margin-top: 5%;
	    width: 100%;
	    align-items: center;
	    border-radius: 100%;
	    margin-bottom: 30px;
	    animation: app-logo-spin infinite 20s linear
		}
		@keyframes app-logo-spin {
		    from {
		        transform: rotate(0deg);
		    }
		    to {
		        transform: rotate(360deg);
		    }
		}

	</style>
</head>
<body>
<div class="container">
	<div class="row">
		<?php
		session_start();
		$connect = mysqli_connect('3.132.234.157', 'quan', '123@123a', 'quanvh');
		$id = $_GET["id"];
		$sql = "SELECT * FROM song,singer,genre WHERE song.genre_id = genre.genre_id and song.singer_id = singer.singer_id and song_id = {$id}";
		$result = mysqli_query($connect, $sql);
		while($row= mysqli_fetch_array($result)){
		$id = $row['song_id'];
			?>
			<div class="col-md-6" style="text-align: left;">
				<h2> Name of Music: <?php echo $row['song_name'];?> </h2>
				<p>Price: <?php echo $row['song_price'];?> </p>
				<audio controls controlsList="nodownload" ontimeupdate="myAudio(this)" style="width: 250px;">
					   	<source src="audio/<?php echo $row['song_audio'];?>" type="audio/mpeg">
					   </audio>
					   <script type="text/javascript">
					   	function myAudio(event){
					   		if(event.currentTime>30){
					   			event.currentTime=0;
					   			event.pause();
					   			alert("You have to pay to listen to the whole song");
					   		}
					   	}
					   </script>
					   <h5> singer:<?php echo $row["singer_name"] ;?></h5>
					   <h4> genre:<?php echo $row["genre_name"]; ?></h4>
					    <textarea cols="40" rows="10" disabled><?php echo $row['song_description'];?></textarea>
					  <a href="add.?id=<?php echo $id ;?>">  <button type="submit" name ="buy" class='btn btn-primary'><i class="fas fa-cart-plus"></i> Add to cart</button> </a>
			</div>  
			<div class="images-detail">
			<div class="col-md-6">
				<img src="img/<?php echo $row["song_img"]; ?>" style = "width: 500px;height: 500px;">
			</div> 
		</div>
			<?php
		}

	?>
	</div>
</div>
</body>
</html>