<?php include 'includes/header.php'; ?>

<?php
    $user_id = $_GET['user_id'];
    $query2 = "SELECT * FROM user_profile WHERE user_id = {$user_id}";
    $select_ca2 = mysqli_query($connection, $query2);
    while($row = mysqli_fetch_assoc($select_ca2))
    {
        $user_restrict = $row['user_restrict'];
    }

    if($user_restrict == 0)
    {
        $user_restrict = 1;
    }
    elseif($user_restrict == 1)
    {
        $user_restrict = 0;
    }

    $query2 = "UPDATE user_profile SET ";

    $query2 .="user_restrict = '{$user_restrict}' ";
    $query2 .= "WHERE user_id = {$user_id} ";
    $update_ca2 = mysqli_query($connection, $query2);
    if(!$update_ca2)
    {
        die("Failed to update ".mysqli_error($connection));
    }
    elseif($update_ca2)
    {
        header("Location: show_user_expire.php");
    }
?>