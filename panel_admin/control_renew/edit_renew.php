<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<?php
    if(isset($_GET['renew_id']))
    {
        $renew_id = $_GET['renew_id'];
        $query = "SELECT * FROM renew WHERE renew_id = {$renew_id}";
        $select_ca = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_ca))
        {
            $renew_amount = $row['renew_amount'];
            $renew_discount = $row['renew_discount'];
            $renew_discount_name = $row['renew_discount_name'];
            $renew_duration = $row['renew_duration'];
        }
    }
?>
<?php
    if(isset($_POST['submit'])) 
    {
        $renew_amount = mysqli_escape_string($connection, $_POST['renew_amount']);
        $renew_discount = mysqli_escape_string($connection, $_POST['renew_discount']);
        $renew_discount_name = mysqli_escape_string($connection, $_POST['renew_discount_name']);
        $renew_duration = mysqli_escape_string($connection, $_POST['renew_duration']);
        
        $query = "UPDATE renew SET ";

        $query .="renew_amount = '{$renew_amount}', ";
        $query .="renew_discount = '{$renew_discount}', ";
        $query .="renew_discount_name = '{$renew_discount_name}', ";
        $query .="renew_duration = '{$renew_duration}' ";


        $query .= "WHERE renew_id = {$renew_id} ";

        $update_renew = mysqli_query($connection, $query);
        if(!$update_renew)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_renew)
        {
            header("Location: show_renew.php");
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
                                                <strong>EDIT RENEW PLAN</strong>
                                            </div>
                                            <div class="card-body card-block">
                                                <form action="" method="post" enctype="multipart/form-data"
                                                    class="form-horizontal">
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Amount</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" class="form-control"
                                                                name="renew_amount" value="<?php echo $renew_amount ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="email-input"
                                                                class=" form-control-label">Discount</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="renew_discount"
                                                                class="form-control" value="<?php echo $renew_discount ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="password-input"
                                                                class=" form-control-label">Discount Name</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="password-input" name="renew_discount_name"
                                                                class="form-control"
                                                                value="<?php echo $renew_discount_name ?>">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="password-input"
                                                                class=" form-control-label">Duration</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="password-input" name="renew_duration"
                                                                class="form-control" value="<?php echo $renew_duration ?>">
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