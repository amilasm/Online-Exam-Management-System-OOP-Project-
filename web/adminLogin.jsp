<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Login</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles/login.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script><script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
</head>
<body>
<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
        <div class="card login-card">
            <div class="row no-gutters">
                <div class="col-md-5">
                    <img alt="login" class="login-card-img" src="images/login.jpg">
                </div>
                <div class="col-md-7">
                    <div class="card-body">
                        <div class="brand-wrapper">
                            <img src="images/logo.png" width="140" height="150" alt="logo" class="logo">
                        </div>
                        <p class="login-card-description">Sign into Admin Account</p>
                        <form  action="<%=request.getContextPath()%>/adminLoginServlet" class="signin-form" method="post">
                            <div class="form-group">
                                <label for="username" class="sr-only">Username</label>
                                <input type="text" name="username" id="username" class="form-control" placeholder="Username" required>
                            </div>
                            <div class="form-group mb-4">
                                <label for="password" class="sr-only">Password</label>
                                <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                            </div>
                            <button type="submit" class="btn btn-block login-btn mb-4" id="login" >Login</button>
                        </form>
                        <nav class="login-card-footer-nav">
                            <a href="https://www.sliit.lk/about/about-sliit/" target="_blank">Terms of use.</a>
                            <a href="https://www.sliit.lk/about/about-sliit/" target="_blank">Privacy policy</a>
                        </nav>
                        <br><br><br><br>
                        <marquee>
                            Copyright &copy; 2021 SLIIT. All Rights Reserved.
                        </marquee>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
