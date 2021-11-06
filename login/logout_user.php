<?php session_start(); ?>
<?php include '../includes/db.php'; ?>

<?php
    $db_user_id = $_SESSION['user_id'];
    $ip = "";
    $query2 = "SELECT * FROM user_profile WHERE user_id = {$db_user_id}";
    $select_ca2 = mysqli_query($connection, $query2);
    $query2 = "UPDATE user_profile SET ";
    $query2 .="user_ip = '{$ip}' ";
    $query2 .= "WHERE user_id = {$db_user_id} ";
    $update_ca2 = mysqli_query($connection, $query2);
    if(!$update_ca2)
    {
        die("Failed to update ".mysqli_error($connection));
    }
    else
    {
        echo ("Done");
    }
    session_destroy();
    header("Location: login_user.php");
    exit();
?>