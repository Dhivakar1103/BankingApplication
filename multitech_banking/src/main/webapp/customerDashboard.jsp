<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <link rel="stylesheet" type="text/css" href="cusdas.css">
</head>
<body>
    <div class="dashboard-container">
        <h2>Welcome Customer</h2>
        <div class="account-details">
            <%
                String accountNo = (String) session.getAttribute("account_no");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "12345678@");
                PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE account_no=?");
                ps.setString(1, accountNo);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    out.print("Account No: " + rs.getString("account_no") + "<br>");
                    out.print("Balance: " + rs.getDouble("initial_balance") + "<br>");
                }
            %>
        </div>
        <nav class="dashboard-nav">
            <a href="viewTransactions.jsp">View Transactions</a>
            <a href="deposit.jsp">Deposit</a>
            <a href="withdraw.jsp">Withdraw</a>
            <a href="closeAccount.jsp">Close Account</a>
            <a href="logout.jsp">Logout</a>
        </nav>
    </div>
</body>
</html>
