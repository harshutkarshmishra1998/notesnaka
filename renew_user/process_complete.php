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
    $user_expire = $_SESSION['user_expire'];
    $renew_duration = $_SESSION['renew_duration'];
?>

<?php
    echo "YOUR CREDENTIALS HAVE BEEN MAILED";
    $sub = "NO REPLY - EXPIRY RENEWED";
    //the message
    $msg = "
Mr/Ms. $user_name,

Your account's expiry period has been extended for $renew_duration months.
Your account will expire on $user_expire.

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
    header("Location: success/index.html"); 
    exit();
?>

</body>
</html>
