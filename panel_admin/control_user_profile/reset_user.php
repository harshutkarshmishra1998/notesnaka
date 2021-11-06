<?php include 'includes/header.php'; ?>

<?php
    $user_id = $_GET['user_id'];

    $user_ip = "";

    $query2 = "UPDATE user_profile SET ";

    $query2 .= "user_ip = '{$user_ip}' ";
    
    $query2 .= "WHERE user_id = {$user_id} ";

    $update_ca2 = mysqli_query($connection, $query2);
    if(!$update_ca2)
    {
        die("Failed to update ".mysqli_error($connection));
    }
    elseif($update_ca2)
    {
        header("Location: show_user.php");
    }
?>