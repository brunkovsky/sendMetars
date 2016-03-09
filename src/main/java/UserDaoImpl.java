import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public List<User> getAllUsers() {
        List<User> result = new ArrayList<>();
        String userName;
        String userPass;
        try {
            DbConnector connector = new DbConnector();
            Connection connection = connector.getConnection();
            Statement statement = connection.createStatement();
            statement.executeQuery("SELECT * FROM users");
            ResultSet rs = statement.getResultSet();
            while (rs.next()) {
                userName = rs.getString("name");
                userPass = rs.getString("password");
                result.add(new User(userName, userPass));
            }
            rs.close();
            statement.close();
            connection.close();
            }
        catch (Exception e) {
            System.out.println("Exception is " + e);
        }
        return result;
    }
}
