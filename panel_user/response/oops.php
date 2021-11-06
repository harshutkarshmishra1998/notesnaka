<?php include 'includes/header.php'; ?>
<link rel="stylesheet" href="response/css/style.css" type="text/css">

<?php //header("refresh:5;url=index.php?user_code=$user_code"); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Notes Naka | Something Went Wrong</title>
    <link rel="shortcut icon" href="../images/icon.png" type="image/x-icon">

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,700" rel="stylesheet">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>

    <div id="notfound">
        <div class="notfound">
            <div class="notfound-404">
                <h1>OOPS!</h1>
                <h2>SOMETHING WENT WRONG</h2>
            </div>
            <a href="index.php?user_code=<?php echo $user_code ?>">Go To Homepage NOW !!</a>
        </div>
    </div>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>