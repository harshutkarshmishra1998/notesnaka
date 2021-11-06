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
                                                <select name="sub_branch" id="select" class="form-control">
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
                                                <select name="sub_sem" id="select" class="form-control">
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
                                                <select name="sub_year" id="select" class="form-control">
                                                    <option value="0">Select Year</option>
                                                    <option value="1">FIRST</option>
                                                    <option value="2">SECOND</option>
                                                    <option value="3">THIRD</option>
                                                    <option value="4">FOURTH</option>
                                                    <option value="5">FIFTH</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-3">
                                                <select name="sub_college" id="select" class="form-control">
                                                    <option value="0">Select College</option>
                                                    <option value="NIT BHOPAL">NIT BHOPAL</option>
                                                    <option value="NIT MEGHALAYA">NIT MEGHALAYA</option>
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
                                                <th>title</th>
                                                <th>subject_code</th>
                                                <th>branch sem year college</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                                if(isset($_POST['submit']))
                                                {
                                                    $sub_branch = $_POST['sub_branch'];
                                                    $sub_sem = $_POST['sub_sem'];
                                                    $sub_year = $_POST['sub_year'];
                                                    $sub_college = $_POST['sub_college'];
                                                    $query = "SELECT * FROM sub WHERE sub_branch LIKE '%$sub_branch%' AND sub_sem LIKE '%$sub_sem%' AND sub_year LIKE '%$sub_year%' AND sub_college LIKE '%$sub_college%'";
                                                    $select_user = mysqli_query($connection, $query);
                                                    while($row = mysqli_fetch_assoc($select_user))
                                                    {
                                                        $sub_title = $row['sub_title'];
                                                        $sub_code = $row['sub_code'];
                                                        echo "<tr>";
                                                        echo "<td>{$sub_title}</td>";
                                                        echo "<td>{$sub_code}</td>";
                                                        echo "<td>{$sub_branch} {$sub_sem} {$sub_year} {$sub_college}</td>";
                                                        echo 
                                                            "<td>
                                                                <form method='post' action='show_subject.php?sub_id={$row['sub_id']}'>
                                                                    <div class='table-data-feature'>
                                                                        <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' href = 'edit_subject.php?sub_id={$row['sub_id']}'>
                                                                            <i class='zmdi zmdi-edit'></i>
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
        $sub_id = $_GET['sub_id'];
        $query = "DELETE FROM sub WHERE sub_id = {$sub_id}";
        $delete_query = mysqli_query($connection, $query);
        if(!$delete_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }

        if($delete_query)
        {
            header("Location: show_sub.php");
        }
    }
?>