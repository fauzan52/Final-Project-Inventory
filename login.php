<?php
require 'function.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Login ...</title>
    <link href="css/styles.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
            crossorigin="anonymous"></script>
</head>
<body class="bg-primary">
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                            <div class="card-body">
                                <form method="post">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputEmailAddress">Email</label>
                                        <input class="form-control py-4" name="email" id="inputEmailAddress"
                                               type="email" placeholder="Enter email address"/>
                                    </div>
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputPassword">Password</label>
                                        <input class="form-control py-4" name="password" id="inputPassword"
                                               type="password" placeholder="Enter password"/>
                                    </div>

                                    <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">

                                        <button class="btn btn-secondary" name="login">Login</button>
                                        <a href="register.php" class="btn btn-success">Signup</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
        </main>
    </div>
    <script src="js/sweetalert.min.js"></script>
    //Cek Login, Terdaftar apa kagak?
    <?php
    if (isset($_POST['login'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];

//cocokin data dengan database, cari.. ada apa kagak tuh data
        $conn = mysqli_connect("localhost", "root", "", "warehouse");
        $cekdatabase = mysqli_query($conn, "SELECT * FROM login where email='$email' and password='$password'");
//hitung jumlah data
        $hitung = mysqli_num_rows($cekdatabase);

        if ($hitung > 0) {
            $_SESSION['log'] = 'True';
            header('location:index.php');
        } else {
            echo "<script> swal('Login Gagal', 'Email atau password yang anda masukkan salah', 'error'); 
header('location:login.php');
</script>";
        };
    };

    ?>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
