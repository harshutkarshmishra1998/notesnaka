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
    <h1>FAILED</h1>
    <h2>IF YOU THIS IS A MISTAKE YOU CAN CONTACT US</h2>
    <?php
        $user_name = $_SESSION['user_name'];
        $user_email = $_SESSION['user_email'];
        $user_expire = $_SESSION['user_expire'];
        $renew_duration = $_SESSION['renew_duration'];

        echo "YOUR CREDENTIALS HAVE BEEN MAILED BUT IT IS RESTRICTED UNTIL IT IS SORT OUT ";
        echo "WE HAVE DATA SECURED DON'T WORRY";
        echo "USE YOUR CREDENTIALS TO LOGIN IF AND PAY THERE IF AMOUNT HASN'T BEEN DEDUCTED";
        $sub = "NO REPLY - RENEW FAILED";
        //the message
        $msg = "
Mr/Ms. $user_name,

Your account's expiry period cannot be extended for $renew_duration months.

Thank you.

Regards,
Notes Naka
notesnaka@gmail.com";
        //recipient email
        $rec = $user_email;
        //send email
        if(mail($rec,$sub,$msg))
        {
            echo "SUCCESS";
        }
    ?>

    <?php 
        header("Location: failure/index.html"); 
        exit();
    ?>
</body>

</html>