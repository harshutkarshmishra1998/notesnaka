<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<?php
    $pay_duration = $_SESSION['pay_duration'];
    $pay_amount = 100;
    $query = "SELECT * FROM pay WHERE pay_duration LIKE '%$pay_duration%'";
    $select_ca = mysqli_query($connection, $query);
    while($row = mysqli_fetch_assoc($select_ca))
    {
        $pay_amount = $row["pay_amount"];
        $pay_discount = $row["pay_discount"];
        $pay_discount_name = $row["pay_discount_name"];
    }
?>

<?php
    $pay_amount_display = $pay_amount;
    $pay_amount = (100 - $pay_discount)/100 * $pay_amount;
?>

<?php
// Merchant key here as provided by Payu
$MERCHANT_KEY = "C5UgFd";
$SALT = "VtJ2cMfmZJ0hmVWtIVJmCDEJl5nLcXZ7";
$txnid=bin2hex(random_bytes(20));
$name=$_SESSION['user_name'];
$email=$_SESSION['user_email'];
$user_code = $_SESSION['user_code'];
$amount = $pay_amount;
// $phone="8957946660";
$surl="https://www.notesnaka.com/new_user/success.php?user_code=$user_code&pay_duration=$pay_duration"; //success URL
$furl="https://www.notesnaka.com/new_user/failure.php?user_code=$user_code&pay_duration=$pay_duration"; //failure URL
// $productInfo="Notes Naka";
$productInfo="Notes Naka's Subscription";

// Merchant Salt as provided by Payu

$hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
$hashString=$MERCHANT_KEY."|".$txnid."|".$amount."|".$productInfo."|".$name."|".$email."|||||||||||".$SALT;
$hash = strtolower(hash('sha512', $hashString));
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notes Naka | Sign Up</title>
    <link rel="icon" href="images/icon.png">
    <link rel="stylesheet" href="css/payment.css">
</head>

<body>
<center>
    <h1>PAYMENT DETAILS</h1>
    <form action="https://secure.payu.in/_payment" name="payuform" method=POST>
    <!-- <form action="http://localhost/notes/new_user/success.php?user_code=<?php echo $user_code ?>&pay_duration=<?php echo $pay_duration ?>" name="payuform" method=POST> -->
        <input type="hidden" name="key" value="<?php echo $MERCHANT_KEY;?>" />
        <input type="hidden" name="hash" value="<?php echo $hash;?>" />
        <input type="hidden" name="txnid" value="<?php echo $txnid;?>" />
        <table>
            <tr>
                <td>Full Name: </td>
                <td><input name="firstname" id="firstname" value="<?php echo $name;?>" /></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input name="email" id="email" value="<?php echo $email;?>" /></td>
            </tr>
            <tr>
                <td>Duration: </td>
                <td><input name="pay_duration" id="firstname" value="<?php echo $pay_duration;?> months" /></td>
            </tr>
            <tr>
                <td>Amount: </td>
                <td><input name="amount" value="<?php echo $amount;?>" /></td> 
            </tr>
            <tr>
                <td>Product Info: </td>
                <td colspan="3"><textarea type="hidden" name="productinfo"><?php echo $productInfo;?></textarea></td>
            </tr>
            <tr>
                <td colspan="3"><input type="hidden" name="surl" size="64" value="<?php echo $surl;?> " /></td>
            </tr>
            <tr>
                <td colspan="3"><input type="hidden" name="furl" size="64" value="<?php echo $furl;?> " /></td>
            </tr>
            <tr>
                <td colspan="3"><input type="hidden" name="service_provider" value="" /></td>
            </tr>
            <tr class="sub">

                <td colspan="4"><input type="submit" value="Submit" /></td>
            </tr>
        </table>
    </form>
</center>
</body>

</html>