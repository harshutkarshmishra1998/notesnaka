<style>
    @import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap');

    * 
    {
        font-family: 'Poppins', sans-serif;
    }
</style>

<?php ob_start(); ?>
<?php include '../includes/db.php'; ?>
<?php require __DIR__ . '/mailconf.php'; ?>
<?php session_start(); ?>

<h1></h1>

<?php
    $user_name = $_SESSION['user_name'];
    $user_email = $_SESSION['user_email'];
    $user_password = $_SESSION['user_password'];
    $rcode = $_SESSION['rcode'];

    //the subject
    $sub = "NO REPLY - PASSWORD CHANGE";
    //the message
    $msg = "
Dear $user_name,
<br>
Please follow the link below to change your password
<br>
https://notesnaka.com/panel_user/change_password/index.php?email=$user_email&pcode=$user_password&rcode=$rcode
<br>
Thank you.
<br>
Regards,
<br>
Notes Naka
<br>
notesnaka@gmail.com";
    //recipient email
    $rec = $user_email;
    //send email
    if(sendmail($sub,$msg,$rec))
    {
        echo "<h1>Link to change your password is sent on your mail</h1>";
        echo "<br>";
        echo "Didn't Recive the mail? <a href='mailer.php'>Resend it !</a>";
    }
    else
    {
        echo "<h1>OOPS! Something went wrong</h1>";
        echo "<br>";
        echo "<h1>Please try again later</h1>";
    }
?>