<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="adminDashboard.css">
</head>
<body>
    <center>
        <h1 class="main-heading">DS BANKING APPLICATION</h1>
    </center>
    <%
        String username = (String) session.getAttribute("username");
        if (username == null || username.isEmpty()) {
            username = "Citizen";
        }
    %>
    <h2>Welcome <%= username %></h2>
    <nav>
        <a href="registerCustomer.jsp"><i class="fas fa-user-plus"></i> Register Customer</a> |
        <a href="viewCustomers.jsp"><i class="fas fa-users"></i> View Customers</a> |
        <a href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </nav>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
