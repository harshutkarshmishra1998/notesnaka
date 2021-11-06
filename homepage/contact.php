<?php include '../includes/db.php'; ?>

<?php
    $name = mysqli_escape_string($connection, $_POST['name']);
    $email = mysqli_escape_string($connection, $_POST['email']);
    $message = mysqli_escape_string($connection, $_POST['message']);

    $query = "INSERT INTO contact (name, email, message)";
    $query .= " VALUES('{$name}', '{$email}', '{$message}')";
    $create = mysqli_query($connection, $query);
    if(!$create)
    {
        die("QUERY FAILED ".mysqli_error($connection));
        header("Location: response/oops.php");
    }
    else
    {
        header("Location: response/thank_you.php");
    }

?>