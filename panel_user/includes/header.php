<?php ob_start(); ?>
<?php include '../includes/db.php'; ?>
<?php session_start(); ?>

<!DOCTYPE html>
<html>

<head>
    <title>Notes Naka | User Panel</title>
    <link rel="icon" href="images/icon.png">

    <meta name="viewport"
        content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
    <link rel="icon" type="image/png" href="assets/logo.png" />

    <!-- Import lib -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css" />
    <link rel="stylesheet" type="text/css" href="fontawesome-free/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet" />
    <!-- End import lib -->

    <link rel="stylesheet" type="text/css" href="includes/style.css" />
</head>

<?php
    $user_code = "";
    $user_code = $_GET['user_code'];
    $query = "SELECT * FROM user_profile WHERE user_code LIKE '%$user_code%'";
    $select_user = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_user))
    {
        $user_code = $row['user_code'];
        $user_email = $row['user_email'];
        $user_password = $row['user_password'];
        $user_name = $row['user_name'];
        $user_sem = $row['user_sem'];
        $user_branch = $row['user_branch'];
        $user_year = $row['user_year'];
        $user_college = $row['user_college'];
        $user_image = $row['user_image'];
    }
?>