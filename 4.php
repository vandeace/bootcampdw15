<?php 

$koneksi = mysqli_connect("localhost","root","","blog");

$resTitle = mysqli_query($koneksi, "SELECT title FROM posts_tb");
$resName = mysqli_query($koneksi, "SELECT name FROM user_tb");
$resContent = mysqli_query($koneksi, "SELECT content FROM posts_tb");
$resComment = mysqli_query($koneksi, "SELECT comment FROM comments_tb");

$title = mysqli_fetch_assoc($resTitle);
$name = mysqli_fetch_assoc($resName);
$content = mysqli_fetch_assoc($resContent);
$comment = mysqli_fetch_assoc($resComment);


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ujian</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
         <a class="navbar-brand" href="#"> DUMBSOCMED </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
        <a class="nav-item nav-link" href="form-tambah.php"> Tambah Data </a>
        </div>
    </div>
    </nav>
    <div>
        <h1><?php echo $title["title"]; ?></h1><br>
        <h3><?php echo $name["name"]; ?></h3><br>
        <p><?php echo $content["content"]; ?></p><br>
        Comment :<?php echo $comment["comment"]; ?>
    </div>
</body>
</html>