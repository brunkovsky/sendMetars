import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AuthenticationServlet extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        ResultSet rs;
        String userName = null;
        String passwrd = null;
        response.setContentType("text/html");
        try {
            DbConnector connector = new DbConnector();
            Connection connection = connector.getConnection();
            Statement statement = connection.createStatement();
            statement.executeQuery("SELECT * FROM users");
            rs = statement.getResultSet();
            while (rs.next()) {
                userName = rs.getString("name");
                passwrd = rs.getString("password");
                if(userName.equals(name)) {
                    break;
                }
            }
            rs.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            System.out.println("Exception is " + e);
        }
//        System.out.println("userName = " + userName);
//        System.out.println("passwrd = " + passwrd);
//        System.out.println("---------------------");
//        System.out.println("name = " + name);
//        System.out.println("pass = " + pass);
//        System.out.println("\n");
        if (userName != null) {
            if (passwrd != null) {
                if (userName.equals(name) && passwrd.equals(pass)) {
                    request.setAttribute("userName", userName);
                    request.getRequestDispatcher("SaveNameServlet").forward(request, response);
                } else {
                    request.getRequestDispatcher("IndexServlet").forward(request, response);
                }
            }
        }
    }
}
