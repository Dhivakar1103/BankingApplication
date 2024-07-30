<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="AdminLoginServlet" method="post">
            <div class="input-container">
                <label for="username">
                    <i class="fas fa-user"></i> Username:
                </label>
                <input type="text" id="username" name="username">
            </div>
            <div class="input-container">
                <label for="password">
                    <i class="fas fa-lock"></i> Password:
                </label>
                <input type="password" id="password" name="password">
            </div>
            <input type="submit" value="Login">
        </form>
    </div>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
