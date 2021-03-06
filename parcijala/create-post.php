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
  
    <h5>Create post:</h5>

      <form method="POST" name="myForm" onsubmit="return validateForm()" action="../parcijala/create.php">  

        Title: <input type="text" name="title" id='tn'>
        <br><br>
        Body: <textarea name="body" rows="5" cols="100"></textarea>
        <br><br> 
        Author Id: <input type="text" name="author_id">
        <br><br> 
        Created at:  <input type="date" name="created_at">
        <br><br>
        <input type="number" hidden name="post_id" value="<?php echo($_GET['post_id']) ?>">
        
        <input type="submit" name="submit" class="btn btn-default" value="Submit">
   
        <br><br>
        
    </div><!-- /.blog-main -->
    
        </div><!-- /.row -->

            </main><!-- /.container -->

    </form>

    <?php 
        include('../glavnica/footer.php'); 
    ?>    

    <script>
        function validateForm() {

        var t = document.forms["myForm"]["title"].value;
        if (t == "") {
            alert("Title section must be fill out. Please fill out all fields!");
        return false;
        }

        var z = document.forms["myForm"]["body"].value;
        if (z == "") {
        alert("Body section must be fill out. Please fill out all fields!");
        return false;
        }
    
        var x = document.forms["myForm"]["author"].value;
        if (x == "") {
        alert("Author cant be blank. Please fill out all fields!");
        return false;
        }

        var c = document.forms["myForm"]["created_at"].value;
        if (c == "") {
        alert("You must choose the date. Please fill out all fields! ");
        return false;
        }
          }

      </script>

</body>
</html>