<?php ob_start(); ?>
<?php include '../includes/db.php'; ?>
<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8" />
    <title>Notes Naka | Contribute</title>
    <link rel="shortcut icon" href="images/icon.png" type="image/x-icon">

    <link rel="stylesheet" href="css/style.css" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<body>
    <div class="container">
        <header>Contribution Form</header>
        <div class="progress-bar">
            <div class="step">
                <p>Name</p>
                <div class="bullet">
                    <span>1</span>
                </div>
                <div class="check fas fa-check"></div>
            </div>
            <div class="step">
                <p>Notes</p>
                <div class="bullet">
                    <span>2</span>
                </div>
                <div class="check fas fa-check"></div>
            </div>
            <div class="step">
                <p>Notes</p>
                <div class="bullet">
                    <span>3</span>
                </div>
                <div class="check fas fa-check"></div>
            </div>
            <div class="step">
                <p>Submit</p>
                <div class="bullet">
                    <span>4</span>
                </div>
                <div class="check fas fa-check"></div>
            </div>
        </div>
        <div class="form-outer">
            <form action="" method="post" enctype="multipart/form-data">
                <div class="page slide-page">
                    <div class="title">Contributors Info</div>
                    <div class="field">
                        <div class="label">Name</div>
                        <input type="text" name="con_contri_name"  />
                    </div>
                    <div class="field">
                        <div class="label">College</div>
                        <input type="text" name="con_contri_college"  />
                    </div>
                    <div class="field">
                        <button class="firstNext next">Next</button>
                    </div>
                </div>

                <div class="page">
                    <div class="field">
                        <div class="label">Title</div>
                        <input type="text" name="con_title" />
                    </div>
                    <div class="field">
                        <div class="label">Subject</div>
                        <input type="text" name="con_sub" />
                    </div>
                    <div class="field">
                        <div class="label">Subject Code</div>
                        <input type="text" name="con_sub_code"/>
                    </div>
                    <div class="field btns">
                        <button class="prev-1 prev">Previous</button>
                        <button class="next-1 next">Next</button>
                    </div>
                </div>

                <div class="page">
                    <div class="field">
                        <div class="label">Branch</div>
                        <select name="con_branch" >
                            <option value="0">Select Branch</option>
                            <option value="ALL">ALL(FIRST YEAR)</option>
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
                    </div>
                    <div class="field">
                        <div class="label">Semester</div>
                        <select name="con_sem">
                            <option value="0">Select Semester</option>
                            <option value="1/2">1/2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <!-- <option value="9">9</option>
                            <option value="10">10</option> -->
                        </select>
                    </div>

                    <div class="field">
                        <div class="label">Year</div>
                        <select name="con_year">
                            <option value="0">Select Year</option>
                            <option value="1">FIRST</option>
                            <option value="2">SECOND</option>
                            <option value="3">THIRD</option>
                            <option value="4">FOURTH</option>
                            <option value="5">FIFTH</option>
                        </select>
                    </div>

                    <div class="field">
                        <div class="label">College</div>
                        <input type="textarea" name="con_college" />
                    </div>
                    <div class="field btns">
                        <button class="prev-2 prev">Previous</button>
                        <button class="next-2 next">Next</button>
                    </div>
                </div>

                <div class="page">
                    <div class="title">Upload</div>
                    <div class="field">
                        <div class="label">Display Picture</div>
                        <input type="file" name="image" />
                    </div>
                    <div class="field">
                        <div class="label">Document</div>
                        <input type="file" name="file" required />
                    </div>
                    <div class="field btns">
                        <button class="prev-3 prev">Previous</button>
                        <button class="submit" name="submit">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="js/script.js"></script>
</body>

</html>

<?php
    if(isset($_POST['submit'])) 
    {
        $con_dp = mysqli_escape_string($connection, $_FILES['image']['name']);
        $con_dp_temp = $_FILES['image']['tmp_name'];
        if(empty($con_dp))
        {
            $con_dp = "default_CaZ45vTe9b.jpg";
        }

        $con_data = mysqli_escape_string($connection, $_FILES['file']['name']);
        $con_data_temp = $_FILES['file']['tmp_name'];

        $con_title = mysqli_escape_string($connection, $_POST['con_title']);

        $con_sub = mysqli_escape_string($connection, $_POST['con_sub']);
        $con_sub_code = mysqli_escape_string($connection, $_POST['con_sub_code']);

        $con_branch = mysqli_escape_string($connection, $_POST['con_branch']);
        $con_sem = mysqli_escape_string($connection, $_POST['con_sem']);
        $con_year = mysqli_escape_string($connection, $_POST['con_year']);
        $con_college = mysqli_escape_string($connection, $_POST['con_college']);

        $con_contri_name = mysqli_escape_string($connection, $_POST['con_contri_name']);
        $con_contri_college = mysqli_escape_string($connection, $_POST['con_contri_college']);

        move_uploaded_file($con_dp_temp, "../db_images/".$con_dp);
        move_uploaded_file($con_data_temp, "../db_files/".$con_data);

        $query = "INSERT INTO contribute (con_dp ,con_data, con_title, con_sub, con_sub_code, con_branch, con_sem, con_year, con_college, con_contri_name, con_contri_college)";

        $query .= "VALUES('{$con_dp}', '{$con_data}', '{$con_title}', '{$con_sub}', '{$con_sub_code}', '{$con_branch}', '{$con_sem}', '{$con_year}', '{$con_college}', '{$con_contri_name}', '{$con_contri_college}')";

        $update_file = mysqli_query($connection, $query);
        if(!$update_file)
        {
            die("Failed to update ".mysqli_error($connection));
            header("Location: response/oops.php");

        }
        elseif($update_file)
        {
            header("Location: response/thank_you.php");
        }
    }
?>