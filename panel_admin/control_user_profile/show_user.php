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
                                                <select name="user_branch" id="select" class="form-control">
                                                    <option value="0">Select Branch</option>
                                                    <!-- <option value="ALL">ALL(FIRST YEAR)</option> -->
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
                                                <select name="user_sem" id="select" class="form-control">
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
                                                <select name="user_year" id="select" class="form-control">
                                                    <option value="0">Select Year</option>
                                                    <option value="1">FIRST</option>
                                                    <option value="2">SECOND</option>
                                                    <option value="3">THIRD</option>
                                                    <option value="4">FOURTH</option>
                                                    <option value="5">FIFTH</option>
                                                </select>
                                            </div>
                                            <!--<div class="col-12 col-md-3">-->
                                            <!--    <select name="user_college" id="select" class="form-control">-->
                                            <!--        <option value="0">Select College</option>-->
                                            <!--        <option value="MANIT">MANIT</option>-->
                                            <!--    </select>-->
                                            <!--</div>-->
                                        </div>
                                        <button type="submit" name="submit" class="btn btn-primary btn-sm">Submit
                                        </button>
                                    </form>
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>name</th>
                                                <th>branch sem year college</th>
                                                <th>expiry</th>
                                                <th>status</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                if(isset($_POST['submit']))
                                                {
                                                    $user_branch = $_POST['user_branch'];
                                                    $user_sem = $_POST['user_sem'];
                                                    $user_year = $_POST['user_year'];
                                                    $query = "SELECT * FROM user_profile WHERE user_branch LIKE '$user_branch' AND user_sem LIKE '%$user_sem%' AND user_year LIKE '%$user_year%'";
                                                    $select_user = mysqli_query($connection, $query);
                                            
                                                    while($row = mysqli_fetch_assoc($select_user))
                                                    {
                                                        $user_college = $row['user_college'];
                                                        echo "<tr>";
                                                        echo "<td>{$row['user_name']}</td>";
                                                        echo "<td>{$row['user_branch']} {$row['user_sem']} {$row['user_year']} {$row['user_college']}</td>";
                                                        echo "<td>{$row['user_expire']}</td>";
                                                        if($row['user_restrict'] == 0)
                                                        {
                                                            echo "<td>Unrestricted</td>";
                                                        }
                                                        if($row['user_restrict'] == 1)
                                                        {
                                                            echo "<td>Restricted</td>";
                                                        }
                                                        echo 
                                                        "<td>
                                                            <form method='post' action=''>
                                                                <div class='table-data-feature'>
                                                                    <a class='item' data-toggle='tooltip' data-placement='top' title='Edit' name = 'edit' href = 'edit_user.php?user_id={$row['user_id']}'>
                                                                        <i class='zmdi zmdi-edit'></i>
                                                                    </a>
                                                                    <a class='item' data-toggle='tooltip' data-placement='top' title='More' href = 'show_user_more.php?user_id={$row['user_id']}'>
                                                                        <i class='zmdi zmdi-more'></i>
                                                                    </a>
                                                                    <a class='item' data-toggle='tooltip' data-placement='top' title='Delete' href = 'delete_user.php?user_id={$row['user_id']}'>
                                                                        <i class='zmdi zmdi-delete'></i>
                                                                    </a>
                                                                    <a class='item' data-toggle='tooltip' data-placement='top' title='Reset' href = 'reset_user.php?user_id={$row['user_id']}'>
                                                                        <i class='zmdi zmdi-undo'></i>
                                                                    </a>
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
                        <div class="row m-t-30">
                            <div class="col-md-12">
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