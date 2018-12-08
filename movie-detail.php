<?php
    include_once("header.html");
    include("db_connection.php");
    $id=$_GET["id"];
    $movie_sql= "SELECT Movie.movie_name, Movie.imdb_id, Movie.year_released, Movie.run_time, Movie.image, Movie.story_line, Genre.genre, Directors.director_name, Awards.award_name FROM Movie JOIN Genre ON Movie.genre_id= Genre.genre_id JOIN Directors ON Movie.director_id= Directors. director_id  JOIN Awards ON Movie.award_id= Awards.award_id Where Movie.movie_id= 6";
    $actor_sql ="Select Actors.actor_name from Actors Join MovieActorJunction On Actors.actor_id= MovieActorJunction.actor_id Join Movie On MovieActorJunction.movie_id= Movie.movie_id Where Movie.movie_id=6";
    $tag_sql="Select MovieTags.tag_name from MovieTags Join MovieTagJunction On MovieTags.tag_id= MovieTagJunction.tag_id Join Movie On MovieTagJunction.movie_id= Movie.movie_id Where Movie.movie_id=6";
    $results = mysqli_query($link, $movie_sql);
    while ($rows = mysqli_fetch_array($results)) {    
        print "$rows[table_column here]"; 
    };

    while ($rows = mysqli_fetch_array($results)) {    
        print "$rows[table_column here]"; 
    };



    mysqli_close($link);
    include_once("footer.html");
?>