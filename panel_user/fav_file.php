<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

<?php
    $file_type = $_GET['file_type'];
    if($file_type == "file")
    {
        $file_type = "Notes";
    }
    if($file_type == "qp")
    {
        $file_type = "QP";
    }
    if($file_type == "video")
    {
        $file_type = "Video";
    }
    if($file_type == "blog")
    {
        $file_type = "Blog";
    }
    $user_code = $_GET['user_code'];
    $file_data = $_GET['file_data'];
    $data_fav = 1;
    $query = "INSERT INTO user_data (data_code, data_history, data_type, data_fav)";
    $query .= "VALUES('{$user_code}', '{$file_data}', '{$file_type}', '{$data_fav}')";
    $create_post_query  = mysqli_query($connection, $query);

    if(!$create_post_query)
    {
        die("QUERY FAILED ".mysqli_error($connection));
    }
    if($create_post_query)
    {
        if($file_type == "Video")
        {
            // header("Location: $file_data");
            header("Location: detail.php?user_code=$user_code&file_data=$file_data&file_type=$file_type");
        }
        else
        {
            echo "Opened";
            if($file_type == "Notes")
            {
                $file_type = "file";
            }
            if($file_type == "QP")
            {
                $file_type = "qp";
            }
            if($file_type == "Video")
            {
                $file_type = "video";
            }
            if($file_type == "Blog")
            {
                $file_type = "blog";
            }
            header("Location: detail.php?user_code=$user_code&file_data=$file_data&file_type=$file_type");
        }
    }
?>