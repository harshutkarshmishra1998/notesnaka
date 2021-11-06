<?php
    $user_code = $_GET['user_code'];
    $query = "SELECT * FROM user_profile WHERE user_code = '{$user_code}' ";
    $select_user_query = mysqli_query($connection, $query);

    if(!$select_user_query)
    {
        die("QUERY FAILED"." ".mysqli_error($connection));
    }

    while($row = mysqli_fetch_array($select_user_query))
    {
        $db_user_ip = $row['user_ip'];
    }

    if($db_user_ip != $_SESSION['user_ip'])
    {
        header("Location: ../login/login_user.php");
        exit;
    }
?>
