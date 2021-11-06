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
                                    $query = "SELECT * FROM qp ORDER BY qp_id DESC";
                                    $select_user = mysqli_query($connection, $query);
                                    while($row = mysqli_fetch_assoc($select_user))
                                    {
                                        $qp_dp = $row['qp_dp'];
                                        if(empty($qp_dp))
                                        {
                                            $qp_dp = "default_CaZ45vTe9b.jpg";
                                        }
                                        $qp_data = $row['qp_data'];
                                        $qp_title = $row['qp_title'];
                                        $qp_sub = $row['qp_sub'];
                                        $qp_sub_code = $row['qp_sub_code'];
                                        $qp_branch = $row['qp_branch'];
                                        $qp_sem = $row['qp_sem'];
                                        $qp_college = $row['qp_college'];
                                        $qp_year = $row['qp_year'];
                                        echo "<tr>";
                                        echo "<td><img src='../../db_images/{$qp_dp}' class='img-responsive' width='100'></td>";
                                        echo "<td>{$qp_title}</td>";
                                        echo "<td>{$qp_sub} {$qp_sub_code}</td>";
                                        echo "<td>{$qp_branch} {$qp_sem} {$qp_year} {$qp_college}</td>";
                                        echo 
                                            "<td>
                                                <form method='post' action='show_qp.php?qp_id={$row['qp_id']}&qp_data=$qp_data'>
                                                    <div class='table-data-feature'>
                                                        <a type='submit' class='item' data-toggle='tooltip' data-placement='top' title='View' name = 'view' href='../../db_files/$qp_data' target='_blank'>
                                                            <i class='zmdi zmdi-eye'></i>
                                                        </a>
                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' href = 'edit_qp.php?qp_id={$row['qp_id']}'>
                                                            <i class='zmdi zmdi-edit'></i>
                                                        </a>
                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='More' href = 'show_qp_more.php?qp_id={$row['qp_id']}'>
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

    <?php include 'includes/footer.php'; ?>

</body>

</html>

<?php
    if(isset($_POST['delete']))
    {
        $file = $_GET['qp_data'];
        if(unlink("../../db_files/".$file))
        {
            echo "Done";
            $qp_id = $_GET['qp_id'];
            $query = "DELETE FROM qp WHERE qp_id = {$qp_id}";
            $delete_query = mysqli_query($connection, $query);
            if(!$delete_query)
            {
                die("QUERY FAILED ".mysqli_error($connection));
            }
            if($delete_query)
            {
                header("Location: show_qp.php");
            }
        }
        else
        {
            die("Failed");
        }
    }
?>