<?php include '../includes/db.php'; ?>

<?php 
    function compress($source, $destination, $quality) 
    {
        $info = getimagesize($source);

        if ($info['mime'] == 'image/jpeg') 
            $image = imagecreatefromjpeg($source);

        elseif ($info['mime'] == 'image/gif') 
            $image = imagecreatefromgif($source);

        elseif ($info['mime'] == 'image/png') 
            $image = imagecreatefrompng($source);

        imagejpeg($image, $destination, $quality);

        return $destination;
    }
?>


<?php 
// Create a directory Iterator 
$directory = new DirectoryIterator(dirname(__FILE__)); 

// Loop runs while directory is valid 
while ($directory->valid()) { 

    // Check the file is not directory 
    if (!$directory->isDir()) { 

        // Display the filename
        $file = $directory->getFilename(); 
        echo $file . "<br>"; 
        $count = 0;
        if($file == "index.php" || $file == "default_CaZ45vTe9b.jpg" || $file == "default_DVcG2eAw3E.jpg")
        {
            $count++;
        }
        $query = "SELECT * FROM blog WHERE blog_data LIKE '%$file%'";
        $select_query = mysqli_query($connection, $query);
        $count += mysqli_num_rows($select_query);

        $query = "SELECT * FROM contribute WHERE con_data LIKE '%$file%'";
        $select_query = mysqli_query($connection, $query);
        $count += mysqli_num_rows($select_query);

        $query = "SELECT * FROM file WHERE file_data LIKE '%$file%'";
        $select_query = mysqli_query($connection, $query);
        $count += mysqli_num_rows($select_query);

        $query = "SELECT * FROM qp WHERE qp_data LIKE '%$file%'";
        $select_query = mysqli_query($connection, $query);
        $count += mysqli_num_rows($select_query);

        $query = "SELECT * FROM user_profile WHERE user_image LIKE '%$file%'";
        $select_query = mysqli_query($connection, $query);
        $count += mysqli_num_rows($select_query);

        echo $count."<br>";

        if($count == 0)
        {
            //unlink($file);
        }

        if($count != 0 && $file != "index.php" && $file != "default_CaZ45vTe9b.jpg" && $file != "default_DVcG2eAw3E.jpg")
        { 
            $source_img = $file;
            $destination_img = $file;
            $d = compress($source_img, $destination_img, 10);
        }
    } 

    // Move to the next element 
    $directory->next();
} 
?>