<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

<?php
    if(isset($_POST['submit'])) 
    {
        $pay_amount = mysqli_escape_string($connection, $_POST['pay_amount']);
        $pay_discount = mysqli_escape_string($connection, $_POST['pay_discount']);
        $pay_discount_name = mysqli_escape_string($connection, $_POST['pay_discount_name']);
        $pay_duration = mysqli_escape_string($connection, $_POST['pay_duration']);

        $query = "INSERT INTO pay (pay_amount, pay_discount, pay_discount_name, pay_duration)";

        $query .= "VALUES('{$pay_amount}', '{$pay_discount}', '{$pay_discount_name}', '{$pay_duration}')";

        $create_post_query  = mysqli_query($connection, $query);

        if(!$create_post_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }
        if($create_post_query)
        {
            header("Location: show_pay.php");
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
                                                <strong>ADD pay PLAN</strong>
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
                                                                name="pay_amount">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Discount</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" name="pay_discount"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="text-input"
                                                                class=" form-control-label">Discount Name</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="text-input" name="pay_discount_name"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="email-input"
                                                                class=" form-control-label">Duration</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="email-input" name="pay_duration"
                                                                class="form-control">
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