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
                                                <th>file</th>
                                                <th>title</th>
                                                <th>subject subject_code</th>
                                                <th>branch sem year college</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                                $query = "SELECT * FROM contribute ORDER BY con_id DESC";
                                                $select_user = mysqli_query($connection, $query);
                                                while($row = mysqli_fetch_assoc($select_user))
                                                {
                                                    $con_dp = $row['con_dp'];
                                                    if(empty($con_dp))
                                                    {
                                                        $con_dp = "default_CaZ45vTe9b.jpg";
                                                    }
                                                    $con_data = $row['con_data'];
                                                    $con_title = $row['con_title'];
                                                    $con_sub = $row['con_sub'];
                                                    $con_sub_code = $row['con_sub_code'];
                                                    $con_branch = $row['con_branch'];
                                                    $con_sem = $row['con_sem'];
                                                    $con_year = $row['con_year'];
                                                    $con_college = $row['con_college'];
                                                    echo "<tr>";
                                                    echo "<td><img src='../../db_images/{$con_dp}' class='img-responsive' width='100'></td>";
                                                    echo "<td>{$con_title}</td>";
                                                    echo "<td>{$con_sub} {$con_sub_code}</td>";
                                                    echo "<td>{$con_branch} {$con_sem} {$con_year} {$con_college}</td>";
                                                    echo 
                                                        "<td>
                                                            <form method='post' action='show_contri.php?con_id={$row['con_id']}&con_data=$con_data'>
                                                                <div class='table-data-feature'>
                                                                    <a type='submit' class='item' data-toggle='tooltip' data-placement='top' title='View' name = 'view' href='../../db_files/$con_data' target='_blank'>
                                                                        <i class='zmdi zmdi-eye'></i>
                                                                    </a>
                                                                    <a class='item' data-toggle='tooltip' data-placement='top' title='More' href = 'show_contri_more.php?con_id={$row['con_id']}'>
                                                                        <i class='zmdi zmdi-more'></i>
                                                                    </a>
                                                                    <button type='submit' class='item' data-toggle='tooltip' data-placement='top' title='Delete' name = 'delete'>
                                                                        <i class='zmdi zmdi-delete'></i>
                                                                    </button>
                                                                    
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

<?php
    if(isset($_POST['delete']))
    {
        $file = $_GET['con_data'];
        if(unlink("../../db_files/".$file))
        {
            echo "Done";
            $con_id = $_GET['con_id'];
            $query = "DELETE FROM con WHERE con_id = {$con_id}";
            $delete_query = mysqli_query($connection, $query);
            if(!$delete_query)
            {
                die("QUERY FAILED ".mysqli_error($connection));
            }
            if($delete_query)
            {
                header("Location: show_contri.php");
            }
        }
        else
        {
            die("Failed");
        }
    }
?>