<?php 
    // Initialize the session
    // Initialize the session
    session_start();
     
    // Check if the user is logged in, if not then redirect him to login page
    if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
        header("location: login.php");
        exit;
    }
?>

<html>

<head>
    <title>Movie</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="stylesheet.css">
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-success sticky-top ">

    <div class="container">
        <a class="navbar-brand" href="index.php">Movies</a>
        <ul class="nav justify-content-end ">
            <li class="nav-item">
                 <h1>Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our site.</h1>
            </li>
            <li class="nav-item">
            <a class="nav-link text-light" href="logout.php">Log out</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light" href="login.php">Log in</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light" href="register.php">Sign up</a>
            </li>

        </ul>

    </div>
    <!-- <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form> -->
</nav>

<body>