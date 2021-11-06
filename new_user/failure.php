<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $user_code = $_GET['user_code'];
        $query2 = "SELECT * FROM user_profile WHERE user_code LIKE '%$user_code%'";
        $select_ca2 = mysqli_query($connection, $query2);
        while($row = mysqli_fetch_assoc($select_ca2))
        {
            $user_name = $row['user_name'];
            $user_email = $row['user_email'];
            $user_password = $row['user_password'];
        }
        $_SESSION['user_name'] = $user_name;
        $_SESSION['user_email'] = $user_email;
        $_SESSION['user_password'] = $user_password;
        $_SESSION['user_code'] = $user_code;
        header("Location: process_failed.php");
    ?>
</body>
</html>