<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Banking System</title> <!-- Title for the browser tab -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="welcome.css">
</head>
<body>
    <div class="container">
        <h1>Welcome to  DS Banking System</h1> <!-- Visible title on the page -->
        <div class="admin-section">
            <h2>Admin Page</h2>
            <a href="login.jsp" class="admin">
                <i class="fas fa-user-shield"></i> Admin Login
            </a>
        </div>
        <div class="customer-section">
            <h2>Customer Page</h2>
            <a href="customerLogin.jsp" class="customer">
                <i class="fas fa-user"></i> Customer Login
            </a>
        </div>
    </div>
</body>
</html>
