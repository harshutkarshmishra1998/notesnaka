<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

<body class="animsition">
    <div class="page-wrapper">

        <?php include 'includes/header_mobile.php'; ?>

        <?php include 'includes/sidebar.php'; ?>

        <div class="page-container">

            <?php include 'includes/header_desktop.php'; ?>

            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <table class="table table-data2">
                            <thead>
                                <tr>
                                    <th>file</th>
                                    <th>title</th>
                                    <th>subject subject_code</th>
                                    <th>branch sem year college</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $query = "SELECT * FROM video ORDER BY video_id DESC";
                                    $select_user = mysqli_query($connection, $query);
                                    while($row = mysqli_fetch_assoc($select_user))
                                    {
                                        $video_dp = $row['video_dp'];
                                        if(empty($video_dp))
                                        {
                                            $video_dp = "default_CaZ45vTe9b.jpg";
                                        }
                                        $video_data = $row['video_data'];
                                        $video_title = $row['video_title'];
                                        $video_sub = $row['video_sub'];
                                        $video_sub_code = $row['video_sub_code'];
                                        $video_branch = $row['video_branch'];
                                        $video_sem = $row['video_sem'];
                                        $video_college = $row['video_college'];
                                        $video_year = $row['video_year'];
                                        echo "<tr>";
                                        echo "<td><img src='../../db_images/{$video_dp}' class='img-responsive' width='100'></td>";
                                        echo "<td>{$video_title}</td>";
                                        echo "<td>{$video_sub} {$video_sub_code}</td>";
                                        echo "<td>{$video_branch} {$video_sem} {$video_year} {$video_college}</td>";
                                        echo 
                                            "<td>
                                                <form method='post' action='show_video.php?video_id={$row['video_id']}&video_data=$video_data'>
                                                    <div class='table-data-feature'>
                                                        <a type='submit' class='item' data-toggle='tooltip' data-placement='top' title='View' name = 'view' href='$video_data' target='_blank'>
                                                            <i class='zmdi zmdi-eye'></i>
                                                        </a>
                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' href = 'edit_video.php?video_id={$row['video_id']}'>
                                                            <i class='zmdi zmdi-edit'></i>
                                                        </a>
                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='More' href = 'show_video_more.php?video_id={$row['video_id']}'>
                                                            <i class='zmdi zmdi-more'></i>
                                                        </a>
                                                        <button type='submit' class='item' data-toggle='tooltip' data-placement='top' title='Delete' name = 'delete'>
                                                            <i class='zmdi zmdi-delete'></i>
                                                        </button>
                                                        
                                                    </div>
                                                </form>
                                            </td>";
                                    echo "</tr>";
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php include 'includes/footer.php'; ?>

</body>

</html>

<?php
    if(isset($_POST['delete']))
    {
        $file = $_GET['video_data'];
        if(unlink("../../db_files/".$file))
        {
            echo "Done";
            $video_id = $_GET['video_id'];
            $query = "DELETE FROM video WHERE video_id = {$video_id}";
            $delete_query = mysqli_query($connection, $query);
            if(!$delete_query)
            {
                die("QUERY FAILED ".mysqli_error($connection));
            }
            if($delete_query)
            {
                header("Location: show_video.php");
            }
        }
        else
        {
            die("Failed");
        }
    }
?>