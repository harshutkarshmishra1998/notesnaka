<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<?php
    if(isset($_GET['admin_id']))
    {
        $admin_id = $_GET['admin_id'];
        $query = "SELECT * FROM admins WHERE admin_id = {$admin_id}";
        $select_ca = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_ca))
        {
            $admin_email = $row['admin_email'];
            $admin_password = null;
            $admin_name = $row['admin_name'];
            $admin_username = $row['admin_username'];
        }
    }
?>
<?php
    if(isset($_POST['submit'])) 
    {
        $admin_name = mysqli_escape_string($connection, $_POST['admin_name']);
        $admin_email = mysqli_escape_string($connection, $_POST['admin_email']);

        $admin_username = mysqli_escape_string($connection, $_POST['admin_username']);
        $admin_password = $_POST['admin_password'];
        if(!empty($admin_password))
        {
            $options = ['cost' => 12,];
            $admin_password = password_hash($admin_password, PASSWORD_BCRYPT, $options);
            $admin_password = mysqli_escape_string($connection, $admin_password);
        }
        if(empty($admin_password))
        {
            $query = "SELECT * FROM admins WHERE admin_id = {$admin_id}";
            $select_image = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($select_image))
            {
                $admin_password = $row['admin_password'];
            }
        }

        
        $query = "UPDATE admins SET ";

        $query .="admin_name = '{$admin_name}', ";
        $query .="admin_email = '{$admin_email}', ";
        $query .="admin_username = '{$admin_username}' ,";
        $query .="admin_password = '{$admin_password}' ";

        $query .= "WHERE admin_id = {$admin_id} ";

        $update_admin = mysqli_query($connection, $query);
        if(!$update_admin)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_admin)
        {
            header("Location: show_admin.php");
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
                                                <strong>EDIT ADMIN</strong>
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
                                                                name="admin_name" value="<?php echo $admin_name ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="email-input"
                                                                class=" form-control-label">Email</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="email" id="email-input" name="admin_email"
                                                                class="form-control" value="<?php echo $admin_email ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="email-input"
                                                                class=" form-control-label">Username</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="admin_username"
                                                                class="form-control" value="<?php echo $admin_username ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="password-input"
                                                                class=" form-control-label">Password</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="password-input" name="admin_password"
                                                                class="form-control">
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