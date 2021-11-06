<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>
<?php
    $user_code = $_GET['user_code'];
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
                                <p>FAV</p>
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>file</th>
                                                <th>title</th>
                                                <th>subject</th>
                                                <th>subject code</th>
                                                <th>branch_year_college</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                                $query = "SELECT * FROM user_data WHERE data_code LIKE '%$user_code%' ORDER BY data_id DESC";
                                                $select_user = mysqli_query($connection, $query);
                                                while($row = mysqli_fetch_assoc($select_user))
                                                {
                                                    $file_data = $row['data_history'];
                                                    $data_id = $row['data_id'];
                                                    if($row['data_fav'] == 0)
                                                    {
                                                        continue;
                                                    }
                                                    $query_2 = "SELECT * FROM file WHERE file_data LIKE '%$file_data%'";
                                                    $select_user_2 = mysqli_query($connection, $query_2);
                                                    while($row = mysqli_fetch_assoc($select_user_2))
                                                    {
                                                        $file_dp = $row["file_dp"];
                                                        if(empty($file_dp))
                                                        {
                                                            $file_dp = "default_CaZ45vTe9b.jpg";
                                                        }
                                                        $file_title = $row["file_title"];
                                                        $file_sub = $row["file_sub"];
                                                        $file_sub_code = $row["file_sub_code"];
                                                        echo "<tr>";
                                                        echo "<td><a href='#'><img  src='../../db_images/{$file_dp}' width='50'></a></td>";
                                                        echo "<td>{$file_title}</td>";
                                                        echo "<td>{$file_sub}</td>";
                                                        echo "<td>{$file_sub_code}</td>";
                                                        echo "<td>{$row['file_branch']}_{$row['file_year']}_{$row['file_college']}</td>";
                                                        echo 
                                                            "<td>
                                                                <form method='post' action='show_user_data_fav.php?user_code={$user_code}&file_data={$file_data}&data_id={$data_id}'>
                                                                    <div class='table-data-feature'>
                                                                        <button type='submit' class='item' data-toggle='tooltip' data-placement='top' title='View' name = 'view'>
                                                                            <i class='zmdi zmdi-eye'></i>
                                                                        </button>
                                                                        <button type='submit' class='item' data-toggle='tooltip' data-placement='top' title='Delete' name = 'delete'>
                                                                            <i class='zmdi zmdi-delete'></i>
                                                                        </button>
                                                                    </div>
                                                                </form>
                                                            </td>";
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

        <?php include 'includes/footer.php'; ?>

</body>

</html>
<?php
    if(isset($_POST['view']))
    {
        $file_data = $_GET['file_data'];
        $data_fav = 0;
        $query = "INSERT INTO user_data (data_code, data_history, data_fav)";
        $query .= "VALUES('{$user_code}', '{$file_data}', '{$data_fav}')";
        $create_post_query  = mysqli_query($connection, $query);

        if(!$create_post_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }
        if($create_post_query)
        {
            echo "OPENED";
            header("Location: ../../db_files/{$file_data}");
            exit();
        }
    }

    if(isset($_POST['delete']))
    {
        $data_id = $_GET['data_id'];
        $query = "DELETE FROM user_data WHERE data_id = {$data_id}";
        $delete_query = mysqli_query($connection, $query);
        if(!$delete_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }

        if($delete_query)
        {
            header("Location: show_user_data_fav.php?user_code={$user_code}");
        }
    }
?>