import java.io.IOException;
import java.util.Date;

public class Servlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String message = request.getParameter("MsgTxt");
        String newDateTime = request.getParameter("newDateTime");
        Dao dao = new DaoRecord();
        String time = new Date().toString().substring(11, 20);
        System.out.println(newDateTime);
        Record newRecord = new Record(new Date(), time, name, message, newDateTime);
        dao.create(newRecord);
        request.getRequestDispatcher("sendMessage.jsp").forward(request, response);
    }
}
