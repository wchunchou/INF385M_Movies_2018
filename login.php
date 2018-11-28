<?php
    include_once("header.html");
    include("db_connection.php");
    $results = mysqli_query($link, "SQL SYNTAX HERE");
    $rows = mysqli_fetch_array($results);
    while ($row = mysqli_fetch_array($result)) {    
        print "$row[table_column here]"; 
    };



    mysqli_close($link);
    include_once("footer.html");
?>