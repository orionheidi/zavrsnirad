<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
    // ako su mysql username/password i ime baze na vasim racunarima drugaciji
    // obavezno ih ovde zamenite
    $servername = "127.0.0.1";
    $username = "root";
    $password = "vivifz";
    $dbname = "blog";

    try {
        $connection = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
        $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(PDOException $e)
    {
        echo $e->getMessage();
    }
?>

<!doctype html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
   

    <title>Vivify Blog</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="../styles/blog.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../styles/style.css">
</head>

<body>
<h2>Latyest Posts </h2>


<?php     
  if (isset($_POST['post_id'])) {
    $title = $_POST['title'];
    $body = $_POST['body'];
    $authorFN = $_POST['authorFN'];
    $authorLN = $_POST['authorLN'];
    $createdAt = $_POST['created_at'];

    $sqlUser = "INSERT INTO users (first_name,last_name) VALUES ('$authorFN','$authorLN')";

    $connection->exec($sqlUser);

  foreach($users as $user){

    $sql = "INSERT INTO posts (title,body,user_id,created_at) VALUES ('$title','$body','$user['id']','$createdAt')";
  }
    $connection->exec($sql);
  
    header('Location:http://localhost:8000/zavrsnirad/parcijala/posts.php?post_id=' . $postId );
  }

//   foreach($users as $user){
//     $sql;
//     if($user['first_name'] === $authorFN && $user['last_name'] === $authorLN ){
//       $userId = $user['id'];
//       $sql = "INSERT INTO posts (title,body,user_id,created_at) VALUES ('$title','$body','$userId','$createdAt')";

//     }
//     return $sql; 
//   }

?>

</body>
</html>