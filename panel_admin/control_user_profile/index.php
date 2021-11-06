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
                                                <th>branch sem year college</th>
                                                <th>expiry</th>
                                                <th>status</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                $query = "SELECT * FROM user_profile";
                                                $select_user = mysqli_query($connection, $query);
                                        
                                                while($row = mysqli_fetch_assoc($select_user))
                                                {
                                                    echo "<tr>";
                                                    echo "<td>{$row['user_name']}</td>";
                                                    echo "<td>{$row['user_branch']} {$row['user_sem']} {$row['user_year']} {$row['user_college']}</td>";
                                                    echo "<td>{$row['user_expire']}</td>";
                                                    if($row['user_restrict'] == 0)
                                                    {
                                                        echo "<td>Unrestricted</td>";
                                                    }
                                                    if($row['user_restrict'] == 1)
                                                    {
                                                        echo "<td>Restricted</td>";
                                                    }
                                                    echo 
                                                    "<td>
                                                        <form method='post' action=''>
                                                            <div class='table-data-feature'>
                                                                <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' name = 'edit' href = 'edit_user.php?user_id={$row['user_id']}'>
                                                                    <i class='zmdi zmdi-edit'></i>
                                                                </a>
                                                                <a class='item' data-toggle='tooltip' data-placement='top' title='More' href = 'show_user_more.php?user_id={$row['user_id']}'>
                                                                    <i class='zmdi zmdi-more'></i>
                                                                </a>
                                                                <a class='item' data-toggle='tooltip' data-placement='top' title='Delete' href = 'delete_user.php?user_id={$row['user_id']}'>
                                                                    <i class='zmdi zmdi-delete'></i>
                                                                </a>
                                                                <a class='item' data-toggle='tooltip' data-placement='top' title='Reset' href = 'reset_user.php?user_id={$row['user_id']}'>
                                                                    <i class='zmdi zmdi-undo'></i>
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