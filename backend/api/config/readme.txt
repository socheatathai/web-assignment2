when u config connection to database pls make sure :
your server 
your name 
your password 
your database name match with your phpmyadmin 

example :
<?php
$server = "localhost:3303";
$username = "root";
$password = "";
$dbname = "p1";
$conn = new mysqli($server, $username, $password, $dbname);

?>