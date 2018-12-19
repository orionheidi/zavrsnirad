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
<h5>Kreirajte post:</h5>

<form method="POST" name="myForm" onsubmit="return validateForm()" action="../parcijala/create.php">  


Autor: <input type="text" name="author">
<!-- <span class="error" style = "color: #FF0000"> *required field <?php echo $authorError;?></span> -->
<br><br>
Comment: <textarea name="comment" rows="5" cols="40"></textarea>
<!-- <span class="error" style = "color: #FF0000"> *required field <?php echo $textError;?></span>  -->
<br><br> 
<input type="number" hidden name="post_id" value="<?php echo($_GET['post_id']) ?>">
<input type="submit" name="submit" value="Submit"> 
<br><br> 

</form>

</body>
</html>