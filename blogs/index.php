<style>
    @import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap');

    * 
    {
        font-family: 'Poppins', sans-serif;
    }
</style>

<?php include '../includes/db.php'; ?>
<?php ob_start(); ?>

<?php $year = $_GET['blog_year']; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Notes Naka | Free Notes</title>
    <link rel="shortcut icon" href="images/icon.png" type="image/x-icon">

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="./css/all.css">


    <!-- --------- Owl-Carousel ------------------->
    <link rel="stylesheet" href="./css/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/owl.theme.default.min.css">

    <!-- ------------ AOS Library ------------------------- -->
    <link rel="stylesheet" href="./css/aos.css">

    <!-- Custom Style   -->
    <link rel="stylesheet" href="./css/style.css">

</head>

<body>

    <!-- ----------------------------  Navigation ---------------------------------------------- -->

    <nav class="nav" id="home">
        <div class="nav-menu flex-row">
            <div class="nav-brand">
                <a href="../homepage" class="text-gray">Notes Naka</a>
            </div>
            <div class="toggle-collapse">
                <div class="toggle-icons">
                    <i class="fas fa-bars"></i>
                </div>
            </div>
            <div>
                <ul class="nav-items">
                    <li class="nav-link">
                        <a href="index.php?blog_year=ALL">Home</a>
                    </li>
                    <li class="nav-link">
                        <a href="#explore">Category</a>
                    </li>
                    <li class="nav-link">
                        <a href="#blog">Sample Notes</a>
                    </li>
                    <li class="nav-link">
                        <a href="#contact">Contact Us</a>
                    </li>
                </ul>
            </div>
            <div class="social text-gray">
                <a href="https://www.facebook.com/NotesNakaFB/"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.instagram.com/notesnaka/"><i class="fab fa-instagram"></i></a>
                <a href="https://www.youtube.com/channel/UCGGxP6KHqkJPV_k3XyMe8rw"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
    </nav>

    <!-- ------------x---------------  Navigation --------------------------x------------------- -->

    <!----------------------------- Main Site Section ------------------------------>

    <main>

        <!------------------------ Site Title ---------------------->

        <section class="site-title">
            <div class="site-background" data-aos="fade-up" data-aos-delay="100">
                <!-- <h3>Tours & Travels</h3> -->
                <h1>YOU WON'T REGRET !!</h1>
                <h2>We have 250+ Study Materials comprising 200+ Notes and 50+ PYQPs and e-Books</h1>
                <a href="#explore"><button class="btn">Check Out Our Sample Notes</button></a>
            </div>.
        </section>

        <!------------x----------- Site Title ----------x----------->

        <!-- --------------------- Blog Carousel ----------------- -->

        <section id="explore">
            <div class="blog">
                <div class="container">
                    <div class="owl-carousel owl-theme blog-post">

                        <div class="blog-content" data-aos="fade-right" data-aos-delay="200">
                            <img src="./images/misc.png" alt="post-1">
                            <div class="blog-title">
                                <h3>Miscellaneous</h3>
                                <a href="index.php?blog_year=MISC"><button class="btn btn-blog">Read More</button></a>
                            </div>
                        </div>

                        <div class="blog-content" data-aos="fade-in" data-aos-delay="200">
                            <img src="./images/1.png" alt="post-1">
                            <div class="blog-title">
                                <h3>Freshies</h3>
                                <a href="index.php?blog_year=1"><button class="btn btn-blog">Read More</button></a>
                            </div>
                        </div>

                        <div class="blog-content" data-aos="fade-left" data-aos-delay="200">
                            <img src="./images/2.png" alt="post-1">
                            <div class="blog-title">
                                <h3>Sophomores</h3>
                                <a href="index.php?blog_year=2"><button class="btn btn-blog">Read More</button></a>
                            </div>
                        </div>

                        <div class="blog-content" data-aos="fade-in" data-aos-delay="200">
                            <img src="./images/3.png" alt="post-1">
                            <div class="blog-title">
                                <h3>Pre-final</h3>
                                <a href="index.php?blog_year=3"><button class="btn btn-blog">Read More</button></a>
                            </div>
                        </div>

                        <div class="blog-content" data-aos="fade-right" data-aos-delay="200">
                            <img src="./images/4.png" alt="post-1">
                            <div class="blog-title">
                                <h3>Final</h3>
                                <a href="index.php?blog_year=4"><button class="btn btn-blog">Read More</button></a>
                            </div>
                        </div>

                    </div>

                    <div class="owl-navigation">
                        <span class="owl-nav-prev"><i class="fas fa-long-arrow-alt-left"></i></span>
                        <span class="owl-nav-next"><i class="fas fa-long-arrow-alt-right"></i></span>
                    </div>

                </div>
            </div>
        </section>

        <!-- ----------x---------- Blog Carousel --------x-------- -->

        <!-- ---------------------- Site Content -------------------------->

        <section class="container">
            <div class="site-content">
                <div class="posts" id="blog">

                    <?php
                        if($year == "ALL")
                        {
                            $query = "SELECT * FROM blog ORDER BY blog_id DESC";
                        }
                        else
                        {
                            $query = "SELECT * FROM blog WHERE blog_year LIKE '%$year%' ORDER BY blog_id DESC";
                        }
                        $select_query = mysqli_query($connection, $query);
                        while ($row = mysqli_fetch_assoc($select_query))
                        {
                    ?>

                    <div class='post-content' data-aos='zoom-in' data-aos-delay='200'>
                        <div class='post-image'>
                            <div>
                                <img src='../db_images/<?php echo $row['blog_dp'] ?>' class='img' alt='blog1'
                                    style='height: 250px;' />
                            </div>
                            <div class='post-info flex-row'>
                                <span><i
                                        class='fas fa-user text-gray'></i>&nbsp;&nbsp;<?php echo $row['blog_contri_name'] ?></span>
                                <span><i
                                        class='fas fa-calendar-alt text-gray'></i>&nbsp;&nbsp;<?php echo date('d F Y', $row['blog_time']) ?></span>
                            </div>
                        </div>
                        <div class='post-title'>
                            <a href='#'><?php echo $row['blog_title'] ?></a>
                            <p><?php echo $row['blog_info_1'] ?></p>
                            <?php if(!empty($row['blog_info_2'])) { ?>
                            <button class='btn post-btn'>
                                <a href='detail.php?blog_id=<?php echo $row['blog_id']?>#blog'>Read More &nbsp; <i
                                        class='fas fa-arrow-right'></i></a>
                            </button>
                            <?php } ?>
                            <?php if(!empty($row['blog_data'])) { ?>
                            <button class='btn post-btn'>
                                <a href='pdf/index.php?file_data=<?php echo $row['blog_data'] ?>&file_type=blog'
                                    target='_blank'> View File &nbsp; <i class='fas fa-arrow-right'></i></a>
                            </button>
                            <?php } ?>
                        </div>
                        <br><br>
                    </div>

                    <?php } ?>

                </div>

                <aside class="sidebar">

                    <div class="category">
                        <h2>Category</h2>
                        <ul class="category-list">

                            <form action="" method="post">
                                <li class="list-items" data-aos="fade-left" data-aos-delay="100">
                                    <a href="index.php?blog_year=ALL">ALL</a>
                                    <span><?php
                                        $query = "SELECT * FROM blog";
                                        $select_query = mysqli_query($connection, $query);
                                        echo $count = mysqli_num_rows($select_query);?></span>
                                </li>
                            </form>
                            <form action="" method="post">
                                <li class="list-items" data-aos="fade-left" data-aos-delay="200">
                                    <a href="index.php?blog_year=1">FIRST YEAR</a>
                                    <span><?php $year = 1;
                                        $query = "SELECT * FROM blog WHERE blog_year LIKE '%$year%'";
                                        $select_query = mysqli_query($connection, $query);
                                        echo $count = mysqli_num_rows($select_query);?></span>
                                </li>
                            </form>
                            <form action="" method="post">
                                <li class="list-items" data-aos="fade-left" data-aos-delay="300">
                                    <a href="index.php?blog_year=2">SECOND YEAR</a>
                                    <span><?php $year = 2;
                                            $query = "SELECT * FROM blog WHERE blog_year LIKE '%$year%'";
                                            $select_query = mysqli_query($connection, $query);
                                            echo $count = mysqli_num_rows($select_query);?></span>
                                </li>
                            </form>
                            <form action="" method="post">
                                <li class="list-items" data-aos="fade-left" data-aos-delay="400">
                                    <a href="index.php?blog_year=3">THIRD YEAR</a>
                                    <span><?php $year = 3;
                                        $query = "SELECT * FROM blog WHERE blog_year LIKE '%$year%'";
                                        $select_query = mysqli_query($connection, $query);
                                        echo $count = mysqli_num_rows($select_query);?></span>
                                </li>
                            </form>
                            <form action="" method="post">
                                <li class="list-items" data-aos="fade-left" data-aos-delay="500">
                                    <a href="index.php?blog_year=4">FOURTH YEAR</a>
                                    <span><?php $year = 4;
                                        $query = "SELECT * FROM blog WHERE blog_year LIKE '%$year%'";
                                        $select_query = mysqli_query($connection, $query);
                                        echo $count = mysqli_num_rows($select_query);?></span>
                                </li>
                            </form>
                            <form action="" method="post">
                                <li class="list-items" data-aos="fade-left" data-aos-delay="600">
                                    <a href="index.php?blog_year=MISC">MISC</a>
                                    <span><?php $year = "MISC";
                                        $query = "SELECT * FROM blog WHERE blog_year LIKE '%$year%'";
                                        $select_query = mysqli_query($connection, $query);
                                        echo $count = mysqli_num_rows($select_query);?></span>
                                </li>
                            </form>

                        </ul>
                    </div>

                    <div class="newsletter" data-aos="fade-up" data-aos-delay="300" id="contact">
                        <h2>Newsletter</h2>
                        <div class="form-element">
                            <form method="post" action="">
                                <input type="email" class="input-element" placeholder="Email" name="email" required>
                                <button class="btn form-btn" name="submit">Subscribe</button>
                            </form>
                        </div>
                    </div>

                    <div class="popular-tags">
                        <h2>Popular Tags</h2>
                        <div class="tags flex-row">
                            <span class="tag" data-aos="flip-up" data-aos-delay="100"><a>blogs</a></span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="100"><a>notes</a></span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="100"><a>blog naka</a></span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="100"><a>notes naka</a></span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="100"><a>freshers</a></span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="100"><a>miscellaneous</a></span>
                        </div>
                    </div>
                </aside>
            </div>
        </section>

        <!-- -----------x---------- Site Content -------------x------------>

    </main>

    <!---------------x------------- Main Site Section ---------------x-------------->


    <!-- --------------------------- Footer ---------------------------------------- -->

    <footer class="footer">
        <div class="container">
            <div class="about-us" data-aos="fade-right" data-aos-delay="200">
                <h2>About us</h2>
                <p>Notesnaka is an e-commerce website which aims at providing university notes for Engineering
                    Undergraduate students of various disciplines. Upon subscription, students can access lecture
                    notes, e-books and other study material references which may be helpful in acing the semester
                </p>
            </div>
            <div class="newsletter" data-aos="fade-right" data-aos-delay="200"></div>

            <div class="instagram" data-aos="fade-left" data-aos-delay="200"></div>

            <div class="follow" data-aos="fade-left" data-aos-delay="200">
                <h2>Follow us</h2>
                <p>Let us be Social</p>
                <div>
                    <a href="https://www.facebook.com/NotesNakaFB/"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://www.instagram.com/notesnaka/"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.youtube.com/channel/UCGGxP6KHqkJPV_k3XyMe8rw"><i
                            class="fab fa-youtube"></i></a>
                </div>
            </div>
        </div>
        <div class="move-up">
            <a href="#home"><i class="fas fa-arrow-circle-up fa-2x"></i></a>
        </div>
    </footer>

    <!-- -------------x------------- Footer --------------------x------------------- -->

    <!-- Jquery Library file -->
    <script src="./js/Jquery3.4.1.min.js"></script>

    <!-- --------- Owl-Carousel js ------------------->
    <script src="./js/owl.carousel.min.js"></script>

    <!-- ------------ AOS js Library  ------------------------- -->
    <script src="./js/aos.js"></script>

    <!-- Custom Javascript file -->
    <script src="./js/main.js"></script>
</body>

</html>

<?php
    if(isset($_POST['submit']))
    {
        $name = "Blog";
        $email = mysqli_escape_string($connection, $_POST['email']);
        $message = "N/A";

        $query = "INSERT INTO contact (name, email, message)";
        $query .= " VALUES('{$name}', '{$email}', '{$message}')";
        $create = mysqli_query($connection, $query);
        if(!$create)
        {
            die("QUERY FAILED ".mysqli_error($connection));
            header("Location: response/oops.php?blog_year=$year");
        }
        else
        {
            header("Location: response/thank_you.php?blog_year=$year");
        }
    }
?>