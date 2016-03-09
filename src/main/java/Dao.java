import java.util.List;

public interface Dao {
    void create(Record newRecord);  //C
    List<Record> readAllRecords();  //R
}
