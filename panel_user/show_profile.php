<?php include 'includes/header.php'; ?>
<?php include 'includes/login_protector.php'; ?>

<?php $user_code = $_GET['user_code']; ?>

<?php
    $user_code = $_GET['user_code'];
    $query = "SELECT * FROM user_profile WHERE user_code LIKE '%$user_code%'";
    $select_user = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_user))
    {
        $user_code = $row['user_code'];
        $user_email = $row['user_email'];
        $user_password = $row['user_password'];
        $user_name = $row['user_name'];
        $user_branch = $row['user_branch'];
        $user_sem = $row['user_sem'];
        $user_year = $row['user_year'];
        $user_college = $row['user_college'];
        $user_image = $row['user_image'];
        $user_expire = $row['user_expire'];
    }
?>

<body class="overlay-scrollbar">

    <?php include 'includes/navbar.php'; ?>

    <?php include 'includes/sidebar.php'; ?>

    <!-- main content -->
    <div class="wrapper">
        <div class="row">
            <div class="row">
                <div class="col-4 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header"></div>
                        <div class="card-content">
                            <img src="../db_images/<?php echo $user_image ?>" class="img-responsive" width="200">
                        </div>
                    </div>
                </div>
                <div class="col-8 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Basic Info</h3>
                        </div>
                        <div class="card-content">
                            <table>
                                <tbody>
                                    <tr>
                                        <th>Name</th>
                                        <td><?php echo $user_name ?></td>

                                        <th>Branch</th>
                                        <td><?php echo $user_branch ?></td>
                                    </tr>
                                    <tr>
                                        <th>Email</th>
                                        <td><?php echo $user_email ?></td>

                                        <th>Semester</th>
                                        <td><?php echo $user_sem ?></td>
                                    </tr>
                                    <tr>
                                        <th>Password</th>
                                        <?php
                                            $rcode = bin2hex(random_bytes(15));
                                            $_SESSION['rcode'] = $rcode;
                                        ?>
                                        <td><a
                                                href="mailer.php?user_email=<?php echo $user_email ?>&pcode=<?php echo $user_password ?>&rcode=<?php echo $rcode ?>">Change
                                                Password</a></td>

                                        <th>Year</th>
                                        <td><?php echo $user_year ?></td>
                                    </tr>
                                    <tr>
                                        <th>Expires On</th>
                                        <td><?php echo $user_expire ?><a
                                                href="../renew_user/index.php?user_code=<?php echo $user_code ?>">
                                                (Renew) </a></td>

                                        <th>College</th>
                                        <td><?php echo $user_college ?></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-content">
                            <h2>NOTICE</h2>
                            <p>Notes Naka is available only for First Year Students.</p>
                            <p>We at NotesNaka aim to promote collaborative and creative methods of understanding via
                                the latest technology and innovation ideation. This platform was created to help all
                                B.Tech students with semester exams and exploring domains of coding & development.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main content -->
    <!-- import script -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <script src="includes/index.js"></script>
    <!-- end import script -->

</body>

</html>