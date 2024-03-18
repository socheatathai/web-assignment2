when u config connection to database pls make sure :
your server 
your name 
your password 
your database name match with your phpmyadmin 

example :
create a file call name conection.php in folder config
<?php
$server = "localhost";
$username = "root";
$password = "";
$dbname = "web1";
$conn = new mysqli($server, $username, $password, $dbname);

?>
