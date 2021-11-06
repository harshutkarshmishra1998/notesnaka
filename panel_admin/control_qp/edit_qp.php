<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
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
<?php
    if(isset($_POST['submit'])) 
    {
        $qp_dp = $_FILES['image']['name'];
        $qp_dp_temp = $_FILES['image']['tmp_name'];

        $qp_data = $_FILES['file']['name'];
        $qp_data_temp = $_FILES['file']['tmp_name'];

        $qp_title = mysqli_escape_string($connection, $_POST['qp_title']);

        $qp_sub = mysqli_escape_string($connection, $_POST['qp_sub']);
        $qp_sub_code = mysqli_escape_string($connection, $_POST['qp_sub_code']);

        $qp_branch = mysqli_escape_string($connection, $_POST['qp_branch']);
        $qp_sem = mysqli_escape_string($connection, $_POST['qp_sem']);
        $qp_year = mysqli_escape_string($connection, $_POST['qp_year']);
        $qp_college = mysqli_escape_string($connection, $_POST['qp_college']);

        $qp_info_1 = mysqli_escape_string($connection, $_POST['qp_info_1']);
        $qp_info_2 = mysqli_escape_string($connection, $_POST['qp_info_2']);

        $qp_contri_name = mysqli_escape_string($connection, $_POST['qp_contri_name']);
        $qp_contri_college = mysqli_escape_string($connection, $_POST['qp_contri_college']);

        move_uploaded_file($qp_dp_temp, "../../db_images/".$qp_dp);
        if(empty($qp_dp))
        {
            $query = "SELECT * FROM qp WHERE qp_id = {$qp_id}";
            $select_image = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($select_image))
            {
                $qp_dp = $row["qp_dp"];
            }
        }
        move_uploaded_file($qp_data_temp, "../../db_files/".$qp_data);
        if(empty($qp_data))
        {
            $query = "SELECT * FROM qp WHERE qp_id = {$qp_id}";
            $select_image = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($select_image))
            {
                $qp_data = $row["qp_data"];
            }
        }

        
        $query = "UPDATE qp SET ";

        $query .="qp_dp = '{$qp_dp}', ";
        $query .="qp_data = '{$qp_data}', ";
        $query .="qp_title = '{$qp_title}', ";
        $query .="qp_sub = '{$qp_sub}', ";
        $query .="qp_sub_code = '{$qp_sub_code}', ";
        $query .="qp_branch = '{$qp_branch}', ";
        $query .="qp_sem = '{$qp_sem}', ";
        $query .="qp_year = '{$qp_year}', ";
        $query .="qp_college = '{$qp_college}', ";
        $query .="qp_info_1 = '{$qp_info_1}', ";
        $query .="qp_info_2 = '{$qp_info_2}', ";
        $query .="qp_contri_name = '{$qp_contri_name}', ";
        $query .="qp_contri_college = '{$qp_contri_college}' ";

        $query .= "WHERE qp_id = {$qp_id} ";

        $update_user = mysqli_query($connection, $query);
        if(!$update_user)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_user)
        {
            // header("Location: show_qp.php");
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
                                                <strong>EDIT QP</strong>
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
                                                            <img src="../../db_images/<?php echo $qp_dp?>"
                                                                width="200">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="file-input"
                                                                class=" form-control-label">File</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="file" id="file-input" class="form-control-file"
                                                                name="file">
                                                            <br>
                                                            <embed src="../../db_files/<?php echo $qp_data?>"
                                                                width="300">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Title</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" class="form-control"
                                                                name="qp_title" value="<?php echo $qp_title ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input"
                                                                class=" form-control-label">Subject</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="qp_sub"
                                                                class="form-control" value="<?php echo $qp_sub ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input" class=" form-control-label">Subject
                                                                Code</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="qp_sub_code"
                                                                class="form-control"
                                                                value="<?php echo $qp_sub_code ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Branch</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="qp_branch" id="select" class="form-control">
                                                                <option value="<?php echo $qp_branch ?>">
                                                                    <?php echo $qp_branch ?></option>
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
                                                            <select name="qp_sem" id="select" class="form-control">
                                                                <option value="<?php echo $qp_sem ?>">
                                                                    <?php echo $qp_sem ?></option>
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
                                                            <select name="qp_year" id="select" class="form-control">
                                                                <option value="<?php echo $qp_year ?>">
                                                                    <?php echo $qp_year ?></option>
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
                                                            <select name="qp_college" id="select"
                                                                class="form-control">
                                                                <option value="<?php echo $qp_college ?>">
                                                                    <?php echo $qp_college ?></option>
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
                                                            <textarea id="textarea-input" rows="9" name="qp_info_1"
                                                                class="form-control"><?php echo $qp_info_1 ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="textarea-input"
                                                                class=" form-control-label">Info_2</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <textarea id="textarea-input" rows="9" name="qp_info_2"
                                                                class="form-control"><?php echo $qp_info_2 ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Contributor Name</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" name="qp_contri_name"
                                                                class="form-control"
                                                                value="<?php echo $qp_contri_name ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Contributor College</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input"
                                                                name="qp_contri_college" class="form-control"
                                                                value="<?php echo $qp_contri_college ?>">
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