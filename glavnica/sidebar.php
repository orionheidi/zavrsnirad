<?php
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

<aside class="col-sm-3 ml-sm-auto blog-sidebar">

    <div class="sidebar-module sidebar-module-inset">

                <h4>Latest Post</h4>
    </div>

    <?php
        // pripremamo upit
        $sql1 = "SELECT * FROM posts order by created_at DESC LIMIT 5";
        $statement = $connection->prepare($sql1);

        // izvrsavamo upit
        $statement->execute();

        // zelimo da se rezultat vrati kao asocijativni niz.
        // ukoliko izostavimo ovu liniju, vratice nam se obican, numerisan niz
        $statement->setFetchMode(PDO::FETCH_ASSOC);

        // punimo promenjivu sa rezultatom upita
        $posts = $statement->fetchAll();

        // koristite var_dump kada god treba da proverite sadrzaj neke promenjive
            // echo '<pre>';
            // var_dump($posts);
            // echo '</pre>';

    ?>

    <?php
        foreach ($posts as $post) {
    ?>

    <div class="blog-post2">

        <h2 class="blog-post-title"><a href="../parcijala/single-post.php?post_id=<?php echo($post['id']) ?>"><?php echo($post['title']) ?></a></h2>
            
    </div><!-- /.blog-post2 -->

    <?php
        }
    ?>      
    
    </aside><!-- /.blog-sidebar -->
        
    </body>
</html>