import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CloseAccountServlet")
public class CloseAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String accountNo = (String) session.getAttribute("account_no");

        if (accountNo == null || accountNo.isEmpty()) {
            response.sendRedirect("error.jsp");
            return;
        }

        Connection con = null;
        PreparedStatement ps1 = null;
        PreparedStatement ps2 = null;
        PreparedStatement ps3 = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "12345678@");
            con.setAutoCommit(false); // Start transaction

            String getCustomerIdQuery = "SELECT customer_id FROM customer WHERE account_no = ?";
            ps1 = con.prepareStatement(getCustomerIdQuery);
            ps1.setString(1, accountNo);
            rs = ps1.executeQuery();

            int customerId = -1;
            if (rs.next()) {
                customerId = rs.getInt("customer_id");
            } else {
                response.sendRedirect("error.jsp");
                return;
            }

            String deleteTransactionsQuery = "DELETE FROM transactions WHERE customer_id = ?";
            ps2 = con.prepareStatement(deleteTransactionsQuery);
            ps2.setInt(1, customerId);
            ps2.executeUpdate();

            String deleteCustomerQuery = "DELETE FROM customer WHERE account_no = ?";
            ps3 = con.prepareStatement(deleteCustomerQuery);
            ps3.setString(1, accountNo);
            ps3.executeUpdate();

            con.commit(); // Commit transaction

            response.sendRedirect("customerLogin.jsp");
        } catch (Exception e) {
            
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } 
    }
}
