<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Notes Naka | OTP Verification</title>
    <link rel="icon" href="images/icon.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" />
    <link rel="stylesheet" href="css/style.css" />
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
            <h2 class="h2">OTP Verification</h2>
            <h3 class="h3">Check your E-MAIL</h3>
            <h3 class="h3">Please Enter the confirmation code below</h3>
            <input type="text" id="text-input" class="form-control" name="otp" placeholder="Enter confirmation code">
            <a href="index.php"><input type="button" name="go back" class="previous" value="Go back" /></a>
            <input type="submit" name="submit" class="next action-button" value="Submit" />
            <?php
                $user_otp = 0;
                $otp = 1;
                if(isset($_POST['submit']))
                {
                    $user_otp = $_SESSION['user_otp'];
                    $otp = mysqli_escape_string($connection, $_POST['otp']);

                    if($otp == $user_otp)
                    {
                        header("Location: create_user_profile.php");
                    }
                    else
                    {
                        echo "<br>PLEASE ENTER CORRECT OTP";
                        die();
                    }
                }
            ?>
        </fieldset>
    </form>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha256-4+XzXVhsDmqanXGHaHvgh1gMQKX40OUvDEBTu8JcmNs=" crossorigin="anonymous"></script>
    <!-- jQuery easing plugin -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"
        type="text/javascript"></script>
    <!-- partial -->
    <script src="js/email.js"></script>
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