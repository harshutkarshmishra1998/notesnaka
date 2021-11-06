<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <!-- Text Logo - Use this if you don't have a graphic logo -->
    <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Evolo</a> -->

    <!-- Image Logo -->
    <a class="navbar-brand logo-image" href="index.html"><img src="images/logo.png" alt="alternative"></a>

    <!-- Mobile Menu Toggle Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
        aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-awesome fas fa-bars"></span>
        <span class="navbar-toggler-awesome fas fa-times"></span>
    </button>
    <!-- end of mobile menu toggle button -->

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link page-scroll" href="index.html">Home <span class="sr-only">(current)</span></a>
            </li>

            <!-- Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle page-scroll" href="#" id="navbarDropdown" role="button"
                    aria-haspopup="true" aria-expanded="false">Let's Study</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="../login/login_user.php"><span class="item-text">Login</span></a>
                    <div class="dropdown-items-divide-hr"></div>
                    <a class="dropdown-item" href="../new_user/"><span class="item-text">Register</span></a>
                </div>
            </li>
            <!-- end of dropdown menu -->

            <li class="nav-item">
                <a class="nav-link page-scroll" href="../blogs/index.php?blog_year=ALL">Blogs</a>
            </li>

            <li class="nav-item">
                <a class="nav-link page-scroll" href="../contributes/">Want to Contribute?</a>
            </li>

        </ul>
        <span class="nav-item social-icons">
            <span class="fa-stack">
                <a href="https://www.facebook.com/Notes-Naka-102429144683786">
                    <i class="fas fa-circle fa-stack-2x facebook"></i>
                    <i class="fab fa-facebook-f fa-stack-1x"></i>
                </a>
            </span>
            <span class="fa-stack">
                <a href="https://www.instagram.com/notesnaka/">
                    <i class="fas fa-circle fa-stack-2x instagram"></i>
                    <i class="fab fa-instagram fa-stack-1x"></i>
                </a>
            </span>
            <span class="fa-stack">
                <a href="https://www.youtube.com/channel/UCGGxP6KHqkJPV_k3XyMe8rw">
                    <i class="fas fa-circle fa-stack-2x youtube"></i>
                    <i class="fab fa-youtube fa-stack-1x"></i>
                </a>
            </span>
        </span>
    </div>
</nav>
<!-- end of navbar -->