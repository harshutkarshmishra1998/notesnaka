<?php include '../../includes/db.php'; ?>

<?php
    if(isset($_GET['pay_id']))
    {
        $pay_id = $_GET['pay_id'];
        $query = "DELETE FROM pay WHERE pay_id = {$pay_id}";
        $delete_query = mysqli_query($connection, $query);
        if(!$delete_query)
        {
            die("QUERY FAILED ".mysqli_error($connection));
        }

        if($delete_query)
        {
            header("Location: show_pay.php");
        }
    }
?>