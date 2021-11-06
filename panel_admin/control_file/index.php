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
                                    $query = "SELECT * FROM file ORDER BY file_id DESC";
                                    $select_user = mysqli_query($connection, $query);
                                    while($row = mysqli_fetch_assoc($select_user))
                                    {
                                        $file_dp = $row['file_dp'];
                                        if(empty($file_dp))
                                        {
                                            $file_dp = "default_CaZ45vTe9b.jpg";
                                        }
                                        $file_data = $row['file_data'];
                                        $file_title = $row['file_title'];
                                        $file_sub = $row['file_sub'];
                                        $file_sub_code = $row['file_sub_code'];
                                        $file_branch = $row['file_branch'];
                                        $file_sem = $row['file_sem'];
                                        $file_college = $row['file_college'];
                                        $file_year = $row['file_year'];
                                        echo "<tr>";
                                        echo "<td><img src='../../db_images/{$file_dp}' class='img-responsive' width='100'></td>";
                                        echo "<td>{$file_title}</td>";
                                        echo "<td>{$file_sub} {$file_sub_code}</td>";
                                        echo "<td>{$file_branch} {$file_sem} {$file_year} {$file_college}</td>";
                                        echo 
                                            "<td>
                                                <form method='post' action='show_file.php?file_id={$row['file_id']}&file_data=$file_data'>
                                                    <div class='table-data-feature'>
                                                        <a type='submit' class='item' data-toggle='tooltip' data-placement='top' title='View' name = 'view' href='../../db_files/$file_data' target='_blank'>
                                                            <i class='zmdi zmdi-eye'></i>
                                                        </a>
                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' href = 'edit_file.php?file_id={$row['file_id']}'>
                                                            <i class='zmdi zmdi-edit'></i>
                                                        </a>
                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='More' href = 'show_file_more.php?file_id={$row['file_id']}'>
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
        $file = $_GET['file_data'];
        if(unlink("../../db_files/".$file))
        {
            echo "Done";
            $file_id = $_GET['file_id'];
            $query = "DELETE FROM file WHERE file_id = {$file_id}";
            $delete_query = mysqli_query($connection, $query);
            if(!$delete_query)
            {
                die("QUERY FAILED ".mysqli_error($connection));
            }
            if($delete_query)
            {
                header("Location: show_file.php");
            }
        }
        else
        {
            die("Failed");
        }
    }
?>