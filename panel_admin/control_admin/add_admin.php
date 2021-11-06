<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

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

        $query = "INSERT INTO admins (admin_name ,admin_email, admin_username, admin_password)";

        $query .= "VALUES('{$admin_name}', '{$admin_email}', '{$admin_username}', '{$admin_password}')";

        $create_post_query  = mysqli_query($connection, $query);

        if(!$create_post_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }
        if($create_post_query)
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
                                                <strong>ADD admin</strong>
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
                                                                name="admin_name">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="email-input"
                                                                class=" form-control-label">Email</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="email" id="email-input" name="admin_email"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="email-input"
                                                                class=" form-control-label">Username</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="admin_username"
                                                                class="form-control">
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