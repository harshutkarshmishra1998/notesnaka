<?php ob_start(); ?>
<?php include '../../includes/db.php'; ?>
<?php session_start(); ?>

<?php
    $email = mysqli_escape_string($connection, $_GET['email']);
    $password = mysqli_escape_string($connection, $_GET['pcode']); 
?>

<?php
    $query = "SELECT * FROM user_profile WHERE user_email LIKE '%$email%' AND user_password LIKE '%$password%'";
    $select_query = mysqli_query($connection, $query);
    while($row = mysqli_fetch_assoc($select_query))
    {
        $user_id = $row['user_id'];
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Notes Naka | Reset Password</title>
    <link rel="icon" href="icon.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" />
    <link rel="stylesheet" href="./style.css" />
</head>

<body>
    <div class="bgImage"></div>
    <svg class="blobCont">
        <image
            xlink:href="https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?ixlib=rb-0.3.5&s=e20bc3d490c974d9ea190e05c47962f5&auto=format&fit=crop&w=634&q=80"
            mask="url(#mask)" width="100%" height="100%" preserveAspectRatio="xMidYMid slice" />
        <defs>
            <filter id="gooey" height="130%">
                <feGaussianBlur in="SourceGraphic" stdDeviation="15" result="blur" />
                <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7"
                    result="goo" />
            </filter>
        </defs>
        <mask id="mask" x="0" y="0">
            <g style="filter: url(#gooey)">
                <circle class="blob" cx="10%" cy="10%" r="80" fill="white" stroke="white" />
                <circle class="blob" cx="50%" cy="10%" r="40" fill="white" stroke="white" />
                <circle class="blob" cx="17%" cy="15%" r="70" fill="white" stroke="white" />
                <circle class="blob" cx="90%" cy="20%" r="120" fill="white" stroke="white" />
                <circle class="blob" cx="30%" cy="25%" r="30" fill="white" stroke="white" />
                <circle class="blob" cx="50%" cy="60%" r="80" fill="white" stroke="white" />
                <circle class="blob" cx="70%" cy="90%" r="10" fill="white" stroke="white" />
                <circle class="blob" cx="90%" cy="60%" r="90" fill="white" stroke="white" />
                <circle class="blob" cx="30%" cy="90%" r="80" fill="white" stroke="white" />
                <circle class="blob" cx="10%" cy="10%" r="80" fill="white" stroke="white" />
                <circle class="blob" cx="50%" cy="10%" r="20" fill="white" stroke="white" />
                <circle class="blob" cx="17%" cy="15%" r="70" fill="white" stroke="white" />
                <circle class="blob" cx="40%" cy="20%" r="120" fill="white" stroke="white" />
                <circle class="blob" cx="30%" cy="25%" r="30" fill="white" stroke="white" />
                <circle class="blob" cx="80%" cy="60%" r="80" fill="white" stroke="white" />
                <circle class="blob" cx="17%" cy="10%" r="100" fill="white" stroke="white" />
                <circle class="blob" cx="40%" cy="60%" r="90" fill="white" stroke="white" />
                <circle class="blob" cx="10%" cy="50%" r="80" fill="white" stroke="white" />
            </g>
        </mask>
    </svg>

    <!-- partial:index.partial.html -->
    <!-- multistep form -->
    <form method="post" action="" id="msform">
        <!-- step 2 -->
        <fieldset>
            <h2 class="h2">CHANGE PASSWORD</h2>
            <h3 class="h3">Please Enter New Password</h3>
            <input type="password" name="user_password" placeholder="Enter new password" />
            <input type="submit" name="submit" class="next action-button" value="Submit" />
        </fieldset>
    </form>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha256-4+XzXVhsDmqanXGHaHvgh1gMQKX40OUvDEBTu8JcmNs=" crossorigin="anonymous"></script>
    <!-- jQuery easing plugin -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"
        type="text/javascript"></script>
    <!-- partial -->
    <script src="./script.js"></script>
    <script type="257be86a981729866f2fa61c-text/javascript">
    (function(i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function() {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-83834093-1', 'auto');
    ga('send', 'pageview');
    </script>
</body>

</html>

<?php
    if(isset($_POST['submit']))
    {
        $user_password = $_POST['user_password'];
        $options = ['cost' => 12,];
        $user_password = password_hash($user_password, PASSWORD_BCRYPT, $options);
        $user_password = mysqli_escape_string($connection, $user_password);

        $query = "UPDATE user_profile SET ";
        $query .="user_password = '{$user_password}' ";
        $query .= "WHERE user_id = {$user_id} ";

        $update_user = mysqli_query($connection, $query);
        $update_user = true;
        if(!$update_user)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_user)
        {
            // echo "Successfully updated";
            header("Location: http://www.notesnaka.com");
            exit;
        }
    }
?>