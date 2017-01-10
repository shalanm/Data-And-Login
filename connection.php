
<!DOCTYPE html>
<html>
<head>
	<title>Data And Login</title>
	<link rel="stylesheet" type="text/css" href="asset/css/style1.css">
	<link href='http://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet' type='text/css'>
</head>
<body>

	<div class="header">
		<h3>Data And Login</h3>
	</div>
    <div class="Details">
    <a href="Details.php">Details About Project</a>
    </div>

    <h1>Please Login Here</h1>
    <a href="login.php">Login Here</a>
</body>
</html>

<?php
  include('get_data.php');
  echo '
  <div class ="sh">
    <form action="#" method = "POST">
     <table border ="0" bgcolor = "orange">
      <tr>
       <td>user :</td>
       <td><input type="text" name ="user_name" /></td>
       <td><input type="submit" name ="show" value ="Show Data" /></td>
      </tr>
     </table>
    </form>
    </div>
             ';
    //===================================

    $delete =$_POST['delete'];
    $id = $_POST['id'];
    if(isset($delete) && $id){
     foreach($id as $one_after_one){
     $query_delete = mysql_query("delete from users where id = '$one_after_one'");

     }
     if($query_delete){
       echo '<font family ="comforta" > ."deleting is ok".</font>';
     }

      //echo "Thanks for success";
      //print_r($id);
    }


    $show =$_POST['show'];
    $user_name = $_POST['user_name'];
    if ($show && $user_name){
    //echo "Thanks for clicking me" ;

    $query ="
    select * from users where username = '$user_name' order by id

    ";
    $result = mysql_query($query)
    or die(mysql_error());
    $rows = mysql_num_rows($result);
    if ($rows>0){
      //work
     // echo 'Welcome ' .'( ' . $user_name .')' ;
     echo '
      <form action="#" method ="POST">
      <table border ="0" bordercolor ="red">
      <th bgcolor ="grey" >ID</th>
      <th bgcolor ="grey" >Username</th>
      <th bgcolor ="grey" >Password</th>
      <th bgcolor ="grey" >Email</th>
      <th bgcolor ="grey" >Date-Time</th>
      <th bgcolor ="grey" >Delete</th>

     ';
     while ($data = mysql_fetch_array($result)) {
     echo "
     <tr>
     <td bgcolor ='yellow'>$data[0] </td>
     <td bgcolor ='yellow'>$data[1] </td>
     <td bgcolor ='yellow'>$data[2] </td>
     <td bgcolor ='yellow'>$data[3] </td>
     <td bgcolor ='yellow'>$data[4] </td>
     <td bgcolor ='yellow'>
     <input type='checkbox' name ='id[]' value =$data[0] />
      </td>
     ";
     }
     echo '
      <tr>
      <td colspan ="6" align ="right">
        <input type="submit" value ="Delete" name ="delete" />
      </td>
      </tr>
      </table>
      </form>
     ';
    }

    else{
      echo 'sorry , there is no user with this name';
    }
    }
     mysql_close($connection);
?>