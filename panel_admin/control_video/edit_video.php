<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<?php
    if(isset($_GET['video_id']))
    {
        $video_id = $_GET['video_id'];
        $query = "SELECT * FROM video WHERE video_id = {$video_id}";
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
            $video_year = $row['video_year'];
            $video_college = $row['video_college'];
            $video_info_1 = $row['video_info_1'];
            $video_info_2 = $row['video_info_2'];
            $video_contri_name = $row['video_contri_name'];
            $video_contri_college = $row['video_contri_college'];
        }
    }
?>
<?php
    if(isset($_POST['submit'])) 
    {
        $video_dp = $_FILES['image']['name'];
        $video_dp_temp = $_FILES['image']['tmp_name'];

        $video_data = mysqli_escape_string($connection, $_POST['video_data']);

        $video_title = mysqli_escape_string($connection, $_POST['video_title']);

        $video_sub = mysqli_escape_string($connection, $_POST['video_sub']);
        $video_sub_code = mysqli_escape_string($connection, $_POST['video_sub_code']);

        $video_branch = mysqli_escape_string($connection, $_POST['video_branch']);
        $video_sem = mysqli_escape_string($connection, $_POST['video_sem']);
        $video_year = mysqli_escape_string($connection, $_POST['video_year']);
        $video_college = mysqli_escape_string($connection, $_POST['video_college']);

        $video_info_1 = mysqli_escape_string($connection, $_POST['video_info_1']);
        $video_info_2 = mysqli_escape_string($connection, $_POST['video_info_2']);

        $video_contri_name = mysqli_escape_string($connection, $_POST['video_contri_name']);
        $video_contri_college = mysqli_escape_string($connection, $_POST['video_contri_college']);

        move_uploaded_file($video_dp_temp, "../../db_images/".$video_dp);
        if(empty($video_dp))
        {
            $query = "SELECT * FROM video WHERE video_id = {$video_id}";
            $select_image = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($select_image))
            {
                $video_dp = $row["video_dp"];
            }
        }

        $query = "UPDATE video SET ";

        $query .="video_dp = '{$video_dp}', ";
        $query .="video_data = '{$video_data}', ";
        $query .="video_title = '{$video_title}', ";
        $query .="video_sub = '{$video_sub}', ";
        $query .="video_sub_code = '{$video_sub_code}', ";
        $query .="video_branch = '{$video_branch}', ";
        $query .="video_sem = '{$video_sem}', ";
        $query .="video_year = '{$video_year}', ";
        $query .="video_college = '{$video_college}', ";
        $query .="video_info_1 = '{$video_info_1}', ";
        $query .="video_info_2 = '{$video_info_2}', ";
        $query .="video_contri_name = '{$video_contri_name}', ";
        $query .="video_contri_college = '{$video_contri_college}' ";

        $query .= "WHERE video_id = {$video_id} ";

        $update_user = mysqli_query($connection, $query);
        if(!$update_user)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_user)
        {
            //header("Location: show_video.php");
            echo "Suceess";
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
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <strong>EDIT VIDEO</strong>
                                            </div>
                                            <div class="card-body card-block">
                                                <form action="" method="post" enctype="multipart/form-data"
                                                    class="form-horizontal">
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="file-input"
                                                                class=" form-control-label">DP</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="file" id="file-input" class="form-control-file"
                                                                name="image">
                                                            <br>
                                                            <img src="../../db_images/<?php echo $video_dp?>"
                                                                width="200">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Link</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" class="form-control"
                                                                name="video_data" value="<?php echo $video_data ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Title</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" class="form-control"
                                                                name="video_title" value="<?php echo $video_title ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input"
                                                                class=" form-control-label">Subject</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="video_sub"
                                                                class="form-control" value="<?php echo $video_sub ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input" class=" form-control-label">Subject
                                                                Code</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="video_sub_code"
                                                                class="form-control"
                                                                value="<?php echo $video_sub_code ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Branch</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="video_branch" id="select" class="form-control">
                                                                <option value="<?php echo $video_branch ?>">
                                                                    <?php echo $video_branch ?></option>
                                                                <option value="ALL">ALL(FIRST YEAR)</option>
                                                                <option value="CSE">CSE</option>
                                                                <option value="ECE">ECE</option>
                                                                <option value="EE">EE</option>
                                                                <option value="ME">ME</option>
                                                                <option value="CIVIL">CIVIL</option>
                                                                <option value="CHEM">CHEM</option>
                                                                <option value="MME">MME</option>
                                                                <option value="B.ARCH">B.ARCH</option>
                                                                <option value="B.PLAN">B.PLAN</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Semester</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="video_sem" id="select" class="form-control">
                                                                <option value="<?php echo $video_sem ?>">
                                                                    <?php echo $video_sem ?></option>
                                                                <option value="1/2">1/2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                <option value="7">7</option>
                                                                <option value="8">8</option>
                                                                <option value="9">9</option>
                                                                <option value="10">10</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Year</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="video_year" id="select" class="form-control">
                                                                <option value="<?php echo $video_year ?>">
                                                                    <?php echo $video_year ?></option>
                                                                <option value="1">FIRST</option>
                                                                <option value="2">SECOND</option>
                                                                <option value="3">THIRD</option>
                                                                <option value="4">FOURTH</option>
                                                                <option value="5">FIFTH</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">College</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="video_college" id="select"
                                                                class="form-control">
                                                                <option value="<?php echo $video_college ?>">
                                                                    <?php echo $video_college ?></option>
                                                                <option value="NIT BHOPAL">NIT BHOPAL</option>
                                                                <option value="NIT MEGHALAYA">NIT MEGHALAYA</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="textarea-input"
                                                                class=" form-control-label">Info_1</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <textarea id="textarea-input" rows="9" name="video_info_1"
                                                                class="form-control"><?php echo $video_info_1 ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="textarea-input"
                                                                class=" form-control-label">Info_2</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <textarea id="textarea-input" rows="9" name="video_info_2"
                                                                class="form-control"><?php echo $video_info_2 ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Contributor Name</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" name="video_contri_name"
                                                                class="form-control"
                                                                value="<?php echo $video_contri_name ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Contributor College</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input"
                                                                name="video_contri_college" class="form-control"
                                                                value="<?php echo $video_contri_college ?>">
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <button type="submit" class="btn btn-primary btn-sm"
                                                            name="submit">SUBMIT</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row m-t-30">
                            <div class="col-md-12">
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