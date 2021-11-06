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
                                    $query = "SELECT * FROM blog ORDER BY blog_id DESC";
                                    $select_user = mysqli_query($connection, $query);
                                    while($row = mysqli_fetch_assoc($select_user))
                                    {
                                        $blog_dp = $row['blog_dp'];
                                        if(empty($blog_dp))
                                        {
                                            $blog_dp = "default_CaZ45vTe9b.jpg";
                                        }
                                        $blog_data = $row['blog_data'];
                                        $blog_title = $row['blog_title'];
                                        $blog_sub = $row['blog_sub'];
                                        $blog_sub_code = $row['blog_sub_code'];
                                        $blog_branch = $row['blog_branch'];
                                        $blog_sem = $row['blog_sem'];
                                        $blog_college = $row['blog_college'];
                                        $blog_year = $row['blog_year'];
                                        echo "<tr>";
                                        echo "<td><img src='../../db_images/{$blog_dp}' class='img-responsive' width='100'></td>";
                                        echo "<td>{$blog_title}</td>";
                                        echo "<td>{$blog_sub} {$blog_sub_code}</td>";
                                        echo "<td>{$blog_branch} {$blog_sem} {$blog_year} {$blog_college}</td>";
                                        echo 
                                            "<td>
                                                <form method='post' action='show_blog.php?blog_id={$row['blog_id']}&blog_data=$blog_data'>
                                                    <div class='table-data-feature'>
                                                        <a type='submit' class='item' data-toggle='tooltip' data-placement='top' title='View' name = 'view' href='../../db_files/$blog_data' target='_blank'>
                                                            <i class='zmdi zmdi-eye'></i>
                                                        </a>
                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' href = 'edit_blog.php?blog_id={$row['blog_id']}'>
                                                            <i class='zmdi zmdi-edit'></i>
                                                        </a>
                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='More' href = 'show_blog_more.php?blog_id={$row['blog_id']}'>
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
        $file = $_GET['blog_data'];
        if(unlink("../../db_files/".$file))
        {
            echo "Done";
            $blog_id = $_GET['blog_id'];
            $query = "DELETE FROM blog WHERE blog_id = {$blog_id}";
            $delete_query = mysqli_query($connection, $query);
            if(!$delete_query)
            {
                die("QUERY FAILED ".mysqli_error($connection));
            }
            if($delete_query)
            {
                header("Location: show_blog.php");
            }
        }
        else
        {
            die("Failed");
        }
    }
?>