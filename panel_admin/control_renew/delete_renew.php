<?php include '../../includes/db.php'; ?>

<?php
    if(isset($_GET['renew_id']))
    {
        $renew_id = $_GET['renew_id'];
        $query = "DELETE FROM renew WHERE renew_id = {$renew_id}";
        $delete_query = mysqli_query($connection, $query);
        if(!$delete_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }

        if($delete_query)
        {
            header("Location: show_renew.php");
        }
    }
?>