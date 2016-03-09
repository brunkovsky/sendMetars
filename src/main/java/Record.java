import java.util.Date;

public class Record {
    private Date date;
    private String time;
    private String name;
    private String messageText;
    private String newDateTime;

    public Record(Date date, String time, String name, String messageText, String newDateTime) {
        this.time = time;
        this.date = date;
        this.name = name;
        this.messageText = messageText;
        this.newDateTime = newDateTime;
    }

    public Date getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMessageText() {
        return messageText;
    }

    public void setMessageText(String messageText) {
        this.messageText = messageText;
    }

    public String getNewDateTime() {
        return newDateTime;
    }

    public void setNewDateTime(String newDateTime) {
        this.newDateTime = newDateTime;
    }

    @Override
    public String toString() {
        return "Record{" +
                "date=" + date +
                ", name='" + name + '\'' +
                ", messageText='" + messageText + '\'' +
                '}';
    }
}
