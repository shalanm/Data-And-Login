<?php
if($_POST['username'] && $_POST['password'])  {

echo "your name is   " . $_POST['username'] ;
}
?>

<html>
  <head></head>
  <link rel="stylesheet" href="asset/css/style1.css" type ="text/css" />
  <link href='http://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet' type='text/css'>
  <title>Login </title>
<body>
   <div class="header">
    <a href = "connection.php">Your App Home</a>
  </div>


  <form action="login.php" method = "POST">
  <input type="text" name ="username" placeholder ="username" />
  <input type="password" name = "password" placeholder ="password" />
  <input type="submit" />



  </form>






</body>
</html>