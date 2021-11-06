<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

<?php
    $user_code = $_GET['user_code'];
    $file_data = $_GET['file_data'];
    $file_type = $_GET['file_type'];
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
?>

<?php
    $file_type_2 = $file_type.'_data';
    $query = "SELECT * FROM $file_type WHERE $file_type_2 LIKE '%$file_data%'";
    $select_user = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_user))
    {
        $file_dp = $row[$file_type.'_dp'];
        if(empty($file_dp))
        {
            $file_dp = "default_CaZ45vTe9b.jpg";
        }
        $file_data = $row[$file_type.'_data'];
        $file_title = $row[$file_type.'_title'];
        $file_sub = $row[$file_type.'_sub'];
        $file_sub_code = $row[$file_type.'_sub_code'];
        $file_branch = $row[$file_type.'_branch'];
        $file_sem = $row[$file_type.'_sem'];
        $file_year = $row[$file_type.'_year'];
        $file_college = $row[$file_type.'_college'];
        $file_info_1 = $row[$file_type.'_info_1'];
        $file_info_2 = $row[$file_type.'_info_2'];
        $file_contri_name = $row[$file_type.'_contri_name'];
        $file_contri_college = $row[$file_type.'_contri_college'];
    }
?>

<body class="overlay-scrollbar">

    <?php include 'includes/navbar.php'; ?>

    <?php include 'includes/sidebar.php'; ?>

    <!-- main content -->
    <div class="wrapper">
        <div class="row">
            <div class="row">
                <div class="col-4 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header"></div>
                        <div class="card-content">
                            <img src="../db_images/<?php echo $file_dp ?>" class="img-responsive" width="200">
                        </div>
                        <div class="card-header">
                            <a
                                href="open_file.php?user_code=<?php echo $user_code ?>&file_data=<?php echo $file_data ?>&file_type=<?php echo $file_type ?>" target="_blank">
                                <button type="submit" name="submit" class="btn btn-primary">
                                    View File
                                </button>
                            </a>
                            <a
                                href="fav_file.php?user_code=<?php echo $user_code ?>&file_data=<?php echo $file_data ?>&file_type=<?php echo $file_type ?>">
                                <button type="submit" name="submit" class="btn btn-primary">
                                    Add to favourites
                                </button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-8 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Basic Info</h3>
                            <!-- <i class="fas fa-ellipsis-h"></i> -->
                        </div>
                        <div class="card-content">
                            <table>
                                <tbody>
                                    <tr>
                                        <th>Title</th>
                                        <td><?php echo $file_title ?></td>
                                        <th>Branch</th>
                                        <td><?php echo $file_branch ?></td>
                                    </tr>
                                    <tr>
                                        <th>Subject</th>
                                        <td><?php echo $file_sub ?></td>
                                        <th>Semester</th>
                                        <td><?php echo $file_sem ?></td>
                                    </tr>
                                    <tr>
                                        <th>Subject Code</th>
                                        <td><?php echo $file_sub_code ?></td>
                                        <th>Year</th>
                                        <td><?php echo $file_year ?></td>
                                    </tr>
                                    <tr>
                                        

                                        <!--<th>College</th>-->
                                        <!--<td><?php echo $file_college ?></td>-->
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-4 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Contributor</h3>
                            <!-- <i class="fas fa-ellipsis-h"></i> -->
                        </div>
                        <div class="card-content">
                            <table>
                                <tbody>
                                <tbody>
                                    <tr>
                                        <th>Name</th>
                                        <td><?php echo $file_contri_name ?></td>
                                    </tr>
                                    <tr>
                                        <th>College</th>
                                        <td><?php echo $file_contri_college ?></td>
                                    </tr>
                                </tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-8 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Summary</h3>
                            <!-- <i class="fas fa-ellipsis-h"></i> -->
                        </div>
                        <div class="card-content">
                            <p><?php echo $file_info_1 ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Detail</h3>
                            <!-- <i class="fas fa-ellipsis-h"></i> -->
                        </div>
                        <div class="card-content">
                            <p><?php echo $file_info_2 ?></p>
                        </div>
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