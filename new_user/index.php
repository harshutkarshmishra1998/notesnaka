<?php include '../includes/db.php'; ?>
<?php require __DIR__ . '/mailconf.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<?php //header("Location: coming_soon.php"); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notes Naka | Sign Up</title>
    <link rel="icon" href="images/icon.png">
    <link href="css/index.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
</head>

<body>

    <div class="wrapper">
        <!-- <h2>Registration Form</h2> -->
        <div style="text-align: center;">
            <a href="../homepage/"><img src="images/logo.png" width="200"></a>
        </div>
        <div class="form-conteniar">
            <form action="" method="post" enctype="multipart/form-data">
                <div class="input-name">
                    <i class="fa fa-user lock"></i>
                    <input type="text" placeholder="Full Name" class="text-name" name="user_name" required/>
                </div>
                <div class="input-name">
                    <i class="fa fa-envelope email"></i>
                    <input type="email" placeholder="Email" required class="text-name" name="user_email" required/>
                </div>

                <div class="input-name">
                    <i class="fa fa-lock lock"></i> 
                    <input type="password" placeholder="Password" class="text-name" name="user_password" required/>
                </div>

                <div class="input-name">
                    <select class="country" name="user_branch" required>
                        <option value="CSE">CSE</option>
                        <option value="ECE">ECE</option>
                        <option value="EE">EE</option>
                        <option value="ME">ME</option>
                        <option value="CIVIL">CIVIL</option>
                        <option value="CHEM">CHEM</option>
                        <option value="MME">MME</option>
                        <!-- <option value="B.ARCH">B.ARCH</option>
                        <option value="B.PLAN">B.PLAN</option> -->
                    </select>
                    <div class="arrow"></div>
                </div>

                <div class="input-name">
                    <select class="country" name="user_sem" required>
                        <option value="1/2">1/2 SEM</option>
                        <!--<option value="3">3 SEM</option>-->
                        <!--<option value="4">4 SEM</option>-->
                        <!--<option value="5">5 SEM</option>-->
                        <option value="6">6 SEM (ONLY CSE)</option>
                        <!--<option value="7">7 SEM</option>-->
                        <!--<option value="8">8 SEM</option>-->
                        <!-- <option value="9">9</option>
                        <option value="10">10</option> -->
                    </select>
                    <div class="arrow"></div>
                </div>

                <div class="input-name">
                    <select class="country" name="user_year" required>
                        <option value="1">FIRST YEAR</option>
                        <!--<option value="2">SECOND YEAR</option>-->
                        <option value="3">THIRD YEAR</option>
                        <!--<option value="4">FOURTH YEAR</option>-->
                        <!-- <option value="5">FIFTH</option> -->
                    </select>
                    <div class="arrow"></div>
                </div>

                <div class="input-name">
                    <i class="fa fa-university lock" style="font-size: 1.1em;"></i>
                    <input type="text" placeholder=" College" class="text-name" name="user_college" required/>
                </div>

                <div class="input-name">
                    <select class="country" name="pay_duration">
                        <?php
                            $query = "SELECT * FROM pay";
                            $select_query = mysqli_query($connection, $query);
                            while($row = mysqli_fetch_assoc($select_query))
                            {
                                $pay_amount = $row['pay_amount'];
                                $pay_duration = $row['pay_duration'];
                                $pay_discount = $row['pay_discount'];
                                $pay_amount = (100 - $pay_discount)/100 * $pay_amount;
                                echo "<option value='$pay_duration'>$pay_duration months ----- Rs. $pay_amount </option>";
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
                    <input class="button" type="submit" value="Register" name="submit" />
                </div>
            </form>
            <p style="text-align: center;">Already have an account ? <a href="../login/">Login Now!</a></p>
        </div>
    </div>
</body>

</html>

<?php
if(isset($_POST['submit'])) 
{
    $user_code = bin2hex(random_bytes(15))."_user";
    $user_name = mysqli_escape_string($connection, $_POST['user_name']);
    $user_email = mysqli_escape_string($connection, $_POST['user_email']);
    $user_branch = mysqli_escape_string($connection, $_POST['user_branch']);
    $user_sem = mysqli_escape_string($connection, $_POST['user_sem']);
    $user_year = mysqli_escape_string($connection, $_POST['user_year']);
    $user_college = mysqli_escape_string($connection, $_POST['user_college']);
    $user_password = mysqli_escape_string($connection, $_POST['user_password']);
    $user_image = "default_DVcG2eAw3E.jpg";
    $pay_duration = mysqli_escape_string($connection, $_POST['pay_duration']);

    $query = "SELECT * FROM user_profile WHERE user_email LIKE '%$user_email%'";
    $select_query = mysqli_query($connection, $query);
    while($row = mysqli_fetch_assoc($select_query))
    {
        echo "<h1 style='text-align: center;'>Email already in use. Please use a different email address.</h1>";
        die();
    }

    $user_otp = mt_rand(1000,9999);
    //the subject
    $sub = "NO REPLY - EMAIL VERIFICATION";
    //the message
    $msg = "
Mr/Ms. $user_name,
<br>
The OTP for your email address verification is $user_otp.
<br>
Thank you.
<br>
Regards,
<br>
Notes Naka
<br>
notesnaka@gmail.com";
    //recipient email
    $rec = $user_email;
    //send email
    sendmail($sub,$msg,$rec);

    $_SESSION['user_code'] = $user_code;
    $_SESSION['user_name'] = $user_name;
    $_SESSION['user_email'] = $user_email;
    $_SESSION['user_branch'] = $user_branch;
    $_SESSION['user_sem'] = $user_sem;
    $_SESSION['user_year'] = $user_year;
    $_SESSION['user_college'] = $user_college;
    $_SESSION['user_password'] = $user_password;
    $_SESSION['user_image'] = $user_image;
    $_SESSION['user_otp'] = $user_otp;
    $_SESSION['pay_duration'] = $pay_duration;

    header('Location: email_verification.php');
    // header("Location: create_user_profile.php");
}
?>