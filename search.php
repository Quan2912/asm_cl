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
        <li><a href="" ><span class="glyphicon glyphicon-home">Home </span> </a></li>
        <li><a href=""><span class="glyphicon glyphicon-asterisk"> News</span></a></li>
        <li><a href=""> <span class="glyphicon glyphicon-envelope"> Contact</span></a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="http://localhost:8080/Tunesourcewebsite/dangnhap.php"> <span class="glyphicon glyphicon-log-in "> Login</span></a></li>
        <li><a href="http://localhost:8080/Tunesourcewebsite/register.php"><span class="glyphicon glyphicon-user"> Register </span></a></li>
      </ul>
      <ul>
        <form class="form-inline my-2 my-lg-0" action="search.php" method="GET">
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
          <img src="https://i.ytimg.com/vi/d9PBfAMLK3Y/hqdefault.jpg" width="500px" height="500px" alt="Los Angeles" alt="Los Angeles">
        </div >
        <div class="item">
          <img src="https://musiccity.edu.vn/wp-content/uploads/2020/03/nhu-ngay-hom-qua-son-tung.jpg " width="500px" height="500px" alt="Chicago" alt="Chicago">
        </div >
        <div class="item">
          <img src="https://truongnhac.edu.vn/wp-content/uploads/2017/04/noi-nay-co-anh-son-tung-mtp.jpg" width="500px" height="500px" alt="Sydney" alt="Sydney">
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

  <?php
              $connect=mysqli_connect('3.132.234.157','quan','123@123a','quanvh');
              if (!$connect)
              {
                echo (" Not connect");
              }
              $search = "";
              if( !empty($_GET['Search']))
              {
                $search = $_GET['Search'];
              }
              ?>
              <h3 class="title"> Search Result for: <?= $search ?></h3>
              <div class="container" style="margin-top: 20px;">
                <div class="row">
                  <?php
                  if( !empty($search))
                  {
                    $sql="SELECT * FROM song,singer,genre WHERE song.song_name LIKE'%{$search}%' AND song.singer_id=singer.singer_id AND song.genre_id=genre.genre_id";
                    $rs=mysqli_query($connect,$sql);
                    while($row = mysqli_fetch_assoc($rs))
                    {
                      ?>
                      <div class="card" style="background-color: white;margin-top:20px;margin-left: 35px;overflow: auto; width: 500px; border: 2px solid #F8ABAB; border-radius: 1px;border-bottom: 6px solid #FCA5A5;text-align: center;">
                        <a href="detail.php?id=<?php echo $row['song_id']?>" style="text-decoration: none;text-align: center;"> 
                          <div style="height: 80px;">
                            <h2><?php echo $row['song_name'] ?></h2>
                          </div>

                          <div><img src="img/<?php echo $row['song_img']?>" style="width: 400px;height: 300px;padding: 7px;">
                            <p style="color: red"><?php echo $row['song_price'] ."$"; ?></p>
                            <h4 style="color: #3BA33D"><?php echo $row['singer_name']?></h4>
                            <h3>Genre: <?php echo $row['genre_name'] ?></h3>
                          </a>
                        </div>
                        <?php
                      }
                    }
                    ?>
</body>
</html>