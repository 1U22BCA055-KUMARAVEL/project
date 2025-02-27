<?php
require_once('database.php');
$error = "";
if(isset($_POST['login']))
{
    $username = $_POST['id'];
    $pass = $_POST['password'];

    // Fetch user details
    $stmt = $dbConn->prepare("SELECT kissan_id, password FROM usr_table WHERE kissan_id = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if($row = $result->fetch_assoc()) {
        $dbuname = $row['kissan_id'];
        $dbpass = $row['password'];
        
        if(password_verify($pass, $dbpass)) {
            session_start();
            $_SESSION['uid'] = $dbuname;
            echo "<script>window.location.href = '../find/search.php';</script>";
            exit;
        }
    }
    
    echo "<script>alert('User name/Password is wrong');window.location.href = 'login.php';</script>";
    $stmt->close();
}
?>

<!doctype html>
<html lang="en">
  <head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center"></div>
        <div class="row justify-content-center">
          <div class="col-md-7 col-lg-5">
            <div class="wrap">
              <div class="img" style="background-image: url(images/bg-1.jpg);"></div>
              <div class="login-wrap p-4 p-md-5">
                <div class="d-flex">
                  <div class="w-100">
                    <h3 style="width: 300px;" class="mb-4">Welcome Farmers</h3>
                  </div>
                </div>
                <form action="login.php" method="post" class="signin-form">
                  <div class="form-group mt-3">
                    <input type="number" class="form-control" name="id" required>
                    <label class="form-control-placeholder" for="username">Kishan Id</label>
                  </div>
                  <div class="form-group">
                    <input id="password-field" type="password" name="password" class="form-control" required>
                    <label class="form-control-placeholder" for="password">Password</label>
                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                  </div>
                  <div class="form-group">
                    <input type="submit" class="form-control btn btn-primary rounded submit px-3" name="login" value="Sign In" />
                  </div>
                  <div class="form-group d-md-flex">
                    <div class="w-50 text-left">
                      <label class="checkbox-wrap checkbox-primary mb-0">Remember Me
                        <input type="checkbox" checked>
                        <span class="checkmark"></span>
                      </label>
                    </div>
                    <div class="w-50 text-md-right">
                      <a href="#">Forgot Password</a>
                    </div>
                  </div>
                </form>
                <p class="text-center">Not a member? <a href="signup.php">Sign Up</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
