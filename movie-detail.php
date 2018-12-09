<?php
    include_once("header.php");
    include("db_connection.php");
    $id= $_GET["id"];
    $moviedetail= "SELECT Movie.movie_name, Movie.imdb_id, Movie.year_released, Movie.run_time, Movie.image, Movie.story_line, Genre.genre, Directors.director_name, Awards.award_name FROM Movie JOIN Genre ON Movie.genre_id= Genre.genre_id JOIN Directors ON Movie.director_id= Directors. director_id  JOIN Awards ON Movie.award_id= Awards.award_id Where Movie.movie_id=".$id;
    $actor= "SELECT Actors.actor_name from Actors Join MovieActorJunction On Actors.actor_id= MovieActorJunction.actor_id Join Movie On MovieActorJunction.movie_id= Movie.movie_id Where Movie.movie_id=".$id;
    $tag= "SELECT MovieTags.tag_name, MovieTags.tag_id from MovieTags Join MovieTagJunction On MovieTags.tag_id= MovieTagJunction.tag_id Join Movie On MovieTagJunction.movie_id= Movie.movie_id Where Movie.movie_id=".$id;
    $results = mysqli_query($link, $moviedetail);

    while ($rows = mysqli_fetch_array($results)) {
?>

<div class="container mt-3">
    <div class="card">
        <div class="row no-gutters">
            <div class="col-auto">
                <img src=" <?php print $img_path.$rows["image"]; ?>" class="img-fluid" alt="" width="200px">
            </div>
            <div class="col">
                <div class="card-block p-2">
                    <h4 class="card-title"><?php print $rows["movie_name"];?></h4>
                    <p class="card-text"><?php print $rows["year_released"]." | ".$rows["run_time"]." mins | ".$rows["genre"];?></p>
                    <p class="card-text"><?php print $rows["story_line"];?></p>
                </div>
            </div>
        </div>
    </div>
    <h3>Actors</h3>
    <ul>
    <?php 
        };
        $solution= mysqli_query($link, $actor);
        while ($columns = mysqli_fetch_array($solution)) {
            print "<li>$columns[actor_name]</li>";
        };?>
    </ul>
    <h3>Tags</h3>
    <ul>
    <?php 
        $length= mysqli_query($link, $tag);
        while ($answer = mysqli_fetch_array($length)) {
            print '<li><a href="tag.php?id='.$answer[tag_id].'">#'.$answer[tag_name].'</a></li>';
        }; ?>
    </ul>

</div>


<?php

    mysqli_close($link);
    include_once("footer.php");
?>
