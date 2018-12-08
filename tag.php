<?php
    include_once("header.php");
    include("db_connection.php");
$id= $_GET["id"];
//print $id;
$tags = "SELECT Movie.movie_name FROM MovieTagJunction JOIN MovieTags ON MovieTags.tag_id=MovieTagJunction.tag_id JOIN Movie ON MovieTagJunction.movie_id=Movie.movie_id WHERE MovieTags.tag_id=".$id; 


    $results = mysqli_query($link, $tags);
    

    while ($rows = mysqli_fetch_array($results)) {    
        print "$rows[movie_name] <br/>"; 
    };





    mysqli_close($link);
    include_once("footer.php");
?>
