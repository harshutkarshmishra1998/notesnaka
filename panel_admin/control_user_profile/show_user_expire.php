<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

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
                                    <form method="post" action="">
                                        <div class="row form-group">
                                            <div class="col-12 col-md-12">
                                                <select name="user_expire_month" id="select" class="form-control">
                                                    <option value="0">Select Expiration Month</option>
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
                                        <button type="submit" name="submit" class="btn btn-primary btn-sm">Submit
                                        </button>
                                    </form>
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>name</th>
                                                <th>branch sem year college</th>
                                                <th>expiry</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                if(isset($_POST['submit']))
                                                {
                                                    $user_expire_month = $_POST['user_expire_month'];
                                                    $query = "SELECT * FROM user_profile WHERE user_expire_month LIKE '%$user_expire_month%'";
                                                    $select_user = mysqli_query($connection, $query);
                                            
                                                    while($row = mysqli_fetch_assoc($select_user))
                                                    {
                                                        echo "<tr>";
                                                        echo "<td>{$row['user_name']}</td>";
                                                        echo "<td>{$row['user_branch']} {$row['user_sem']} {$row['user_year']} {$row['user_college']}</td>";
                                                        echo "<td>{$row['user_expire']}</td>";
                                                        if($row['user_restrict'] == 0)
                                                        {
                                                            echo "<td><a href='restrict_user.php?user_id={$row['user_id']}'>Restrict Account</a></td>";
                                                        }
                                                        if($row['user_restrict'] == 1)
                                                        {
                                                            echo "<td><a href='restrict_user.php?user_id={$row['user_id']}'>Unrestrict Account</a></td>";
                                                        }
                                                        echo "</tr>";
                                                    }
                                                }
                                            ?>
                                        </tbody>
                                    </table>
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