<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<?php

    $user_code = $_SESSION['user_code'];
    $user_name = $_SESSION['user_name'];
    $user_email = $_SESSION['user_email'];
    $user_branch = $_SESSION['user_branch'];
    $user_sem = $_SESSION['user_sem'];
    $user_year = $_SESSION['user_year'];
    $user_college = $_SESSION['user_college'];
    $user_password = $_SESSION['user_password'];
    $user_image = $_SESSION['user_image'];
    $new_time = time();
    $user_expire = date("d-m-Y", $new_time);
    $user_expire_month = strtoupper(date("F", $new_time));
    $user_restrict = 0;
    $user_ip = "";

    $options = ['cost' => 12,];
    $user_password = password_hash($user_password, PASSWORD_BCRYPT, $options);

    $query = "INSERT INTO user_profile (user_code ,user_email, user_password, user_name, user_branch, user_sem, user_year, user_college,  user_image, user_expire, user_expire_month, user_restrict, user_ip)";

    $query .= "VALUES('{$user_code}', '{$user_email}', '{$user_password}', '{$user_name}', '{$user_branch}', '{$user_sem}', '{$user_year}', '{$user_college}', '{$user_image}', '{$user_expire}', '{$user_expire_month}', '{$user_restrict}', '{$user_ip}')";

    $create_post_query  = mysqli_query($connection, $query);

    if(!$create_post_query)
    {
        die("QUERY FAILED ".mysqli_error($connection));
    }
    if($create_post_query)
    {
        // echo "Done";
        header("Location: payment.php");
    }
?>