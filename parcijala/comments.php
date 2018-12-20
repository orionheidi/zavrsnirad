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

    <div class="comments">
        <h3>Comments</h3>
            <button id ='menu-button'>Hidde Comments</button>

        <!-- zameniti testne komentare sa pravim komentarima koji pripadaju blog post-u iz baze -->
        <?php

        $sqlComments =
            "SELECT * FROM comments WHERE comments.post_id = {$_GET['post_id']}";

        $statement = $connection->prepare($sqlComments);

        // izvrsavamo upit
        $statement->execute();

        // zelimo da se rezultat vrati kao asocijativni niz.
        // ukoliko izostavimo ovu liniju, vratice nam se obican, numerisan niz
        $statement->setFetchMode(PDO::FETCH_ASSOC);

        // punimo promenjivu sa rezultatom upita
        $comments = $statement->fetchAll();

        // koristite var_dump kada god treba da proverite sadrzaj neke promenjive
            // echo '<pre>';
            // var_dump($comments );
            // echo '</pre>';

        foreach ($comments as $comment) {

        ?>
            <div id ="single-comment">
                <ul id='menu'>
                    <br>
                    <li>posted by: <strong><?php echo $comment['author'] ?> </strong></li>
                    <li> <?php echo $comment['text'] ?> </li>
                        
                    <form action='../parcijala/delete-comment.php?id="<?php echo $comment['id']; ?>"' method="post">
                    <input type="hidden" name="id" value="<?php echo $comment['id']; ?>">
                    <input type="number" hidden name="post_id" value="<?php echo($_GET['post_id']) ?>">
                    <br>
                    <input type="submit" class="btn btn-danger" name="submit" value="Delete">
                    </form>
                <hr>
                <ul>
            </div>

        <?php 
            } 
        ?>

            <script>
                 
                var button = document.querySelector('#menu-button');
                var menu = document.querySelector('#single-comment');
                button.addEventListener('click', function (event) {
             
                if (menu.style.display == "") {
                    menu.style.display = "none";
                    button.innerHTML = "Show Menu";
                } else {
                    menu.style.display = "";
                button.innerHTML = "Hide Menu";
                }
                    }
                        );
            
            </script>               
</body>
</html>