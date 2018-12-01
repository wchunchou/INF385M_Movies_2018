<?php
    include_once("header.html");
    include("db_connection.php");
    $sql="SELECT * FROM Movie JOIN Genre ON Movie.genre_id = Genre.genre_id ORDER BY Movie.year_released DESC LIMIT 10";
    $result = mysqli_query($link, $sql);
    $img_path = "images/";
   
 ?>

 <div class="container mt-xlg movielist">
     <div class="row">
        <div class="col-md-8">
<?php 
 if (mysqli_num_rows($result) > 0) {
    // output data of each movie
    while($row = mysqli_fetch_assoc($result)) {
        $sql_tag = "SELECT MovieTags.tag_name, MovieTags.tag_id FROM MovieTagJunction JOIN Movie ON Movie.movie_id = MovieTagJunction.movie_id
        JOIN MovieTags ON MovieTags.tag_id = MovieTagJunction.tag_id WHERE Movie.movie_id='".$row["movie_id"]."'";

        $result_tags = mysqli_query($link, $sql_tag);
        $posterimg = $img_path.$row["image"];
?>
            <div class="card">
                <div class="row no-gutters">
                    <div class="col-auto">
                        <a href="#"><img src=" <?php print $img_path.$row["image"]; ?>" class="img-fluid" alt="" width="200px"></a>
                    </div>
                    <div class="col">
                        <div class="card-block p-2">
                            <h4 class="card-title"><a href="#"><?php print $row["movie_name"];?></a></h4>
                            <p class="card-text"><?php print $row["year_released"]." | ".$row["run_time"]." mins | ".$row["genre"];?></p>
                            <p class="card-text"><?php print $row["story_line"];?></p>
                            
                        </div>
                    </div>
                </div>
                <div class="card-footer w-100 text-muted">
                    <ul class="home-tag p-0">
                <?php 
                    // output data of each tags of this movie
                    if (mysqli_num_rows($result_tags) > 0) {
                        while($row_tags = mysqli_fetch_assoc($result_tags)){
                            print '<li><a href="#">#'.$row_tags["tag_name"].'</a></li>';
                        }
                    }else{
                        print "No tags";
                    }
                ?>
                    </ul>
                </div>
            </div>
<?php
    }
} else {
    print "0 results";
}
// pull all the tags from database
$sql_all_tags = "SELECT MovieTags.tag_name, MovieTags.tag_id ,COUNT(MovieTags.tag_id) AS MOST_FREQUENT FROM MovieTagJunction 
JOIN Movie ON Movie.movie_id = MovieTagJunction.movie_id
JOIN MovieTags ON MovieTags.tag_id = MovieTagJunction.tag_id
GROUP BY MovieTags.tag_id
ORDER BY COUNT(MovieTags.tag_id) DESC
LIMIT 10" ;

$result_all_tags = mysqli_query($link, $sql_all_tags);

?>
        </div>
        <div class="col-md-4">
            <h4>Popular Tags</h4>
            <ul>
            <?php
                if (mysqli_num_rows($result_all_tags) > 0) {
                    while($row_all_tags = mysqli_fetch_assoc($result_all_tags)){
                        print '<li><a href="#">'.$row_all_tags[tag_name]."(".$row_all_tags[MOST_FREQUENT].")</a></li>";
                    }
                }else{
                    print "<p>No Result</p>";
                }
            ?>
            </ul>
        </div>
    </div>
</div>
<?php
    mysqli_free_result($result);

    mysqli_close($link);
    include_once("footer.html");
?>