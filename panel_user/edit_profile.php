<?php include 'includes/header.php'; ?>

<?php include 'includes/login_protector.php'; ?>

<?php $user_code = $_GET['user_code']; ?>

<?php
    $user_code = $_GET['user_code'];
    $query = "SELECT * FROM user_profile WHERE user_code LIKE '%$user_code%'";
    $select_user = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_user))
    {
        $user_id = $row['user_id'];
        $user_code = $row['user_code'];
        // $user_email = $row['user_email'];
        // $user_password = $row['user_password'];
        $user_name = $row['user_name'];
        // $user_branch = $row['user_branch'];
        // $user_sem = $row['user_sem'];
        // $user_year = $row['user_year'];
        $user_college = $row['user_college'];
        $user_image = $row['user_image'];
        $user_expire = $row['user_expire'];
    }
?>

<?php
    if(isset($_POST['submit'])) 
    {
        $user_name = mysqli_escape_string($connection, $_POST['user_name']);
        // $user_email = mysqli_escape_string($connection, $_POST['user_email']);
        // $user_branch = mysqli_escape_string($connection, $_POST['user_branch']);
        // $user_sem = mysqli_escape_string($connection, $_POST['user_sem']);
        // $user_year = mysqli_escape_string($connection, $_POST['user_year']);
        $user_college = mysqli_escape_string($connection, $_POST['user_college']);

        $user_image = mysqli_escape_string($connection, $_FILES['image']['name']);
        $user_image_temp = $_FILES['image']['tmp_name'];

        // $user_password = $_POST['user_password'];
        // if(!empty($user_password))
        // {
        //     $options = ['cost' => 12,];
        //     $user_password = password_hash($user_password, PASSWORD_BCRYPT, $options);
        //     $user_password = mysqli_escape_string($connection, $user_password);
        // }
        // if(empty($user_password))
        // {
        //     $query = "SELECT * FROM user_profile WHERE user_id = {$user_id}";
        //     $select_image = mysqli_query($connection, $query);
        //     while($row = mysqli_fetch_array($select_image))
        //     {
        //         $user_password = $row['user_password'];
        //     }
        // }


        if(!empty($user_image))
        {
            if(!move_uploaded_file($user_image_temp, "../db_images/".$user_image))
            {
                header("Location: oops.php?user_code=$user_code");
                die("Could not move uploaded");
            }
        }
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
        // $query .="user_email = '{$user_email}', ";
        // $query .="user_branch = '{$user_branch}', ";
        // $query .="user_sem = '{$user_sem}', ";
        // $query .="user_year = '{$user_year}', ";
        $query .="user_college = '{$user_college}', ";
        $query .="user_image = '{$user_image}' ";
        // $query .="user_password = '{$user_password}' ";

        $query .= "WHERE user_id = {$user_id} ";

        $update_user = mysqli_query($connection, $query);
        if(!$update_user)
        {
            header("Location: response/oops.php");
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_user)
        {
            header("Location: show_profile.php?user_code=$user_code");
        }
    }
?>


<link rel="stylesheet" href="includes/edit_profile.css">
<body class="overlay-scrollbar">

    <?php include 'includes/navbar.php'; ?>

    <?php include 'includes/sidebar.php'; ?>

    <!-- main content -->
    <div class="wrapper">
        <div class="row">
            <div class="row">
                <div class="col-12 col-m-12 col-sm-12">
                    <div class="card-content">
                        <div class="table-responsive table-responsive-data2">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Personal Info </strong> 
                                    </div>
                                    <div class="card-body card-block prof">
                                        <form action="" method="post" enctype="multipart/form-data"
                                            class="form-horizontal">

                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Name</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" class="form-control"
                                                        name="user_name" value="<?php echo $user_name ?>">
                                                </div>
                                            </div>
                                            <!--<div class="row form-group">-->
                                            <!--    <div class="col col-md-3">-->
                                            <!--        <label for="text-input" class=" form-control-label">Branch</label>-->
                                            <!--    </div>-->
                                            <!--    <div class="col-12 col-md-9">-->
                                            <!--        <input type="text" id="text-input" name="user_branch"-->
                                            <!--            class="form-control" value="<?php //echo $user_branch ?>">-->
                                            <!--    </div>-->
                                            <!--</div>-->
                                            <!--<div class="row form-group">-->
                                            <!--    <div class="col col-md-3">-->
                                            <!--        <label for="text-input" class=" form-control-label">Semester</label>-->
                                            <!--    </div>-->
                                            <!--    <div class="col-12 col-md-9">-->
                                            <!--        <input type="text" id="text-input" name="user_sem"-->
                                            <!--            class="form-control" value="<?php //echo $user_sem ?>">-->
                                            <!--    </div>-->
                                            <!--</div>-->
                                            <!--<div class="row form-group">-->
                                            <!--    <div class="col col-md-3">-->
                                            <!--        <label for="text-input" class=" form-control-label">Year</label>-->
                                            <!--    </div>-->
                                            <!--    <div class="col-12 col-md-9">-->
                                            <!--        <input type="text" id="text-input" name="user_year"-->
                                            <!--            class="form-control" value="<?php //echo $user_year ?>">-->
                                            <!--    </div>-->
                                            <!--</div>-->
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">College</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="user_college"
                                                        class="form-control" value="<?php echo $user_college ?>">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="file-input" class=" form-control-label">Image</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="file" id="file-input" class="form-control-file"
                                                        name="image">
                                                    <br>
                                                    <img src="../db_images/<?php echo $user_image?>" width="200">
                                                </div>
                                            </div>
                                            <!--<div class="row form-group">-->
                                            <!--    <div class="col col-md-3">-->
                                            <!--        <label for="email-input" class=" form-control-label">Email</label>-->
                                            <!--    </div>-->
                                            <!--    <div class="col-12 col-md-9">-->
                                            <!--        <input type="email" id="email-input" name="user_email"-->
                                            <!--            class="form-control" value="<?php //echo $user_email ?>">-->
                                            <!--    </div>-->
                                            <!--</div>-->
                                            <!-- <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="password-input"
                                                        class=" form-control-label">Password</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="password" id="password-input" name="user_password"
                                                        class="form-control">
                                                </div>
                                            </div> -->
                                            <div class="card-footer">
                                                <button type="submit" class="btn btn-primary btn-sm" name="submit">
                                                    <i class="fa fa-dot-circle-o"></i> Update
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
    <!-- end main content -->
    <!-- import script -->
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <script src="includes/index.js"></script>
    <!-- end import script -->

</body>

</html>