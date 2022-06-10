<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylsheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">

    <title></title>
</head>
<body>

    <table border="1 solid black">
        <tr> 
            <th>Song Id: </th>
            <th>Song Name: </th>
            <th>Price: </th>
            <th>Images: </th>
            <th>Genre: </th>
            <th>Singer: </th>
            <th>Action: </th>
        </tr>


        <?php 
        $connect = mysqli_connect('localhost','root','','mydb');
        $sql = "SELECT * FROM song,singer,genre WHERE song.genre_id=genre.genre_id and song.singer_id=singer.singer_id ";
        $result = mysqli_query($connect, $sql);
        while($row= mysqli_fetch_array($result)){
            $song_id = $row['song_id'];
            $song_name = $row['song_name'];
            //$song_desciption = $row['song_description']
          //$song_price = $row['song_price'];
          // $song_audio = $row['song_audio']
            $song_img = $row['song_img'];
            $song_price = $row['song_price'];
            $genre_name = $row['genre_name'];
            $singer_name = $row['singer_name'];

            ?>
            <tr>
                <td> <?php echo $song_id ?></td>

                <td> <?php echo $song_name ?></td>
                <td> <?php echo $song_price ?></td>
                <td> <img src="img/<?php echo $song_img ?>" style ="width: 160px; height: 160px;"></td>
                <td> <?php echo $genre_name ?></td>
                <td> <?php echo $singer_name ?></td>
                <td> <a href='detail.php ?id=<?php echo $song_id; ?>' class='btn btn-primary'>Details</a></td>
            </tr>
            <?php
        }
        ?>      
    </table>
</body>
</html>