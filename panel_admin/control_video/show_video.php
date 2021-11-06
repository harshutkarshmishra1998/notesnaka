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
                                                <select name="video_branch" id="select" class="form-control">
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
                                                <select name="video_sem" id="select" class="form-control">
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
                                                <select name="video_year" id="select" class="form-control">
                                                    <option value="0">Select Year</option>
                                                    <option value="1">FIRST</option>
                                                    <option value="2">SECOND</option>
                                                    <option value="3">THIRD</option>
                                                    <option value="4">FOURTH</option>
                                                    <option value="5">FIFTH</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-3">
                                                <select name="video_college" id="select" class="form-control">
                                                    <option value="0">Select College</option>
                                                    <option value="ALL">ALL</option>
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
                                                    $video_branch = $_POST['video_branch'];
                                                    $video_sem = $_POST['video_sem'];
                                                    $video_year = $_POST['video_year'];
                                                    $video_college = $_POST['video_college'];
                                                    $query = "SELECT * FROM video WHERE video_branch LIKE '%$video_branch%' AND video_sem LIKE '%$video_sem%' AND video_year LIKE '%$video_year%' AND video_college LIKE '%$video_college%' ORDER BY blog_id DESC";
                                                    $select_user = mysqli_query($connection, $query);
                                                    while($row = mysqli_fetch_assoc($select_user))
                                                    {
                                                        $video_dp = $row['video_dp'];
                                                        if(empty($video_dp))
                                                        {
                                                            $video_dp = "default_CaZ45vTe9b.jpg";
                                                        }
                                                        $video_data = $row['video_data'];
                                                        $video_title = $row['video_title'];
                                                        $video_sub = $row['video_sub'];
                                                        $video_sub_code = $row['video_sub_code'];
                                                        echo "<tr>";
                                                        echo "<td><img src='../../db_images/{$video_dp}' class='img-responsive' width='100'></td>";
                                                        echo "<td>{$video_title}</td>";
                                                        echo "<td>{$video_sub} {$video_sub_code}</td>";
                                                        echo "<td>{$video_branch} {$video_sem} {$video_year} {$video_college}</td>";
                                                        echo 
                                                            "<td>
                                                                <form method='post' action='show_video.php?video_id={$row['video_id']}'>
                                                                    <div class='table-data-feature'>
                                                                        <a type='submit' class='item' data-toggle='tooltip' data-placement='top' title='View' name = 'view' href='$video_data' target='_blank'>
                                                                            <i class='zmdi zmdi-eye'></i>
                                                                        </a>
                                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' href = 'edit_video.php?video_id={$row['video_id']}'>
                                                                            <i class='zmdi zmdi-edit'></i>
                                                                        </a>
                                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='More' href = 'show_video_more.php?video_id={$row['video_id']}'>
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
        $video_id = $_GET['video_id'];
        $query = "DELETE FROM video WHERE video_id = {$video_id}";
        $delete_query = mysqli_query($connection, $query);
        if(!$delete_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }

        if($delete_query)
        {
            header("Location: show_video.php");
        }
    }
?>