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

    <?php include('../glavnica/header.php'); ?>

        <main role="main" class="container">

            <div class="row">

                <div class="col-sm-8 blog-main">

    <?php
    
    if (isset($_GET['post_id'])) {

    // pripremamo upit
    $sql = "SELECT posts.id, posts.title, posts.body, posts.created_at, users.first_name, users.last_name FROM posts JOIN users ON users.id = posts.user_id  WHERE posts.id = {$_GET['post_id']}";
    $statement2 = $connection->prepare($sql);

    // izvrsavamo upit
    $statement2->execute();

    // zelimo da se rezultat vrati kao asocijativni niz.
    // ukoliko izostavimo ovu liniju, vratice nam se obican, numerisan niz
    $statement2->setFetchMode(PDO::FETCH_ASSOC);

    // punimo promenjivu sa rezultatom upita
    $singlePost = $statement2->fetch();

    // koristite var_dump kada god treba da proverite sadrzaj neke promenjive
        // echo '<pre>';
        // var_dump($singlePost);
        // echo '</pre>';

    ?>

        <div class="blog-post">

            <h2 class="blog-post-title"><?php echo($singlePost['title']) ?></h2>

            <p class="blog-post-meta"><?php echo($singlePost['created_at']) ?>&nbsp<a href="#"><?php echo($singlePost['first_name']) ?></a></p>

            <p><?php echo($singlePost['body']) ?></p>

            <form action='../parcijala/delete-post.php?id="<?php echo $singlePost['id']; ?>"' method="post">
            <input type="hidden" name="id" value="<?php echo $singlePost['id']; ?>">
            <input type="number" hidden name="post_id" value="<?php echo($_GET['post_id']) ?>">
            <br>
            <input type="submit" onclick="myFunction()" class="btn btn-danger" name="submit" value="Delete">
            </form>


        <h5>Ovde mozete uneti vas komentar:</h5>

            <form method="POST" name="myForm" onsubmit="return validateForm()" action="../parcijala/create-comment.php">  

            Autor: <input type="text" name="author">
            <br><br>
            Comment: <textarea name="comment" rows="5" cols="40"></textarea>
            <br><br> 
            <input type="number" hidden name="post_id" value="<?php echo($_GET['post_id']) ?>">
            <input type="submit" name="submit" value="Submit"> 
            <br><br> 

        </form>   
        
            </div>
            
            </div>
     
    <?php
        include ('../parcijala/comments.php');
    ?>

            </div>
            </div>
      
    <?php
        }   else {
            echo('post_id nije prosledjen kroz $_GET');
        }
    ?>

    <?php
        include ('../glavnica/sidebar.php');
    ?>

    </main><!-- /.container -->   

    <?php 

        include('../glavnica/footer.php'); 

    ?>

        <script>
            function validateForm() {
            var x = document.forms["myForm"]["author"].value;
            if (x == "") {
            alert("Author cant be blank");
            return false;
            }

            var x = document.forms["myForm"]["comment"].value;
            if (x == "") {
            alert("Comment section must be filled out");
            return false;
            }
            }
        </script>

        <script>
            function myFunction() {
           

           var answer = confirm("Do you really want to delete this post??")
            if (answer) {
            //some code
            }
            else {
            //some code
            }
            }
        </script>

    </body>
</html>