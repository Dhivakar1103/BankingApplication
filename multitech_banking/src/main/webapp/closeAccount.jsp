<!DOCTYPE html>
<html>
<head>
    <title>Close Account</title>
    <link rel="stylesheet" type="text/css" href="closeAccount.css">
</head>
<body>
    <div class="close-account-container">
        <h2>Close Account</h2>
        <form action="CloseAccountServlet" method="post">
            <label for="confirm">Are you sure you want to close your account?</label><br><br>
            <input type="submit" value="Yes">
            <a href="customerDashboard.jsp" class="no-button">No</a>
        </form>
    </div>
</body>
</html>
