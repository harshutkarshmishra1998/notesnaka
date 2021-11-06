<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<!DOCTYPE html>
<html lang="en">

<?php $user_code = $_GET['user_code']; ?>

<?php
    $user_code = $_GET['user_code'];
    $query = "SELECT * FROM user_profile WHERE user_code LIKE '%$user_code%'";
    $select_user = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_user))
    {
        $user_email = $row['user_email'];
        $user_name = $row['user_name'];
        $user_expire = $row['user_expire'];
    }
?>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notes Naka | Renew</title>
    <link rel="icon" href="images/icon.png">
    <link href="css/index.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
</head>

<body>
    <div class="wrapper">
        <!-- <h2>Renew</h2> -->
        <div style="text-align: center;">
            <a href="../homepage/"><img src="images/logo.png" width="200"></a><br>
            <p>*Only for first year students</p>
        </div>
        <div class="form-conteniar">
            <form action="" method="post" enctype="multipart/form-data">
                <div class="input-name">
                    <i class="fa fa-user lock"></i>
                    <input type="text" placeholder="Full Name" class="text-name" value="<?php echo $user_name ?>" disabled/>
                </div>
                <div class="input-name">
                    <i class="fa fa-envelope email"></i>
                    <input type="email" placeholder="Email" required class="text-name" value="<?php echo $user_email ?>" disabled />
                </div>

                <div class="input-name">
                    <i class="fa fa-clock-o lock"></i>
                    <input type="text" placeholder="Expire" class="text-name" value="<?php echo $user_expire ?>" disabled />
                </div>

                <div class="input-name">
                    <select class="country" name="renew_duration">
                        <?php
                            $query = "SELECT * FROM renew";
                            $select_query = mysqli_query($connection, $query);
                            while($row = mysqli_fetch_assoc($select_query))
                            {
                                $renew_amount = $row['renew_amount'];
                                $renew_duration = $row['renew_duration'];
                                $renew_discount = $row['renew_discount'];
                                $renew_amount = (100 - $renew_discount)/100 * $renew_amount;
                                echo "<option value='$renew_duration'>$renew_duration months ----- Rs. $renew_amount </option>";
                            }
                        ?>
                    </select>
                    <div class="arrow"></div>
                </div>

                <div class="input-name">
                    <input type="checkbox" id="cb1" class="chack-button" required />
                    <label for="cb1" class="chack">I agree with <a href="../homepage/terms-conditions.php">Terms & Conditions</a> and <a href="../homepage/privacy-policy.php">Privacy Policy</a></label>
                </div>

                <div class="input-name">
                    <input class="button" type="submit" value="Renew" name="submit" />
                </div>
            </form>
        </div>
    </div>
</body>

</html>

<?php
    if(isset($_POST['submit']))
    {
        $renew_duration = $_POST['renew_duration'];
        
        $_SESSION['renew_duration'] = $renew_duration;
        $_SESSION['user_code'] = $user_code;
        $_SESSION['user_name'] = $user_name;
        $_SESSION['user_email'] = $user_email;
        header("Location: payment.php");
    }
?>