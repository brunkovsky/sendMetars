import java.io.IOException;
import java.util.List;

public class ReadServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        Dao dao = new DaoRecord();
        List<Record> records = dao.readAllRecords();
        request.setAttribute("records", records);
        request.getRequestDispatcher("display.jsp").forward(request, response);
    }
}
