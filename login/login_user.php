<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<?php
    function getUserIP()
    {
        // Get real visitor IP behind CloudFlare network
        if (isset($_SERVER["HTTP_CF_CONNECTING_IP"])) 
        {
            $_SERVER['REMOTE_ADDR'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
            $_SERVER['HTTP_CLIENT_IP'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
        }
        $client  = @$_SERVER['HTTP_CLIENT_IP'];
        $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
        $remote  = $_SERVER['REMOTE_ADDR'];

        if(filter_var($client, FILTER_VALIDATE_IP))
        {
            $ip = $client;
        }
        elseif(filter_var($forward, FILTER_VALIDATE_IP))
        {
            $ip = $forward;
        }
        else
        {
            $ip = $remote;
        }

        return $ip;
    }
?>

<!DOCTYPE html>
<html>

<head>
    <title>Notes Naka | User Login</title>
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
        <h1>USER LOGIN</h1>
        <br>
        <div class="main-agileinfo">
            <div class="agileits-top">
                <form action="" method="post">
                    <input class="text" type="email" name="user_email" placeholder="Enter your email address"
                        required="">
                    <br>
                    <input class="text" type="password" name="user_password" placeholder="Enter password" required="">
                    <br>
                    <div class="wthree-text">
                        <div class="clear"> </div>
                    </div>
                    <input type="submit" value="LOGIN" name="login">
                    <!-- <div class="wthree-text">
                        <div class="clear"> </div>
                    </div> -->
                    <input type="submit" value="LOGOUT FROM ALL DEVICES" name="logout">
                </form>
                <p><a href="forgot_password.php"> Forgot Password ?</a></p>
                <br>
                <p>Don't have an account ? <a href="../new_user/"> Sign Up Now!</a></p>
                <br>
                <p><a href="../homepage/">Go To Homepage</a></p>
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
</body>

<?php
    $email = "";
    $password = "";
?>

<?php
    if(isset($_POST['login']))
    {
        $email = $_POST['user_email'];
        $password = $_POST['user_password'];
        $ip = getUserIP();
        
        $email = mysqli_real_escape_string($connection, $email);
        $password = mysqli_real_escape_string($connection, $password);
        $ip = mysqli_real_escape_string($connection, $ip);
        
        $db_user_id = "";
        $db_user_name = "";
        $db_user_email = "";
        $db_user_password = "";
        $db_user_code = "";
        $db_user_restrict = 0;
        $db_user_expire = "";

        $query = "SELECT * FROM user_profile WHERE user_email = '{$email}'";
        $select_user_query = mysqli_query($connection, $query);

        if(!$select_user_query)
        {
            die("QUERY FAILED"." ".mysqli_error($connection));
        }

        while($row = mysqli_fetch_array($select_user_query))
        {
            $db_user_id = $row['user_id'];
            $db_user_name = $row['user_name'];
            $db_user_email = $row['user_email'];
            $db_user_password = $row['user_password'];
            $db_user_code = $row['user_code'];
            $db_user_restrict = $row['user_restrict'];
            $db_user_expire = $row['user_expire'];
            $db_user_ip = $row['user_ip'];
        }

        if(!password_verify($password, $db_user_password)) 
        {
            echo "<div id='overlay' onclick='off()' >
                <div class='overlay' ></div>
                    <div class='modal_1'>
                    <img src='images/error.png' width='200'>
                    <h5 style='text-align: center; font-weight: bold;'>INVALID EMAIL OR PASSWORD</h5>
                </div>
            </div>";
            die();
        }

        if($db_user_restrict == 1)
        {
            echo "<div id='overlay' onclick='off()' >
                    <div class='overlay' ></div>
                        <div class='modal_2'>
                        <img src='images/error.png' width='200'>
                        <h5 style='text-align: center; font-weight: bold;'>YOUR ACCOUNT IS RESTRICTED !</h5>
                        <h5 style='text-align: center; font-weight: bold;'>FEEL FREE TO CONTACT US</h5>
                        <h5 style='text-align: center; font-weight: bold;'><a href='mailto: notesnaka@gmail.com'>Contact Us</a></h5>
                    </div>
                </div>";
            die();
        }

        if(strtotime($db_user_expire) < time())
        {
            echo "<div id='overlay' onclick='off()' >
                    <div class='overlay' ></div>
                        <div class='modal_2'>
                        <img src='images/error.png' width='200'>
                        <h5 style='text-align: center; font-weight: bold;'>YOUR ACCOUNT IS EXPIRED OR PAYMENT HASN'T BEEN CLEARED</h5>
                        <h5 style='text-align: center; font-weight: bold;'><a href='../renew_user/index.php?user_code=$db_user_code'>CLICK HERE TO RENEW</a></h5>
                        <h5 style='text-align: center; font-weight: bold;'>FEEL FREE TO CONTACT US</h5>
                        <h5 style='text-align: center; font-weight: bold;'><a href='mailto: notesnaka@gmail.com'>Contact Us</a></h5>
                    </div>
                </div>";
            die();
        }
        
        if($db_user_ip == $ip || $db_user_ip == "")
        {
            $_SESSION['user_id'] = $db_user_id;
            $_SESSION['user_name'] = $db_user_name;
            $_SESSION['user_email'] = $db_user_email;
            $_SESSION['user_password'] = $db_user_password;
            $_SESSION['user_code'] = $db_user_code;
            $_SESSION['user_ip'] = $db_user_ip;

            if($db_user_ip == "")
            {
                $query2 = "SELECT * FROM user_profile WHERE user_id = {$db_user_id}";
                $select_ca2 = mysqli_query($connection, $query2);
                $query2 = "UPDATE user_profile SET ";
                $query2 .="user_ip = '{$ip}' ";
                $query2 .= "WHERE user_id = {$db_user_id} ";
                $update_ca2 = mysqli_query($connection, $query2);
                if(!$update_ca2)
                {
                    die("Failed to update ".mysqli_error($connection));
                }
            }

            header("Location: ../panel_user/index.php?user_code=$db_user_code");
            exit;
        }

        elseif($db_user_ip != $ip)
        {
            echo "<div id='overlay' onclick='off()' >
                    <div class='overlay' ></div>
                        <div class='modal_2'>
                        <img src='images/error.png' width='200'>
                        <h5 style='text-align: center; font-weight: bold;'>OOPS! IT LOOKS LIKE YOU ARE USING IT IN ANOTHER DEVICE !</h5>
                        <h5 style='text-align: center; font-weight: bold;'>CLICK ON LOGOUT OF ALL DEVICES</h5>
                    </div>
                </div>";
        }
    }
?>

<?php 
    if(isset($_POST['logout']))
    {
        $email = $_POST['user_email'];
        $password = $_POST['user_password'];
        
        $email = mysqli_real_escape_string($connection, $email);
        $password = mysqli_real_escape_string($connection, $password);

        $db_user_id = "";
        $db_user_name = "";
        $db_user_email = "";
        $db_user_password = "";
        $db_user_code = "";
        $db_user_ip = "";
        $db_user_restrict = 0;

        $query = "SELECT * FROM user_profile WHERE user_email = '{$email}'";
        $select_user_query = mysqli_query($connection, $query);

        if(!$select_user_query)
        {
            die("QUERY FAILED"." ".mysqli_error($connection));
        }

        while($row = mysqli_fetch_array($select_user_query))
        {
            $db_user_id = $row['user_id'];
            $db_user_name = $row['user_name'];
            $db_user_email = $row['user_email'];
            $db_user_password = $row['user_password'];
            $db_user_code = $row['user_code'];
            $db_user_ip = $row['user_ip'];
            $db_user_expire = $row['user_expire'];
            $db_user_restrict = $row['user_restrict'];
        }
    
        if(!password_verify($password, $db_user_password)) 
        {
            echo "<div id='overlay' onclick='off()' >
                <div class='overlay' ></div>
                    <div class='modal_1'>
                    <img src='images/error.png' width='200'>
                    <h5 style='text-align: center; font-weight: bold;'>INVALID EMAIL OR PASSWORD</h5>
                </div>
            </div>";
            die();
        }

        if($db_user_restrict == 1)
        {
            echo "<div id='overlay' onclick='off()' >
                    <div class='overlay' ></div>
                        <div class='modal_2'>
                        <img src='images/error.png' width='200'>
                        <h5 style='text-align: center; font-weight: bold;'>YOUR ACCOUNT IS RESTRICTED !</h5>
                        <h5 style='text-align: center; font-weight: bold;'>FEEL FREE TO CONTACT US</h5>
                        <h5 style='text-align: center; font-weight: bold;'><a href='mailto: notesnaka@gmail.com'>Contact Us</a></h5>
                    </div>
                </div>";
            die();
        }

        if(strtotime($db_user_expire) < time())
        {
            echo "<div id='overlay' onclick='off()' >
                    <div class='overlay' ></div>
                        <div class='modal_2'>
                        <img src='images/error.png' width='200'>
                        <h5 style='text-align: center; font-weight: bold;'>YOUR ACCOUNT IS EXPIRED OR PAYMENT HASN'T BEEN CLEARED</h5>
                        <h5 style='text-align: center; font-weight: bold;'><a href='../renew_user/index.php?user_code=$db_user_code'>CLICK HERE TO RENEW</a></h5>
                        <h5 style='text-align: center; font-weight: bold;'>FEEL FREE TO CONTACT US</h5>
                        <h5 style='text-align: center; font-weight: bold;'><a href='mailto: notesnaka@gmail.com'>Contact Us</a></h5>
                    </div>
                </div>";
            die();
        }

        if(true)
        {
            $query2 = "SELECT * FROM user_profile WHERE user_id = {$db_user_id}";
            $select_ca2 = mysqli_query($connection, $query2);
            $user_ip = getUserIP();

            $query2 = "UPDATE user_profile SET ";

            $query2 .="user_ip = '{$user_ip}' ";
            $query2 .= "WHERE user_id = {$db_user_id} ";
            $update_ca2 = mysqli_query($connection, $query2);
            if(!$update_ca2)
            {
                die("Failed to update ".mysqli_error($connection));
            }
            elseif($update_ca2)
            {
                echo "<div id='overlay' onclick='off()' >
                    <div class='overlay' ></div>
                        <div class='modal_1'>
                        <img src='images/success.png' width='200'>
                        <h5 style='text-align: center; font-weight: bold;'>SUCESSFULLY LOGGED OUT OF ALL DEVICES !</h5>
                    </div>
                </div>";
                
            }
        }
        elseif(!password_verify($password, $db_user_password))
        {
            echo "<div id='overlay' onclick='off()' >
                    <div class='overlay' ></div>
                        <div class='modal_1'>
                        <img src='images/error.png' width='200'>
                        <h5 style='text-align: center; font-weight: bold;'>INVALID EMAIL OR PASSWORD</h5>
                    </div>
                </div>";
            die();
        }
    }
?>