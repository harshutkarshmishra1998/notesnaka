<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
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
<?php
    if(isset($_POST['submit'])) 
    {
        $file_dp = $_FILES['image']['name'];
        $file_dp_temp = $_FILES['image']['tmp_name'];

        $file_data = $_FILES['file']['name'];
        $file_data_temp = $_FILES['file']['tmp_name'];

        $file_title = mysqli_escape_string($connection, $_POST['file_title']);

        $file_sub = mysqli_escape_string($connection, $_POST['file_sub']);
        $file_sub_code = mysqli_escape_string($connection, $_POST['file_sub_code']);

        $file_branch = mysqli_escape_string($connection, $_POST['file_branch']);
        $file_sem = mysqli_escape_string($connection, $_POST['file_sem']);
        $file_year = mysqli_escape_string($connection, $_POST['file_year']);
        $file_college = mysqli_escape_string($connection, $_POST['file_college']);

        $file_info_1 = mysqli_escape_string($connection, $_POST['file_info_1']);
        $file_info_2 = mysqli_escape_string($connection, $_POST['file_info_2']);

        $file_contri_name = mysqli_escape_string($connection, $_POST['file_contri_name']);
        $file_contri_college = mysqli_escape_string($connection, $_POST['file_contri_college']);

        move_uploaded_file($file_dp_temp, "../../db_images/".$file_dp);
        if(empty($file_dp))
        {
            $query = "SELECT * FROM file WHERE file_id = {$file_id}";
            $select_image = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($select_image))
            {
                $file_dp = $row["file_dp"];
            }
        }
        move_uploaded_file($file_data_temp, "../../db_files/".$file_data);
        if(empty($file_data))
        {
            $query = "SELECT * FROM file WHERE file_id = {$file_id}";
            $select_image = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($select_image))
            {
                $file_data = $row["file_data"];
            }
        }

        
        $query = "UPDATE file SET ";

        $query .="file_dp = '{$file_dp}', ";
        $query .="file_data = '{$file_data}', ";
        $query .="file_title = '{$file_title}', ";
        $query .="file_sub = '{$file_sub}', ";
        $query .="file_sub_code = '{$file_sub_code}', ";
        $query .="file_branch = '{$file_branch}', ";
        $query .="file_sem = '{$file_sem}', ";
        $query .="file_year = '{$file_year}', ";
        $query .="file_college = '{$file_college}', ";
        $query .="file_info_1 = '{$file_info_1}', ";
        $query .="file_info_2 = '{$file_info_2}', ";
        $query .="file_contri_name = '{$file_contri_name}', ";
        $query .="file_contri_college = '{$file_contri_college}' ";

        $query .= "WHERE file_id = {$file_id} ";

        $update_user = mysqli_query($connection, $query);
        if(!$update_user)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_user)
        {
            // header("Location: show_file.php");
            echo "Success";
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
                                                <strong>EDIT FILE</strong>
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
                                                            <img src="../../db_images/<?php echo $file_dp?>"
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
                                                            <embed src="../../db_files/<?php echo $file_data?>"
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
                                                                name="file_title" value="<?php echo $file_title ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input"
                                                                class=" form-control-label">Subject</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="file_sub"
                                                                class="form-control" value="<?php echo $file_sub ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input" class=" form-control-label">Subject
                                                                Code</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="file_sub_code"
                                                                class="form-control"
                                                                value="<?php echo $file_sub_code ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Branch</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="file_branch" id="select" class="form-control">
                                                                <option value="<?php echo $file_branch ?>">
                                                                    <?php echo $file_branch ?></option>
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
                                                            <select name="file_sem" id="select" class="form-control">
                                                                <option value="<?php echo $file_sem ?>">
                                                                    <?php echo $file_sem ?></option>
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
                                                            <select name="file_year" id="select" class="form-control">
                                                                <option value="<?php echo $file_year ?>">
                                                                    <?php echo $file_year ?></option>
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
                                                            <select name="file_college" id="select"
                                                                class="form-control">
                                                                <option value="<?php echo $file_college ?>">
                                                                    <?php echo $file_college ?></option>
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
                                                            <textarea id="textarea-input" rows="9" name="file_info_1"
                                                                class="form-control"><?php echo $file_info_1 ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="textarea-input"
                                                                class=" form-control-label">Info_2</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <textarea id="textarea-input" rows="9" name="file_info_2"
                                                                class="form-control"><?php echo $file_info_2 ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Contributor Name</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" name="file_contri_name"
                                                                class="form-control"
                                                                value="<?php echo $file_contri_name ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Contributor College</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input"
                                                                name="file_contri_college" class="form-control"
                                                                value="<?php echo $file_contri_college ?>">
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