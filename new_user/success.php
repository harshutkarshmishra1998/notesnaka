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
    <?php $pay_time = $_GET['pay_duration']; ?>

    <?php
        $user_code = $_GET['user_code'];
        $query2 = "SELECT * FROM user_profile WHERE user_code LIKE '%$user_code%'";
        $select_ca2 = mysqli_query($connection, $query2);
        while($row = mysqli_fetch_assoc($select_ca2))
        {
            $user_id = $row['user_id'];
            $user_name = $row['user_name'];
            $user_email = $row['user_email'];
            $user_password = $row['user_password'];
        }

        $user_restrict = 0;

        $time = time();
        $pay_duration = $pay_time;
        $pay_duration_2 = $pay_duration.' month';
        $new_time = strtotime($pay_duration_2, $time);

        $user_expire = date("d-m-Y", $new_time);
        $user_expire_month = strtoupper(date("F", $new_time));

        $query2 = "UPDATE user_profile SET ";

        $query2 .= "user_expire = '{$user_expire}', ";
        $query2 .= "user_expire_month = '{$user_expire_month}', ";
        $query2 .= "user_restrict = '{$user_restrict}' ";
        $query2 .= "WHERE user_id = {$user_id} ";

        $update_ca2 = mysqli_query($connection, $query2);
        if(!$update_ca2)
        {
            die("Failed to update ".mysqli_error($connection));
        }
        elseif($update_ca2)
        {
            $_SESSION['user_name'] = $user_name;
            $_SESSION['user_email'] = $user_email;
            $_SESSION['user_password'] = $user_password;
            header("Location: process_complete.php");
        }
    ?>

</body>
</html>