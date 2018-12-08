<?php
    include_once("header.php");
    include("db_connection.php");
    $id= $_GET["id"];
    //print $id;
    $current_tag = "SELECT tag_name FROM  MovieTags WHERE tag_id=".$id;
    $tags = "SELECT * FROM MovieTagJunction JOIN MovieTags ON MovieTags.tag_id=MovieTagJunction.tag_id JOIN Movie ON MovieTagJunction.movie_id=Movie.movie_id WHERE MovieTags.tag_id=".$id; 
    $results = mysqli_query($link, $tags);
    $result_current_tag = mysqli_query($link, $current_tag);
    
?>

    <div class="container mt-xlg movielist">
        <div class="row">
            <div class="col-md-8">
            <h2>Tag: <?php while ($rows = mysqli_fetch_array($result_current_tag)) {
                print $rows["tag_name"];
            } ?></h2>
            <?php
                while ($rows = mysqli_fetch_array($results)) {     
            ?>
                <div class="card">
                    <div class="row no-gutters">
                        <div class="col-auto">
                            <a href="movie-detail.php?id=<?php print $rows["movie_id"]?>"><img src=" <?php print $img_path.$rows["image"]; ?>" class="img-fluid" alt="" width="200px"></a>
                        </div>
                        <div class="col">
                            <div class="card-block p-2">
                                <h4 class="card-title"><a href="movie-detail.php?id=<?php print $rows["movie_id"]?>"><?php print $rows["movie_name"];?></a></h4>
                                <p class="card-text"><?php print $rows["year_released"]." | ".$rows["run_time"]." mins | ".$rows["genre"];?></p>
                                <p class="card-text"><?php print $rows["story_line"];?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <?php }; ?>
            </div>
        </div>
    </div>  
<?php
    mysqli_close($link);
    include_once("footer.php");
?>

