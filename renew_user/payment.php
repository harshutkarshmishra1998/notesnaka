<?php include '../includes/db.php'; ?>
<?php session_start(); ?>
<?php ob_start(); ?>

<?php $renew_duration = $_SESSION['renew_duration']; ?>

<?php
    $renew_amount = 100;
    $query = "SELECT * FROM renew WHERE renew_duration LIKE '%$renew_duration%'";
    $select_ca = mysqli_query($connection, $query);
    while($row = mysqli_fetch_assoc($select_ca))
    {
        $renew_amount = $row["renew_amount"];
        $renew_discount = $row["renew_discount"];
        $renew_discount_name = $row["renew_discount_name"];
    }
?>

<?php
    $renew_amount_display = $renew_amount;
    $renew_amount = (100 - $renew_discount)/100 * $renew_amount;
?>

<?php
// Merchant key here as provided by Payu
$MERCHANT_KEY = "C5UgFd";
$SALT = "VtJ2cMfmZJ0hmVWtIVJmCDEJl5nLcXZ7";
$txnid = bin2hex(random_bytes(20));
$name = $_SESSION['user_name'];
$email = $_SESSION['user_email'];
$user_code = $_SESSION['user_code'];
$amount = $renew_amount;
// $phone="8957946660";
$surl="https://www.notesnaka.com/renew_user/success.php?user_code=$user_code&renew_duration=$renew_duration"; //success URL
$furl="https://www.notesnaka.com/renew_user/failure.php?user_code=$user_code&renew_duration=$renew_duration"; //failure URL
$productInfo="Notes Naka's Subscription Renew";

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
    <title>Notes Naka | Payment</title>
    <link rel="icon" href="images/icon.png">
    <link rel="stylesheet" href="css/payment.css">
</head>

<body>
<center>
    <h1>PAYMENT DETAILS</h1>
    <form action="https://secure.payu.in/_payment" name="payuform" method=POST>
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
                <td><input name="renew_duration" id="firstname" value="<?php echo $renew_duration;?> months" /></td>
            </tr>
            <tr>
                <td>Amount: </td>
                <td><input name="amount" value="<?php echo $amount;?>" /></td> 
            </tr>
            <tr>
                <td>Product Info: </td>
                <td colspan="3"><textarea name="productinfo"><?php echo $productInfo;?></textarea></td>
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