<?php
    include_once("header.php");
    include("db_connection.php");
    $id= $_GET["id"];
    $moviedetail= "SELECT Movie.movie_name, Movie.imdb_id, Movie.year_released, Movie.run_time, Movie.image, Movie.story_line, Genre.genre, Directors.director_name, Awards.award_name FROM Movie JOIN Genre ON Movie.genre_id= Genre.genre_id JOIN Directors ON Movie.director_id= Directors. director_id  JOIN Awards ON Movie.award_id= Awards.award_id Where Movie.movie_id=".$id;
    $actor= "Select Actors.actor_name from Actors Join MovieActorJunction On Actors.actor_id= MovieActorJunction.actor_id Join Movie On MovieActorJunction.movie_id= Movie.movie_id Where Movie.movie_id=".$id;
    $tag= "Select MovieTags.tag_name from MovieTags Join MovieTagJunction On MovieTags.tag_id= MovieTagJunction.tag_id Join Movie On MovieTagJunction.movie_id= Movie.movie_id Where Movie.movie_id=".$id;
    $results = mysqli_query($link, $moviedetail);

    while ($rows = mysqli_fetch_array($results)) {
    print "$rows[movie_name]<br/>";
	print "$rows[imdb_id]<br/>";
	print "$rows[year_released]<br/>";
	print "$rows[run_time]<br/>";
	print "$rows[image]<br/>";
	print "$rows[story_line]<br/>"; 
    };
 	$solution= mysqli_query($link, $actor);
	while ($columns = mysqli_fetch_array($solution)) {
	print "$columns[actor_name]<br/>";
};
	$length= mysqli_query($link, $tag);
	while ($answer = mysqli_fetch_array($length)) {
	print "$answer[tag_name]<br/>";
};
    mysqli_close($link);
    include_once("footer.php");
?>
<div class="container">
    <div class="card">
        <div class="row no-gutters">
            <div class="col-auto">
                <a href="movie-detail.php?id=16"><img src=" images/captainmarvel.jpg" class="img-fluid hoverZoomLink" alt="" width="200px"></a>
            </div>
            <div class="col">
                <div class="card-block p-2">
                    <h4 class="card-title"><a href="movie-detail.php?id=16">Captain Marvel</a></h4>
                    <p class="card-text">2019 | 132 mins | Super Hero</p>
                    <p class="card-text">Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.</p>
                    <ul class="home-tag p-0">
                        <li><a href="tag.php?id=2">#Marvel Cinematic Universe</a></li>
                        <li><a href="tag.php?id=4">#Heroine</a></li>
                        <li><a href="tag.php?id=5">#Marvel Comics</a></li>
                    </ul>
                    
                </div>
            </div>
        </div>
        <div class="card-footer w-100 text-muted">
            
        </div>
    </div>
</div>