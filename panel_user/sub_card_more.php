<?php include 'includes/header.php'; ?>
<link rel="stylesheet" href="includes/sub-card.css" />
<?php include 'includes/login_protector.php'; ?>

<?php $sub_code = $_GET['sub_code']; ?>
<?php $file_type = $_GET['file_type']; ?>

<body class="overlay-scrollbar">

    <?php include 'includes/navbar.php'; ?>

    <?php include 'includes/sidebar.php'; ?>

    <div class="sub-card-dabba">
        <div class="wrapper">
            <?php
            $file_type_2 = $file_type.'_sub_code';
            $file_type_3 = $file_type.'_branch';
            $file_id = $file_type.'_id';

            if($user_sem == "1/2")
            {
                $query_2 = "SELECT * FROM $file_type WHERE $file_type_2 LIKE '%$sub_code%' ORDER BY $file_id DESC";
            }
            else
            {
                $query_2 = "SELECT * FROM $file_type WHERE $file_type_2 LIKE '%$sub_code%' AND $file_type_3 LIKE '%$user_branch%' ORDER BY $file_id DESC";
            }

            // $query_2 = "SELECT * FROM $file_type WHERE $file_type_2 LIKE '%$sub_code%' LIMIT 3";
            $select_user_2 = mysqli_query($connection, $query_2);

            while($row = mysqli_fetch_assoc($select_user_2))
            {
                $file_data = $row[$file_type.'_data'];
                $file_dp = $row[$file_type.'_dp'];
                $file_title = $row[$file_type.'_title'];
                $file_sub = $row[$file_type.'_sub'];
                $file_sub_code = $row[$file_type.'_sub_code'];
                $file_info_1 = $row[$file_type.'_info_1'];
        ?>
            <div class="box">
                <i class="fas fa-quote-left quote"></i>
                <p><?php echo $file_info_1 ?></p>
                <div class="content">
                    <div class="info">
                        <div class="name"><?php echo $file_title ?></div>
                        <div class="job"><?php echo $file_sub ?> | <?php echo $file_sub_code ?></div>
                    </div>
                    <div class="image">
                        <a
                            href="detail.php?user_code=<?php echo $user_code ?>&file_data=<?php echo $file_data ?>&file_type=<?php echo $file_type ?>"><img
                                src="../db_images/<?php echo $file_dp ?>" alt="" /></a>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <script src="includes/index.js"></script>
</body>

</html>