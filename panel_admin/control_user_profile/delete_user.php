<?php include '../../includes/db.php'; ?>

<?php
    if(isset($_GET['user_id']))
    {
        $user_id = $_GET['user_id'];
        $query = "DELETE FROM user_profile WHERE user_id = {$user_id}";
        $delete_query = mysqli_query($connection, $query);
        if(!$delete_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }

        if($delete_query)
        {
            header("Location: show_user.php");
        }
    }
?>