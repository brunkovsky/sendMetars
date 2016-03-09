import java.sql.*;

public class DbConnector {
    Connection getConnection() {
        String connectionURL = "jdbc:mysql://localhost:3306/testSendMessage?useUnicode=true&characterEncoding=UTF-8&characterSetResults=UTF-8";
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection = DriverManager.getConnection(connectionURL, "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
