<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

<body class="overlay-scrollbar">

    <?php include 'includes/navbar.php'; ?>

    <?php include 'includes/sidebar.php'; ?>

    <!-- main content -->
    <div class="wrapper">
        <div class="row">
            <div class="col-3 col-m-6 col-sm-6">
                <a href="card.php?user_code=<?php echo $user_code ?>&file_type=file">
                    <div class="counter bg-primary">
                        <p>
                            <i class="fas fa-book"></i>
                        </p>
                        <h3>Notes</h3>
                        <p>Prime</p>
                    </div>
                </a>
            </div>
            <div class="col-3 col-m-6 col-sm-6">
                <a href="card.php?user_code=<?php echo $user_code ?>&file_type=qp">
                    <div class="counter bg-warning">
                        <p>
                            <i class="fas fa-paperclip"></i>
                        </p>
                        <h3>Question Papers</h3>
                        <p>Prime</p>
                    </div>
                </a>
            </div>
            <div class="col-3 col-m-6 col-sm-6">
                <a href="card.php?user_code=<?php echo $user_code ?>&file_type=video">
                    <div class="counter bg-success">
                        <p>
                            <i class="fas fa-play"></i>
                        </p>
                        <h3>E-Books</h3>
                        <p>Prime</p>
                    </div>
                </a>
            </div>
            <div class="col-3 col-m-6 col-sm-6">
                <a href="card.php?user_code=<?php echo $user_code ?>&file_type=blog">
                    <div class="counter bg-danger">
                        <p>
                            <i class="fas fa-square"></i>
                        </p>
                        <h3>Blogs</h3>
                        <p>All</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-m-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Subjects</h3>
                        <!-- <i class="fas fa-ellipsis-h"></i> -->
                    </div>
                    <div class="card-content">
                        <table>
                            <thead>
                                <tr>
                                    <th>Subject Name</th>
                                    <th>Subject Code</th>
                                    <th>View</th>
                            </thead>
                            <tbody>
                                <?php 
                                if($user_sem == "1/2")
                                {
                                    $query = "SELECT * FROM sub WHERE sub_sem LIKE '%$user_sem%'";
                                }
                                else
                                {
                                    $query = "SELECT * FROM sub WHERE sub_sem LIKE '%$user_sem%' AND sub_branch LIKE '%$user_branch%'";
                                }
                                $select_user = mysqli_query($connection, $query);
                        
                                // $count = 0;
                                while($row = mysqli_fetch_assoc($select_user))
                                {
                                    $sub_title = $row['sub_title'];
                                    $sub_code = $row['sub_code'];
                                    $sub_college = $row['sub_college'];
                                    echo "
                                            <tr>
                                            <td>$sub_title</td>
                                            <td>$sub_code</td>
                                            <td><a href='sub_card.php?user_code=$user_code&sub_code=$sub_code'>View More</a></td>
                                            </tr>";
                                }
                            ?>
                        </table>
                    </div>
                </div>
            </div>


            <!-- <div class="col-12 col-m-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Recently Viewed</h3>
                        <a href="history.php?user_code=<?php echo $user_code ?>"><i class="fas fa-ellipsis-h"></i></a>
                    </div>
                    <div class="card-content">
                        <table>
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Subject (Subject Code)</th>
                                    <th>Type</th>
                                    <th>View</th>
                                    <th>Read More</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                // $query = "SELECT * FROM user_data WHERE data_code LIKE '%$user_code%' ORDER BY data_id DESC";
                                // $select_user = mysqli_query($connection, $query);

                                // $count = 0;
                                // while($row = mysqli_fetch_assoc($select_user))
                                // {
                                //     $data_id = $row['data_id'];
                                //     $file_data = $row['data_history'];
                                //     $file_type = $row['data_type'];
                                //     if($file_type == "Notes")
                                //     {
                                //         $file_type = "file";
                                //     }
                                //     if($file_type == "QP")
                                //     {
                                //         $file_type = "qp";
                                //     }
                                //     if($file_type == "Video")
                                //     {
                                //         $file_type = "video";
                                //     }
                                //     if($file_type == "Blog")
                                //     {
                                //         $file_type = "blog";
                                //     }
                                //     $file_fav = $row['data_fav'];
                                //     if($file_fav == 1)
                                //     {
                                //         continue;
                                //     }
                                //     $count++;
                                //     $file_type_2 = $file_type.'_data';
                                //     $query_2 = "SELECT * FROM $file_type WHERE $file_type_2 LIKE '%$file_data%'";
                                //     $select_user_2 = mysqli_query($connection, $query_2);
                                //     while($row = mysqli_fetch_assoc($select_user_2))
                                //     {
                                //         $file_title = $row[$file_type."_title"];
                                //         $file_sub = $row[$file_type."_sub"];
                                //         $file_sub_code = $row[$file_type."_sub_code"];
                                //         if($file_type == "file")
                                //         {
                                //             $file_type_1 = "Notes";
                                //         }
                                //         if($file_type == "qp")
                                //         {
                                //             $file_type_1 = "QP";
                                //         }
                                //         if($file_type == "video")
                                //         {
                                //             $file_type_1 = "Video";
                                //         }
                                //         if($file_type == "blog")
                                //         {
                                //             $file_type_1 = "Blog";
                                //         }
                                //         echo "
                                //                 <tr>
                                //                     <td>$file_title</td>
                                //                     <td>$file_sub ($file_sub_code)</td>
                                //                     <td>$file_type_1</td>
                                //             ";
                                //             echo "<td><a href='open_file.php?user_code=$user_code&file_data=$file_data&file_type=$file_type'>View</a></td>";
                                //             echo "<td><a href='detail.php?user_code=$user_code&file_data=$file_data&file_type=$file_type'>Read More</a></td>";
                                //             echo "<td><a href='remove_fav.php?user_code=$user_code&data_id=$data_id'>Remove</a></td>";
                                //         echo "</tr>";
                                //     }
                                //     if($count == 5)
                                //     {
                                //         break;
                                //     }
                                // }
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> -->

            <div class="col-12 col-m-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Your Favourites</h3>
                        <a href="favourite.php?user_code=<?php echo $user_code ?>"><i class="fas fa-ellipsis-h"></i>
                            <i class="fas fa-ellipsis-h"></i></a>
                    </div>
                    <div class="card-content">
                        <table>
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Subject (Subject Code)</th>
                                    <th>Type</th>
                                    <th>View</th>
                                    <th>Read More</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $query = "SELECT * FROM user_data WHERE data_code LIKE '%$user_code%' ORDER BY data_id DESC";
                                $select_user = mysqli_query($connection, $query);

                                $count = 0;
                                while($row = mysqli_fetch_assoc($select_user))
                                {
                                    $data_id = $row['data_id'];
                                    $file_data = $row['data_history'];
                                    $file_type = $row['data_type'];
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
                                    $file_fav = $row['data_fav'];
                                    if($file_fav == 0)
                                    {
                                        continue;
                                    }
                                    $count++;
                                    $file_type_2 = $file_type.'_data';
                                    $query_2 = "SELECT * FROM $file_type WHERE $file_type_2 LIKE '%$file_data%'";
                                    $select_user_2 = mysqli_query($connection, $query_2);
                                    while($row = mysqli_fetch_assoc($select_user_2))
                                    {
                                        $file_title = $row[$file_type."_title"];
                                        $file_sub = $row[$file_type."_sub"];
                                        $file_sub_code = $row[$file_type."_sub_code"];
                                        if($file_type == "file")
                                        {
                                            $file_type_1 = "Notes";
                                        }
                                        if($file_type == "qp")
                                        {
                                            $file_type_1 = "QP";
                                        }
                                        if($file_type == "video")
                                        {
                                            $file_type_1 = "E-Books";
                                        }
                                        if($file_type == "blog")
                                        {
                                            $file_type_1 = "Blog";
                                        }
                                        echo "
                                                <tr>
                                                    <td>$file_title</td>
                                                    <td>$file_sub ($file_sub_code)</td>
                                                    <td>$file_type_1</td>
                                            ";
                                            echo "<td><a href='open_file.php?user_code=$user_code&file_data=$file_data&file_type=$file_type' target='_blank'>View</a></td>";
                                            echo "<td><a href='detail.php?user_code=$user_code&file_data=$file_data&file_type=$file_type'>Read More</a></td>";
                                            echo "<td><a href='remove_fav.php?user_code=$user_code&data_id=$data_id'>Remove</a></td>";
                                        echo "</tr>";
                                    }
                                    if($count == 5)
                                    {
                                        break;
                                    }
                                }
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>



        </div>
    </div>
    <!-- end main content -->
    <!-- import script -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <script src="includes/index.js"></script>
    <!-- end import script -->

</body>

</html>