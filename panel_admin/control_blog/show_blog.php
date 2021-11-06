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
                                            <!--<div class="col-12 col-md-3">-->
                                            <!--    <select name="blog_branch" id="select" class="form-control">-->
                                            <!--        <option value="0">Select Branch</option>-->
                                            <!--        <option value="ALL">ALL(FIRST YEAR)</option>-->
                                            <!--        <option value="CSE">CSE</option>-->
                                            <!--        <option value="ECE">ECE</option>-->
                                            <!--        <option value="EE">EE</option>-->
                                            <!--        <option value="ME">ME</option>-->
                                            <!--        <option value="CIVIL">CIVIL</option>-->
                                            <!--        <option value="CHEM">CHEM</option>-->
                                            <!--        <option value="MME">MME</option>-->
                                            <!--        <option value="B.ARCH">B.ARCH</option>-->
                                            <!--        <option value="B.PLAN">B.PLAN</option>-->
                                            <!--        <option value="MISC">MISC</option>-->
                                            <!--    </select>-->
                                            <!--</div>-->
                                            <!--<div class="col-12 col-md-3">-->
                                            <!--    <select name="blog_sem" id="select" class="form-control">-->
                                            <!--        <option value="0">Select Semester</option>-->
                                            <!--        <option value="1/2">1/2</option>-->
                                            <!--        <option value="3">3</option>-->
                                            <!--        <option value="4">4</option>-->
                                            <!--        <option value="5">5</option>-->
                                            <!--        <option value="6">6</option>-->
                                            <!--        <option value="7">7</option>-->
                                            <!--        <option value="8">8</option>-->
                                            <!--        <option value="9">9</option>-->
                                            <!--        <option value="10">10</option>-->
                                            <!--        <option value="MISC">MISC</option>-->
                                            <!--    </select>-->
                                            <!--</div>-->
                                            <div class="col-12 col-md-6">
                                                <select name="blog_year" id="select" class="form-control">
                                                    <option value="0">Select Year</option>
                                                    <option value="1">FIRST</option>
                                                    <option value="2">SECOND</option>
                                                    <option value="3">THIRD</option>
                                                    <option value="4">FOURTH</option>
                                                    <option value="5">FIFTH</option>
                                                    <option value="MISC">MISC</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <select name="blog_college" id="select" class="form-control">
                                                    <option value="0">Select College</option>
                                                    <option value="ALL">ALL</option>
                                                </select>
                                            </div>
                                        </div>
                                        <button type="submit" name="submit" class="btn btn-primary btn-sm">Submit
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
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
                                        $blog_year = $_POST['blog_year'];
                                        $blog_college = $_POST['blog_college'];
                                        $query = "SELECT * FROM blog WHERE blog_year LIKE '%$blog_year%' AND blog_college LIKE '%$blog_college%' ORDER BY blog_id DESC";
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