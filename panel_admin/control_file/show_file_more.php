<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<!-- <link rel="stylesheet" href="includes/show_file_more.css"> -->
<?php
    if(isset($_GET['file_id']))
    {
        $file_id = $_GET['file_id'];
        $query = "SELECT * FROM file WHERE file_id = {$file_id}";
        $select_user = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_user))
        {
            $file_dp = $row['file_dp'];
            if(empty($file_dp))
            {
                $file_dp = "default_CaZ45vTe9b.jpg";
            }
            $file_data = $row['file_data'];
            $file_title = $row['file_title'];
            $file_sub = $row['file_sub'];
            $file_sub_code = $row['file_sub_code'];
            $file_branch = $row['file_branch'];
            $file_sem = $row['file_sem'];
            $file_year = $row['file_year'];
            $file_college = $row['file_college'];
            $file_info_1 = $row['file_info_1'];
            $file_info_2 = $row['file_info_2'];
            $file_contri_name = $row['file_contri_name'];
            $file_contri_college = $row['file_contri_college'];
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
                                                        <a href="../../db_files/<?php echo $file_data ?>" target="_blank"><img src="../../db_images/<?php echo $file_dp ?>"
                                                            width="150"></a>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="profile-head">
                                                        <h5>
                                                            <?php echo $file_title ?>
                                                        </h5>
                                                        <br>
                                                        <br>
                                                        <p class="proile-rating">SUBJECT :
                                                            <span><?php echo $file_sub ?></span>
                                                        </p>
                                                        <br>
                                                        <p class="proile-rating">SUBJECT_CODE :
                                                            <span><?php echo $file_sub_code ?></span>
                                                        </p>
                                                        <br><br>
                                                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                            <li class="nav-item">
                                                                <a class="nav-link active" id="home-tab"
                                                                    data-toggle="tab" href="#home" role="tab"
                                                                    aria-controls="home" aria-selected="true">About</a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" id="profile-tab" data-toggle="tab"
                                                                    href="#profile" role="tab" aria-controls="profile"
                                                                    aria-selected="false">Timeline</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <a type="submit" class=" btn btn-outline-primary profile-edit-btn"
                                                        href="edit_file.php?file_id=<?php echo $file_id ?>">Edit
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
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Title</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_title ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Subject</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_sub ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Subject Code</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_sub_code ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Branch</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_branch ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Semester</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_sem ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Year</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_year ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>College</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_college ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Info_1</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_info_1 ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Info_2</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_info_2 ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                        </div>
                                                        <div class="tab-pane fade" id="profile" role="tabpanel"
                                                            aria-labelledby="profile-tab">
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Contributor Name</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_contri_name ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Contributor College</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $file_contri_college ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
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
</style>