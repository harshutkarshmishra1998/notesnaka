<?php ob_start(); ?>
<?php include '../includes/db.php'; ?>
<?php session_start(); ?>

<!DOCTYPE html>
<html>

<head>
    <title>NOTES NAKA</title>

    <meta name="viewport"
        content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
    <link rel="icon" type="image/png" href="assets/logo.png" />

</head>

<?php
    $user_code = $_GET['user_code'];
    $data_id = $_GET['data_id'];
    $query = "DELETE FROM user_data WHERE data_id = {$data_id}";
    $delete_query = mysqli_query($connection, $query);
    if(!$delete_query)
    {
        die("QUERY FAILED ".mysqli_error($connection));
    }

    if($delete_query)
    {
        header("Location: index.php?user_code=$user_code");
    }
?>

<?php include 'includes/login_protector.php'; ?>