<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<!-- <link rel="stylesheet" href="includes/show_qp_more.css"> -->
<?php
    if(isset($_GET['qp_id']))
    {
        $qp_id = $_GET['qp_id'];
        $query = "SELECT * FROM qp WHERE qp_id = {$qp_id}";
        $select_user = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_user))
        {
            $qp_dp = $row['qp_dp'];
            if(empty($qp_dp))
            {
                $qp_dp = "default_CaZ45vTe9b.jpg";
            }
            $qp_data = $row['qp_data'];
            $qp_title = $row['qp_title'];
            $qp_sub = $row['qp_sub'];
            $qp_sub_code = $row['qp_sub_code'];
            $qp_branch = $row['qp_branch'];
            $qp_sem = $row['qp_sem'];
            $qp_year = $row['qp_year'];
            $qp_college = $row['qp_college'];
            $qp_info_1 = $row['qp_info_1'];
            $qp_info_2 = $row['qp_info_2'];
            $qp_contri_name = $row['qp_contri_name'];
            $qp_contri_college = $row['qp_contri_college'];
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
                                                        <a href="../../db_files/<?php echo $qp_data ?>" target="_blank"><img src="../../db_images/<?php echo $qp_dp ?>"
                                                            width="150"></a>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="profile-head">
                                                        <h5>
                                                            <?php echo $qp_title ?>
                                                        </h5>
                                                        <br>
                                                        <br>
                                                        <p class="proile-rating">SUBJECT :
                                                            <span><?php echo $qp_sub ?></span>
                                                        </p>
                                                        <br>
                                                        <p class="proile-rating">SUBJECT_CODE :
                                                            <span><?php echo $qp_sub_code ?></span>
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
                                                        href="edit_qp.php?qp_id=<?php echo $qp_id ?>">Edit
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
                                                                    <p><?php echo $qp_title ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Subject</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_sub ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Subject Code</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_sub_code ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Branch</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_branch ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Semester</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_sem ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Year</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_year ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>College</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_college ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Info_1</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_info_1 ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Info_2</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_info_2 ?></p>
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
                                                                    <p><?php echo $qp_contri_name ?></p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Contributor College</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <p><?php echo $qp_contri_college ?></p>
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