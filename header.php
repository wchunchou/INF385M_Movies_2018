<?php 
    // Initialize the session
    if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
    //chech if user already login , if not, hide Log out
    
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
            
                <li class="nav-item text-light <?php if(!isset($_SESSION['user_name'])){ print "hidden";?>" >Hi!<?php }else{ print $_SESSION['user_name'];} ?>
                </li>
                <li class="nav-item">
                <a class="nav-link text-light <?php if(!isset($_SESSION['user_name'])){ print "hidden";} ?>" href="logout.php">Log out</a>
                </li>
            <li class="nav-item">
                <a class="nav-link text-light <?php if(isset($_SESSION['user_name'])){ print "hidden";?>" href="login.php">Log in</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light <?php if(isset($_SESSION['user_name'])){ print "hidden";?>" href="signup.php">Sign up</a>
            </li>
        </ul>

    </div>
    <!-- <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form> -->
</nav>

<body>