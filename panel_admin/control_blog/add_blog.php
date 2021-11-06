<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<?php
    if(isset($_POST['submit'])) 
    {
        $blog_dp = mysqli_escape_string($connection, $_FILES['image']['name']);
        $blog_dp_temp = $_FILES['image']['tmp_name'];
        if(empty($blog_dp))
        {
            $blog_dp = "default_CaZ45vTe9b.jpg";
        }

        $blog_data = $_FILES['file']['name'];
        $blog_data_temp = $_FILES['file']['tmp_name'];

        $blog_title = mysqli_escape_string($connection, $_POST['blog_title']);

        $blog_sub = mysqli_escape_string($connection, $_POST['blog_sub']);
        $blog_sub_code = mysqli_escape_string($connection, $_POST['blog_sub_code']);

        $blog_branch = mysqli_escape_string($connection, $_POST['blog_branch']);
        $blog_sem = mysqli_escape_string($connection, $_POST['blog_sem']);
        $blog_year = mysqli_escape_string($connection, $_POST['blog_year']);
        $blog_college = mysqli_escape_string($connection, $_POST['blog_college']);

        $blog_info_1 = mysqli_escape_string($connection, $_POST['blog_info_1']);
        $blog_info_2 = mysqli_escape_string($connection, $_POST['blog_info_2']);

        $blog_contri_name = mysqli_escape_string($connection, $_POST['blog_contri_name']);
        $blog_contri_college = mysqli_escape_string($connection, $_POST['blog_contri_college']);

        $blog_time = time();

        move_uploaded_file($blog_dp_temp, "../../db_images/".$blog_dp);
        move_uploaded_file($blog_data_temp, "../../db_files/".$blog_data);

        $query = "INSERT INTO blog (blog_dp ,blog_data, blog_title, blog_sub, blog_sub_code, blog_branch, blog_sem, blog_year, blog_college, blog_info_1, blog_info_2, blog_contri_name, blog_contri_college, blog_time)";

        $query .= "VALUES('{$blog_dp}', '{$blog_data}', '{$blog_title}', '{$blog_sub}', '{$blog_sub_code}', '{$blog_branch}', '{$blog_sem}', '{$blog_year}', '{$blog_college}', '{$blog_info_1}', '{$blog_info_2}', '{$blog_contri_name}', '{$blog_contri_college}', '{$blog_time}')";

        $update_file = mysqli_query($connection, $query);
        if(!$update_file)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_file)
        {
            // header("Location: show_blog.php");
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
                                                            <label for="file-input"
                                                                class=" form-control-label">DP</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="file" id="file-input" class="form-control-file"
                                                                name="image">
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
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Title</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" class="form-control"
                                                                name="blog_title">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input"
                                                                class=" form-control-label">Subject</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="blog_sub"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="sub-input" class=" form-control-label">Subject
                                                                Code</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="blog_sub_code"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Branch</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="blog_branch" id="select" class="form-control">
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
                                                                <option value="MISC">MISC</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Semester</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="blog_sem" id="select" class="form-control">
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
                                                                <option value="MISC">MISC</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Year</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="blog_year" id="select" class="form-control">
                                                                <option value="0">Select Year</option>
                                                                <option value="1">FIRST</option>
                                                                <option value="2">SECOND</option>
                                                                <option value="3">THIRD</option>
                                                                <option value="4">FOURTH</option>
                                                                <option value="5">FIFTH</option>
                                                                <option value="MISC">MISC</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">College</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="blog_college" id="select"
                                                                class="form-control">
                                                                <option value="0">Select College</option>
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
                                                            <textarea id="textarea-input" rows="9" name="blog_info_1"
                                                                class="form-control"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="textarea-input"
                                                                class=" form-control-label">Info_2</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <textarea id="textarea-input" rows="9" name="blog_info_2"
                                                                class="form-control"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Contributor Name</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" name="blog_contri_name"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Contributor College</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input"
                                                                name="blog_contri_college" class="form-control">
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