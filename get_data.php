<?php
//echo '<body bgcolor ="#eee" text ="blue"> ' ;
  $connection = @mysql_connect("localhost" , "root" , "" )
  or die('connection error' . mysql_error());
  if ($connection) {
   // echo 'connection success';
   //connecting to database
   $db = mysql_select_db('posts')
   or die('connecting to db failed'.mysql_error());
   if (isset($db)){
     //echo 'connecting to db is ok' ;
   }

  }




?>