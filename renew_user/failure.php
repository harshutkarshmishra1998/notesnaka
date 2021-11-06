<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $renew_duration = $_GET['renew_duration'];
        $user_code = $_GET['user_code'];
        $query2 = "SELECT * FROM user_profile WHERE user_code LIKE '%$user_code%'";
        $select_ca2 = mysqli_query($connection, $query2);
        while($row = mysqli_fetch_assoc($select_ca2))
        {
            $user_name = $row['user_name'];
            $user_email = $row['user_email'];
            $user_password = $row['user_password'];
            $user_expire = $row['user_expire'];
        }

        $_SESSION['user_name']  = $user_name;
        $_SESSION['user_email'] = $user_email;
        $_SESSION['user_expire'] = $user_expire;
        $_SESSION['renew_duration'] = $renew_duration;
        
        header("Location: process_failed.php");
    ?>
</body>
</html>