<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<?php
    if(isset($_POST['submit'])) 
    {
        $sub_title = mysqli_escape_string($connection, $_POST['sub_title']);

        $sub_code = mysqli_escape_string($connection, $_POST['sub_code']);

        $sub_branch = mysqli_escape_string($connection, $_POST['sub_branch']);
        $sub_sem = mysqli_escape_string($connection, $_POST['sub_sem']);
        $sub_year = mysqli_escape_string($connection, $_POST['sub_year']);
        $sub_college = mysqli_escape_string($connection, $_POST['sub_college']);

        $sub_info_1 = mysqli_escape_string($connection, $_POST['sub_info_1']);
        $sub_info_2 = mysqli_escape_string($connection, $_POST['sub_info_2']);

        $sub_contri_name = mysqli_escape_string($connection, $_POST['sub_contri_name']);
        $sub_contri_college = mysqli_escape_string($connection, $_POST['sub_contri_college']);

        move_uploaded_file($sub_dp_temp, "../../db_images/".$sub_dp);
        move_uploaded_file($sub_data_temp, "../../db_files/".$sub_data);

        $query = "INSERT INTO sub (sub_title, sub_code, sub_branch, sub_sem, sub_year, sub_college)";

        $query .= "VALUES('{$sub_title}', '{$sub_code}', '{$sub_branch}', '{$sub_sem}', '{$sub_year}', '{$sub_college}')";

        $update_file = mysqli_query($connection, $query);
        if(!$update_file)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_file)
        {
            header("Location: show_subject.php");
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
                                                <strong>ADD FILE</strong>
                                            </div>
                                            <div class="card-body card-block">
                                                <form action="" method="post" enctype="multipart/form-data"
                                                    class="form-horizontal">
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Title</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" class="form-control"
                                                                name="sub_title">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input" class=" form-control-label">Subject
                                                                Code</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="sub_code"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Branch</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="sub_branch" id="select" class="form-control">
                                                                <option value="0">Select Branch</option>
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
                                                            <select name="sub_sem" id="select" class="form-control">
                                                                <option value="0">Select Semester</option>
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
                                                            <select name="sub_year" id="select" class="form-control">
                                                                <option value="0">Select Year</option>
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
                                                            <select name="sub_college" id="select"
                                                                class="form-control">
                                                                <option value="0">Select College</option>
                                                                <option value="NIT BHOPAL">NIT BHOPAL</option>
                                                                <option value="NIT MEGHALAYA">NIT MEGHALAYA</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <button type="submit" class="btn btn-primary btn-sm"
                                                            name="submit">
                                                            SUBMIT
                                                        </button>
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
        </div>
    </div>

    <?php include 'includes/footer.php'; ?>

</body>

</html>