<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="failed.css">
</head>

<body>
    <div class="fail_dabba">
        <div class="dabba_1">
    <h1>FAILED</h1>

    
    <?php
        $user_name = $_SESSION['user_name'];
        $user_email = $_SESSION['user_email'];
        $user_password = $_SESSION['user_password'];
        $user_code = $_SESSION['user_code'];
    ?>

    <h2>IF YOU THIS IS A MISTAKE YOU CAN CONTACT US</h2>
    <?php
        $query2 = "SELECT * FROM user_profile WHERE user_code LIKE '%$user_code%'";
        $select_ca2 = mysqli_query($connection, $query2);
        while($row = mysqli_fetch_assoc($select_ca2))
        {
            $user_name = $row['user_name'];
            $user_email = $row['user_email'];
            $user_password = $row['user_password'];
        }
        echo "YOUR CREDENTIALS HAVE BEEN MAILED BUT IT IS RESTRICTED UNTIL IT IS SORT OUT";
        echo "WE HAVE DATA SECURED DON'T WORRY";
        echo "USE YOUR CREDENTIALS TO LOGIN IF AND PAY THERE IF AMOUNT HASN'T BEEN DEDUCTED";
        $sub = "NO REPLY - LOGIN CREDENTIALS";
        //the message
        $msg = "
Mr/Ms. $user_name,

We think that's there is a problem. We haven't received your payment.

Your account is registered but has temporarily been restricted until payments are cleared.

If there was a problem from your side you can use your credentials to login and click on RENEW to re-pay.

If your money has already been charged, feel free to contact us.

Email - notesnaka@gmail.com
Contact Number - 8957946660

Thank you.

Regards,
Notes Naka
notesnaka@gmail.com";
        //recipient email
        $rec = $user_email;
        //send email
        mail($rec,$sub,$msg);
    ?>
    </div>
    <div class="dabba_2">
        <img src="curve.png" alt="">
    </div>
    </div>
</body>

<?php
    session_destroy();
    header("Location: failure/index.html"); 
    exit();
?>

</html>