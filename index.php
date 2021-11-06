<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<?php
function getUserIP()
{
    // Get real visitor IP behind CloudFlare network
    if (isset($_SERVER["HTTP_CF_CONNECTING_IP"])) 
    {
        $_SERVER['REMOTE_ADDR'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
        $_SERVER['HTTP_CLIENT_IP'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
    }
    $client  = @$_SERVER['HTTP_CLIENT_IP'];
    $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
    $remote  = $_SERVER['REMOTE_ADDR'];

    if(filter_var($client, FILTER_VALIDATE_IP))
    {
        $ip = $client;
    }
    elseif(filter_var($forward, FILTER_VALIDATE_IP))
    {
        $ip = $forward;
    }
    else
    {
        $ip = $remote;
    }

    return $ip;
}
?>

<body>
    <a href="homepage/">
        <h1>GO TO HOMEPAGE</h1>
    </a>
    <a href="login/login_user.php">Login User</a>
    <br>
    <a href="login/login_admin.php">Login Admin</a>
    <br>
    <a href="new_user/">New User</a>
    <br>
    <a href="contributes/">Contribute</a>
    <br>
    <a href="blogs/index.php?blog_year=ALL">Blogs</a>
    <br>
    <?php echo $_SERVER['REMOTE_ADDR']; ?>
    <br>
    <?php
        $user_ip = getUserIP();

        echo $user_ip; // Output IP address [Ex: 177.87.193.134]
    ?>
    <br>
    <?php 
        // PHP code to get the MAC address of Client 
        $MAC = exec('getmac'); 
        
        // Storing 'getmac' value in $MAC 
        $MAC = strtok($MAC, ' '); 
        
        // Updating $MAC value using strtok function,  
        // strtok is used to split the string into tokens 
        // split character of strtok is defined as a space 
        // because getmac returns transport name after 
        // MAC address    
        echo "MAC address of client is: $MAC"; 
    ?>
</body>
<?php
    header("Location: homepage/");
?>
</html>