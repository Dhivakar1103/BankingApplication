import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountNo = request.getParameter("account_no");
        String password = request.getParameter("password");
        boolean isValidCustomer = validateCustomer(accountNo, password);

        if (isValidCustomer) {
            HttpSession session = request.getSession();
            session.setAttribute("account_no", accountNo);
            response.sendRedirect("customerDashboard.jsp");
        } else {
            response.sendRedirect("customerLogin.jsp");
        }
    }

    private boolean validateCustomer(String accountNo, String password) {
        boolean st = false;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "12345678@");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM customer WHERE account_no=? AND password=?");
            ps.setString(1, accountNo);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            st = rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return st;
}}