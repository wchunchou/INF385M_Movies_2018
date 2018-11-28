<?php
$host = "localhost";
$username = "wc9727";
$password = "12345678";
$database = "movies";
$link = mysqli_connect($host, $username, $password, $database);

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>