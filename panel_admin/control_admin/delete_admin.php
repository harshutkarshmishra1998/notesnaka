<?php include '../../includes/db.php'; ?>

<?php
    if(isset($_GET['admin_id']))
    {
        $admin_id = $_GET['admin_id'];
        $query = "DELETE FROM admins WHERE admin_id = {$admin_id}";
        $delete_query = mysqli_query($connection, $query);
        if(!$delete_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }

        if($delete_query)
        {
            header("Location: show_admin.php");
        }
    }
?>