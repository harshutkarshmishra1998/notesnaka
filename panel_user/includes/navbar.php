<!-- navbar -->
<div class="navbar">
    <!-- nav left -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link">
                <i class="fas fa-bars" onclick="collapseSidebar()"></i>
            </a>
        </li>
        <li class="nav-item">
            <img src="images/logo.png" alt="ATPro logo" class="logo logo-light" />
            <img src="images/logo.png" alt="ATPro logo" class="logo logo-dark" />
        </li>
    </ul>
    <!-- end nav left -->
    <!-- form -->
    <!-- <form class="navbar-search">
        <input type="text" name="search" class="navbar-search-input" placeholder="What you looking for..." />
        <i class="fas fa-search"></i>
    </form> -->
    <!-- end form -->
    <!-- nav right -->
    <ul class="navbar-nav nav-right">
        <li class="nav-item mode">
            <a class="nav-link" href="#" onclick="switchTheme()">
                <i class="fas fa-moon dark-icon"></i>
                <i class="fas fa-sun light-icon"></i>
            </a>
        </li>
        <li class="nav-item avt-wrapper">
            <div class="avt dropdown">
                <img src="../db_images/<?php echo $user_image ?>" alt="User image" class="dropdown-toggle" data-toggle="user-menu" />
                <ul id="user-menu" class="dropdown-menu">
                    <li class="dropdown-menu-item">
                        <a class="dropdown-menu-link" href="show_profile.php?user_code=<?php echo $user_code ?>">
                            <div>
                                <i class="fas fa-user-tie"></i>
                            </div>
                            <span>Profile</span>
                        </a>
                    </li>
                    <li class="dropdown-menu-item">
                        <a href="edit_profile.php?user_code=<?php echo $user_code ?>" class="dropdown-menu-link">
                            <div>
                                <i class="fas fa-cog"></i>
                            </div>
                            <span>Edit Profile</span>
                        </a>
                    </li>
                    <!-- <li class="dropdown-menu-item">
                        <a href="#" class="dropdown-menu-link">
                            <div>
                                <i class="far fa-credit-card"></i>
                            </div>
                            <span>Payments</span>
                        </a>
                    </li> -->
                    <li class="dropdown-menu-item">
                        <a href="mailto: notesnaka@gmail.com" class="dropdown-menu-link">
                            <div>
                                <i class="fas fa-spinner"></i>
                            </div>
                            <span>Help & Support</span>
                        </a>
                    </li>
                    <li class="dropdown-menu-item">
                        <a href="../login/logout_user.php" class="dropdown-menu-link">
                            <div>
                                <i class="fas fa-sign-out-alt"></i>
                            </div>
                            <span>Logout</span>
                        </a>
                    </li>
                </ul>
            </div>
        </li>
    </ul>
    <!-- end nav right -->
</div>
<!-- end navbar -->