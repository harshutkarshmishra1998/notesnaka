<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<?php
    if(isset($_GET['user_id']))
    {
        $user_id = $_GET['user_id'];
        $query = "SELECT * FROM user_profile WHERE user_id = {$user_id}";
        $select_ca = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_ca))
        {
            $user_code = $row['user_code'];
            $user_email = $row['user_email'];
            $user_password = null;
            $user_name = $row['user_name'];
            $user_branch = $row['user_branch'];
            $user_sem = $row['user_sem'];
            $user_year = $row['user_year'];
            $user_college = $row['user_college'];
            $user_image = $row['user_image'];
            $user_expire = $row['user_expire'];
            $user_expire_month = $row['user_expire_month'];
        }
    }
?>
<?php
    if(isset($_POST['submit'])) 
    {
        $user_name = mysqli_escape_string($connection, $_POST['user_name']);
        $user_email = mysqli_escape_string($connection, $_POST['user_email']);
        $user_branch = mysqli_escape_string($connection, $_POST['user_branch']);
        $user_sem = mysqli_escape_string($connection, $_POST['user_sem']);
        $user_year = mysqli_escape_string($connection, $_POST['user_year']);
        $user_college = mysqli_escape_string($connection, $_POST['user_college']);
        $user_expire = mysqli_escape_string($connection, $_POST['user_expire']);
        $user_expire_month = mysqli_escape_string($connection, $_POST['user_expire_month']);

        $user_image = $_FILES['image']['name'];
        $user_image_temp = $_FILES['image']['tmp_name'];

        // $user_password = mysqli_escape_string($connection, $_POST['user_password']);
        $user_password = $_POST['user_password'];
        if(!empty($user_password))
        {
            $options = ['cost' => 12,];
            $user_password = password_hash($user_password, PASSWORD_BCRYPT, $options);
            $user_password = mysqli_escape_string($connection, $user_password);
        }
        if(empty($user_password))
        {
            $query = "SELECT * FROM user_profile WHERE user_id = {$user_id}";
            $select_image = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($select_image))
            {
                $user_password = $row['user_password'];
            }
        }

        move_uploaded_file($user_image_temp, "../../db_images/".$user_image);
        if(empty($user_image))
        {
            $query = "SELECT * FROM user_profile WHERE user_id = {$user_id}";
            $select_image = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($select_image))
            {
                $user_image = $row["user_image"];
            }
        }

        
        $query = "UPDATE user_profile SET ";

        $query .="user_name = '{$user_name}', ";
        $query .="user_email = '{$user_email}', ";
        $query .="user_branch = '{$user_branch}', ";
        $query .="user_sem = '{$user_sem}', ";
        $query .="user_year = '{$user_year}', ";
        $query .="user_college = '{$user_college}', ";
        $query .="user_image = '{$user_image}', ";
        $query .="user_password = '{$user_password}', ";
        $query .= "user_expire = '{$user_expire}', ";
        $query .= "user_expire_month = '{$user_expire_month}' ";

        $query .= "WHERE user_id = {$user_id} ";

        $update_user = mysqli_query($connection, $query);
        if(!$update_user)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_user)
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
                                                <strong>EDIT USER</strong>
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
                                                                name="user_name" value="<?php echo $user_name ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Branch</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <select name="user_branch" id="select" class="form-control">
                                                                <option value="<?php echo $user_branch ?>">
                                                                    <?php echo $user_branch ?></option>
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
                                                                <option value="<?php echo $user_sem ?>">
                                                                    <?php echo $user_sem ?></option>
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
                                                                <option value="<?php echo $user_year ?>">
                                                                    <?php echo $user_year ?></option>
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
                                                                class="form-control" value = "<?php echo $user_college ?>">
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
                                                            <br>
                                                            <img src="../../db_images/<?php echo $user_image?>"
                                                                width="200">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="email-input"
                                                                class=" form-control-label">Email</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="email" id="email-input" name="user_email"
                                                                class="form-control" value="<?php echo $user_email ?>">
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
                                                                class="form-control" value="<?php echo $user_expire ?>">
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
                                                                <option value="<?php echo $user_expire_month ?>">
                                                                    <?php echo $user_expire_month ?></option>
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
                                                            name="submit"> SUBMIT </button>
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