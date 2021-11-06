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
                                                <th>message</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                $query = "SELECT * FROM contact ORDER BY id DESC";
                                                $select_pay = mysqli_query($connection, $query);
                                        
                                                while($row = mysqli_fetch_assoc($select_pay))
                                                {
                                                    echo "<tr>";
                                                    echo "<td>{$row['name']}</td>";
                                                    echo "<td>{$row['email']}</td>";
                                                    echo "<td>{$row['message']}</td>";
                                                    echo 
                                                    "<td>
                                                        <form method='post' action=''>
                                                            <div class='table-data-feature'>
                                                                <a class='item' data-toggle='tooltip' data-placement='top' title='Delete' href = 'delete_contact.php?id={$row['id']}'>
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
                    </div>
                </div>
            </div>
        </div>

    </div>

    <?php include 'includes/footer.php'; ?>

</body>

</html>