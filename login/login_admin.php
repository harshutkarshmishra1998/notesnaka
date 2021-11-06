<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<!DOCTYPE html>
<html>

<head>
    <title>Notes Naka | Admin Login</title>
    <link rel="icon" href="images/icon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript">
    addEventListener("load", function() {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }
    </script>
    <script type="application/x-javascript">
    function on() {
        document.getElementById("overlay").style.display = "block";
    }

    function off() {
        document.getElementById("overlay").style.display = "none";
    }
    </script>
    <!-- Custom Theme files -->
    <link href="css/forgot_password.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
    <!-- //web font -->
</head>

<body>
    <!-- main -->
    <div class="main-w3layouts wrapper">
        <h1>ADMIN LOGIN</h1>
        <br>
        <div class="main-agileinfo">
            <div class="agileits-top">
                <form action="" method="post">
                    <input class="text" type="text" name="admin_username" placeholder="Enter your username" required="">
                    <br>
                    <input class="text" type="password" name="admin_password" placeholder="Enter your password"
                        required="">
                    <br>
                    <div class="wthree-text">
                        <div class="clear"> </div>
                    </div>
                    <input type="submit" value="LOGIN" name="login">
                </form>
                <p><a href="forgot_password_admin.php"> Forgot Password ?</a></p>
            </div>
        </div>
        <ul class="colorlib-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <!-- //main -->
</body>

<?php
if(isset($_POST['login']))
{
    $username = $_POST['admin_username'];
    $password = $_POST['admin_password'];
    
    $username = mysqli_real_escape_string($connection, $username);
    $password = mysqli_real_escape_string($connection, $password);

    $query = "SELECT * FROM admins WHERE admin_username = '{$username}' ";
    $select_admin_query = mysqli_query($connection, $query);

    if(!$select_admin_query)
    {
        die("QUERY FAILED"." ".mysqli_error($connection));
    }

    $db_admin_id = "";
    $db_admin_name = "";
    $db_admin_username = "";
    $db_admin_password = "";

    while($row = mysqli_fetch_array($select_admin_query))
    {
        $db_admin_id = $row['admin_id'];
        $db_admin_name = $row['admin_name'];
        $db_admin_email = $row['admin_email'];
        $db_admin_username = $row['admin_username'];
        $db_admin_password = $row['admin_password'];
    }

    if(password_verify($password, $db_admin_password))
    {
        $_SESSION['admin_id'] = $db_admin_id;
        $_SESSION['admin_name'] = $db_admin_name;
        $_SESSION['admin_email'] = $db_admin_email;
        $_SESSION['admin_username'] = $db_admin_username;
        $_SESSION['admin_password'] = $db_admin_password;
        header("Location: ../panel_admin/");
        exit;
    }

    else
    {
        echo "<div id='overlay' onclick='off()' >
                <div class='overlay' ></div>
                    <div class='modal_1'>
                    <img src='images/error.png' width='200'>
                    <h5 style='text-align: center; font-weight: bold;'>INVALID USERNAME OR PASSWORD</h5>
                </div>
            </div>";
    }
}
?>