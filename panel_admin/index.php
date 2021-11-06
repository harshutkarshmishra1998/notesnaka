<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

<?php
    $blog = 0;
    $query = "SELECT * FROM blog";
    $select_user = mysqli_query($connection, $query);
    // while($row = mysqli_fetch_assoc($select_user))
    // {
    //     $blog = $blog + 1;
    // }
    $blog = mysqli_num_rows($select_user);

    $contri = 0;
    $query = "SELECT * FROM contribute";
    $select_user = mysqli_query($connection, $query);
    // while($row = mysqli_fetch_assoc($select_user))
    // {
    //     $contri = $contri + 1;
    // }
    $contri = mysqli_num_rows($select_user);

    $file = 0;
    $query = "SELECT * FROM file";
    $select_user = mysqli_query($connection, $query);
    // while($row = mysqli_fetch_assoc($select_user))
    // {
    //     $file = $file + 1;
    // }
    $file = mysqli_num_rows($select_user);

    $qp = 0;
    $query = "SELECT * FROM qp";
    $select_user = mysqli_query($connection, $query);
    // while($row = mysqli_fetch_assoc($select_user))
    // {
    //     $qp = $qp + 1;
    // }
    $qp = mysqli_num_rows($select_user);

    $sub = 0;
    $query = "SELECT * FROM sub";
    $select_user = mysqli_query($connection, $query);
    // while($row = mysqli_fetch_assoc($select_user))
    // {
    //     $sub = $sub + 1;
    // }
    $sub = mysqli_num_rows($select_user);

    $user = 0;
    $query = "SELECT * FROM user_profile";
    $select_user = mysqli_query($connection, $query);
    // while($row = mysqli_fetch_assoc($select_user))
    // {
    //     $user = $user + 1;
    // }
    $user = mysqli_num_rows($select_user);

    $video = 0;
    $query = "SELECT * FROM video";
    $select_user = mysqli_query($connection, $query);
    // while($row = mysqli_fetch_assoc($select_user))
    // {
    //     $video = $video + 1;
    // }
    $video = mysqli_num_rows($select_user);

    $views = 0;
    $guest_views = 0;
    $user_views = 0;
    $query = "SELECT * FROM user_data";
    $select_user = mysqli_query($connection, $query);
    while($row = mysqli_fetch_assoc($select_user))
    {
        $views = $views + 1;
        if(substr($row['data_code'], 31) == "user")
        {
            $user_views = $user_views + 1;
        }
        else
        {
            $guest_views = $guest_views + 1;
        }
    }
?>

<?php include 'graph.php'; ?>


<body class="animsition">
    <div class="page-wrapper">

        <?php include 'includes/header_mobile.php'; ?>

        <?php include 'includes/sidebar.php'; ?>

        <!-- PAGE CONTAINER-->
        <div class="page-container">

            <?php include 'includes/header_desktop.php'; ?>

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="col-lg-12" style= "text-align: center;">
                            <a href="../db_files/"><button class="btn btn-primary">Clean DB Files</button></a>
                            <a href="../db_images/"><button class="btn btn-primary">Clean and Compress DB Images</button></a>
                        </div>
                        <!-- <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                </div>
                            </div>
                        </div> -->
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <br>
                                            <div class="text">
                                                <h2><?php echo $file;?></h2>
                                                <span>NOTES</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <br>
                                            <div class="text">
                                                <h2><?php echo $qp;?></h2>
                                                <span>QUESTION PAPERS</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <br>
                                            <div class="text">
                                                <h2><?php echo $video;?></h2>
                                                <span>VIDEOS</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <br>
                                            <div class="text">
                                                <h2><?php echo $blog; ?></h2>
                                                <span>BLOGS</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c6">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fas fa-book"></i>
                                            </div>
                                            <br>
                                            <div class="text">
                                                <h2><?php echo $sub; ?></h2>
                                                <span>SUBJECTS</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c5">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fas fa-user"></i>
                                            </div>
                                            <br>
                                            <div class="text">
                                                <h2><?php echo $user; ?></h2>
                                                <span>USERS</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c7">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fas fa-eye"></i>
                                            </div>
                                            <br>
                                            <div class="text">
                                                <h2><?php echo $views; ?></h2>
                                                <span>VIEWS</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c8">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i> <i class="fas fa-user"
                                                    style="font-size: 1em;"></i>
                                            </div>
                                            <br>
                                            <div class="text">
                                                <h2><?php echo $contri; ?></h2>
                                                <span>CONTRIBUTES</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="au-card recent-report">
                                <div class="au-card-inner">
                                    <div class="recent-report__chart">
                                        <div id="chartContainer_1"
                                            style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-lg-12">
                                <div class="au-card chart-percent-card">
                                    <div class="au-card-inner">
                                        <div class="recent-report__chart">
                                            <div id="chartContainer_2"
                                                style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>

    <?php include 'includes/footer.php'; ?>
    <script src="js/canvasjs.min.js"></script>

</body>

</html>
<!-- end document-->