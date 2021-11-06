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
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>name</th>
                                                <th>email</th>
                                                <th>username</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                $id = 1;
                                                $query = "SELECT * FROM admins WHERE admin_id NOT LIKE '$id'";
                                                $select_admin = mysqli_query($connection, $query);
                                        
                                                while($row = mysqli_fetch_assoc($select_admin))
                                                {
                                                    echo "<tr>";
                                                    echo "<td>{$row['admin_name']}</td>";
                                                    echo "<td>{$row['admin_email']}</td>";
                                                    echo "<td>{$row['admin_username']}</td>";
                                                    echo 
                                                    "<td>
                                                        <form method='post' action=''>
                                                            <div class='table-data-feature'>
                                                                <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' name = 'edit' href = 'edit_admin.php?admin_id={$row['admin_id']}'>
                                                                    <i class='zmdi zmdi-edit'></i>
                                                                </a>
                                                                <a class='item' data-toggle='tooltip' data-placement='top' title='Delete' href = 'delete_admin.php?admin_id={$row['admin_id']}'>
                                                                    <i class='zmdi zmdi-delete'></i>
                                                                </a>
                                                            </div>
                                                        </form>
                                                    </td>";
                                                echo "</tr>";
                                                }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row m-t-30">
                            <div class="col-md-12">
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