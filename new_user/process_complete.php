<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>SUCCESS</h1>

    <?php
            $user_name = $_SESSION['user_name'];
            $user_email = $_SESSION['user_email'];
            $user_password = $_SESSION['user_password'];
    ?>

    <?php
        echo "YOUR CREDENTIALS HAVE BEEN MAILED";
        $sub = "NO REPLY - LOGIN CREDENTIALS";
        //the message
        $msg = "
Mr/Ms. $user_name,

That's it! You absolutely crushed it. Your account is all set up and activated. Now's its time to dive in and get started.

All you need to do is click on the link below.

https://www.notesnaka.com/login/login_user.php

Thank you for becoming a part of Notes Naka family.

Thank you.
Regards,
Notes Naka
notesnaka@gmail.com";
        //recipient email
        $rec = $user_email;
        //send email
        mail($rec,$sub,$msg);
    ?>

    <?php session_destroy(); ?>

    <?php
        session_destroy();
        header("Location: success/index.html"); 
        exit();
    ?>
</body>
</html>