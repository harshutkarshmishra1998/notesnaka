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
                                        <div class="col-12 col-md-3">
                                                <select name="file_branch" id="select" class="form-control">
                                                    <option value="0">Select Branch</option>
                                                    <option value="ALL">ALL(FIRST YEAR)</option>
                                                    <option value="CSE">CSE</option>
                                                    <option value="ECE">ECE</option>
                                                    <option value="EE">EE</option>
                                                    <option value="ME">ME</option>
                                                    <option value="CIVIL">CIVIL</option>
                                                    <option value="CHEM">CHEM</option>
                                                    <option value="MME">MME</option>
                                                    <option value="B.ARCH">B.ARCH</option>
                                                    <option value="B.PLAN">B.PLAN</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-3">
                                                <select name="file_sem" id="select" class="form-control">
                                                    <option value="0">Select Semester</option>
                                                    <option value="1/2">1/2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-3">
                                                <select name="file_year" id="select" class="form-control">
                                                    <option value="0">Select Year</option>
                                                    <option value="1">FIRST</option>
                                                    <option value="2">SECOND</option>
                                                    <option value="3">THIRD</option>
                                                    <option value="4">FOURTH</option>
                                                    <option value="5">FIFTH</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-3">
                                                <select name="file_college" id="select" class="form-control">
                                                    <option value="0">Select College</option>
                                                    <option value="ALL">NIT BHOPAL (MANIT)</option>
                                                    <option value="ALL">NIT MEGHALAYA</option>
                                                </select>
                                            </div>
                                        </div>
                                            <button type="submit" name="submit"
                                                class="btn btn-primary btn-sm">Submit</button>
                                        </div>
                                    </form>
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
                                                if(isset($_POST['submit']))
                                                {
                                                    $file_branch = $_POST['file_branch'];
                                                    $file_sem = $_POST['file_sem'];
                                                    $file_year = $_POST['file_year'];
                                                    $file_college = $_POST['file_college'];
                                                    $query = "SELECT * FROM file WHERE file_branch LIKE '%$file_branch%' AND file_sem LIKE '%$file_sem%' AND file_year LIKE '%$file_year%' AND file_college LIKE '%$file_college%' ORDER BY file_id DESC";
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