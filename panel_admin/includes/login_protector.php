<?php
    if($_SESSION['admin_username'] == "")
    {
        header("Location: ../login/login_admin.php");
        exit;
    }
?>
