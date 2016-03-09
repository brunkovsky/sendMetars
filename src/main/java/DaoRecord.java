import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DaoRecord implements Dao {
    public void create(Record newRecord) {
        DbConnector connector = new DbConnector();
        Connection connection = connector.getConnection();
        try {
            PreparedStatement pStatement = connection.prepareStatement("INSERT INTO tests(date, time, name, message_text, new_date_time) VALUES(?,?,?,?,?)");
            pStatement.setDate(1, new java.sql.Date(newRecord.getDate().getTime()));
            pStatement.setString(2, newRecord.getTime());
            pStatement.setString(3, newRecord.getName());
            pStatement.setString(4, newRecord.getMessageText());
            pStatement.setString(5, newRecord.getNewDateTime());
            pStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Record> readAllRecords() {
        DbConnector connector = new DbConnector();
        Connection connection = connector.getConnection();
        List<Record> result = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM tests;");
            while (resultSet.next()) {
                Date date = resultSet.getDate("date");
                String time = resultSet.getString("time");
                String name = resultSet.getString("name");
                String messageText = resultSet.getString("message_text");
                String newDateTime = resultSet.getString("new_date_time");
                Record record = new Record(date, time, name, messageText, newDateTime);
                result.add(record);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
