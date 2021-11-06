<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<!-- <link rel="stylesheet" href="includes/show_user_more.css"> -->
<?php
    if(isset($_GET['user_id']))
    {
        $user_id = $_GET['user_id'];
        $query = "SELECT * FROM user_profile WHERE user_id = {$user_id}";
        $select_user = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_user))
        {
            $user_code = $row['user_code'];
            $user_email = $row['user_email'];
            $user_password = $row['user_password'];
            $user_name = $row['user_name'];
            $user_branch = $row['user_branch'];
            $user_sem = $row['user_sem'];
            $user_year = $row['user_year'];
            $user_college = $row['user_college'];
            $user_image = $row['user_image'];
            $user_expire = $row['user_expire'];
            $user_expire_month = $row['user_expire_month'];
            $user_ip = $row['user_ip'];
        }
    }
?>

<body class="animsition">
    <div class="page-wrapper">

        <?php include 'includes/header_mobile.php'; ?>

        <?php include 'includes/sidebar.php'; ?>

        <div class="page-container">

            <?php include 'includes/header_desktop.php'; ?>

            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive table-responsive-data2">
                                    <div class="container emp-profile">
                                        <form method="post">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="profile-img">
                                                        <img src="../../db_images/<?php echo $user_image ?>"
                                                            width="150">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="profile-head">
                                                        <h5>
                                                            <?php echo $user_name ?>
                                                        </h5>
                                                        <br>
                                                        <br>
                                                        <p class="proile-rating">USER CODE :
                                                            <span><?php echo $user_code ?></span>
                                                        </p>
                                                        <br><br>
                                                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                            <li class="nav-item">
                                                                <a class="nav-link active" id="home-tab"
                                                                    data-toggle="tab" href="#home" role="tab"
                                                                    aria-controls="home" aria-selected="true">About</a>
                                                            </li>
                                                            <!-- <li class="nav-item">
                                                                <a class="nav-link" id="profile-tab" data-toggle="tab"
                                                                    href="#profile" role="tab" aria-controls="profile"
                                                                    aria-selected="false">Timeline</a>
                                                            </li> -->
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <a type="submit" class=" btn btn-outline-primary profile-edit-btn"
                                                        href="edit_user.php?user_id=<?php echo $user_id ?>">Edit
                                                        Profile</a>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="tab-content profile-tab" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="home" role="tabpanel"
                                                            aria-labelledby="home-tab">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Name</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_name ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Branch</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_branch ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Semester</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_sem ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Year</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_year ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>College</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_college ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Email</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_email ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Password</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_password ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Expiry</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_expire ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Expiry Month</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_expire_month ?></p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>IP Address</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $user_ip ?></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- <div class="tab-pane fade" id="profile" role="tabpanel"
                                                            aria-labelledby="profile-tab">
                                                            <a class='item' data-toggle='tooltip' data-placement='top'
                                                                href='show_user_data_history.php?user_code=<?php //echo $user_code ?>'>
                                                                <p>HISTORY</p>
                                                            </a>
                                                            <?php 
                                                                // $query = "SELECT * FROM user_data WHERE data_code LIKE '%$user_code%' ORDER BY data_id DESC LIMIT 5";
                                                                // $select_user = mysqli_query($connection, $query);
                                                        
                                                                // while($row = mysqli_fetch_assoc($select_user))
                                                                // {
                                                                //     $file_data = $row['data_history'];
                                                                //     $query_2 = "SELECT * FROM file WHERE file_data LIKE '%$file_data%'";
                                                                //     $select_user_2 = mysqli_query($connection, $query_2);
                                                                //     while($row = mysqli_fetch_assoc($select_user_2))
                                                                //     {
                                                                //         $file_dp = $row["file_dp"];
                                                                //         $file_title = $row["file_title"];
                                                                //         if(empty($file_dp))
                                                                //         {
                                                                //             $file_dp = "default_CaZ45vTe9b.jpg";
                                                                //         }
                                                                //         $file_sub_code = $row["file_sub_code"];
                                                                //         if(empty($file_title))
                                                                //         {
                                                                //             $file_title = "N/A";
                                                                //         }
                                                                //         echo "<div style='display: inline-block;'>
                                                                //         <a href='#'><img  src='../../db_images/{$file_dp}' width='100' style='padding: 5px;'></a>
                                                                //         <figcaption style='text-align: center; font-size:5'>$file_title</figcaption>
                                                                //         </div>";
                                                                //     }
                                                                // }
                                                            ?>
                                                            <hr>
                                                            <a class='item' data-toggle='tooltip' data-placement='top'
                                                                href='show_user_data_fav.php?user_code=<?php //echo $user_code ?>'>
                                                                <p>FAVOURITE</p>
                                                            </a>
                                                            <?php 
                                                                // $query = "SELECT * FROM user_data WHERE data_code LIKE '%$user_code%' ORDER BY data_id DESC LIMIT 5";
                                                                // $select_user = mysqli_query($connection, $query);
                                                        
                                                                // while($row = mysqli_fetch_assoc($select_user))
                                                                // {
                                                                //     $file_data = $row['data_history'];
                                                                //     $data_fav = $row['data_fav'];
                                                                //     $query_2 = "SELECT * FROM file WHERE file_data LIKE '%$file_data%'";
                                                                //     $select_user_2 = mysqli_query($connection, $query_2);
                                                                //     while($row = mysqli_fetch_assoc($select_user_2))
                                                                //     {
                                                                //         $file_dp = $row["file_dp"];
                                                                //         $file_title = $row["file_title"];
                                                                //         if(empty($file_dp))
                                                                //         {
                                                                //             $file_dp = "default_CaZ45vTe9b.jpg";
                                                                //         }
                                                                //         $file_sub_code = $row["file_sub_code"];
                                                                //         if(empty($file_title))
                                                                //         {
                                                                //             $file_title = "N/A";
                                                                //         }
                                                                //         if($data_fav == 1)
                                                                //         {
                                                                //             echo "<div style='display: inline-block;'>
                                                                //             <a href='#'><img  src='../../db_images/{$file_dp}' width='100' style='padding: 5px;'></a>
                                                                //             <figcaption style='text-align: center;'>$file_title</figcaption>
                                                                //             </div>";
                                                                //         }
                                                                //     }
                                                                // }
                                                            ?>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php include 'includes/footer.php'; ?>

</body>

</html>

<style>
.col-md-6 label {
    font-weight: bold;
}

#profile p {
    font-weight: bold;
}
</style>