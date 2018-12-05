<?php

$host = "localhost";
$username = "wc9727";
$password = "12345678";
$database = "movies";

/* Attempt to connect to MySQL database */
$link = mysqli_connect($host, $username, $password, $database);

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


//other config
$img_path = "images/";
?>