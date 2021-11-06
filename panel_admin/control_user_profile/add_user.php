<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

<?php
    if(isset($_POST['submit'])) 
    {
        $user_code = bin2hex(random_bytes(15))."_user";
        $user_name = mysqli_escape_string($connection, $_POST['user_name']);
        $user_email = mysqli_escape_string($connection, $_POST['user_email']);
        $user_branch = mysqli_escape_string($connection, $_POST['user_branch']);
        $user_sem = mysqli_escape_string($connection, $_POST['user_sem']);
        $user_year = mysqli_escape_string($connection, $_POST['user_year']);
        $user_college = mysqli_escape_string($connection, $_POST['user_college']);
        $user_expire = mysqli_escape_string($connection, $_POST['user_expire']);
        $user_expire_month = mysqli_escape_string($connection, $_POST['user_expire_month']);

        $user_image = mysqli_escape_string($connection, $_FILES['image']['name']);
        if(empty($user_image))
        {
            $user_image = "default_DVcG2eAw3E.jpg";
        }
        $user_image_temp = $_FILES['image']['tmp_name'];

        $user_password = $_POST['user_password'];
        $options = ['cost' => 12,];
        $user_password = password_hash($user_password, PASSWORD_BCRYPT, $options);
        $user_password = mysqli_escape_string($connection, $user_password);

        move_uploaded_file($user_image_temp, "../../db_images/".$user_image);

        $query = "INSERT INTO user_profile (user_code ,user_email, user_password, user_name, user_branch, user_sem, user_year, user_college,  user_image, user_expire, user_expire_month)";

        $query .= "VALUES('{$user_code}', '{$user_email}', '{$user_password}', '{$user_name}', '{$user_branch}', '{$user_sem}', '{$user_year}', '{$user_college}', '{$user_image}', '{$user_expire}', '{$user_expire_month}')";

        $create_post_query  = mysqli_query($connection, $query);

        if(!$create_post_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }
        if($create_post_query)
        {
            header("Location: show_user.php");
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
                                                <strong>ADD USER</strong>
                                            </div>
                                            <div class="card-body card-block">
                                                <form action="" method="post" enctype="multipart/form-data"
                                                    class="form-horizontal">
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Name</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" class="form-control"
                                                                name="user_name">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Branch</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="user_branch" id="select" class="form-control">
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
                                                            <select name="user_sem" id="select" class="form-control">
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
                                                            <select name="user_year" id="select" class="form-control">
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
                                                            <input type="text" id="text-input" name="user_college"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="file-input"
                                                                class=" form-control-label">Image</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="file" id="file-input" class="form-control-file"
                                                                name="image">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="email-input"
                                                                class=" form-control-label">Email</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="email" id="email-input" name="user_email"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="password-input"
                                                                class=" form-control-label">Password</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="password-input" name="user_password"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="password-input"
                                                                class=" form-control-label">Expiration</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="password-input" name="user_expire"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Year</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="user_expire_month" id="select"
                                                                class="form-control">
                                                                <option value="0">Expiration Month</option>
                                                                <option value="JAN">JAN</option>
                                                                <option value="FEB">FEB</option>
                                                                <option value="MAR">MAR</option>
                                                                <option value="APR">APR</option>
                                                                <option value="MAY">MAY</option>
                                                                <option value="JUN">JUN</option>
                                                                <option value="JUL">JUL</option>
                                                                <option value="AUG">AUG</option>
                                                                <option value="SEPT">SEPT</option>
                                                                <option value="OCT">OCT</option>
                                                                <option value="NOV">NOV</option>
                                                                <option value="DEC">DEC</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <button type="submit" class="btn btn-primary btn-sm"
                                                            name="submit"> SUBMIT</button>
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