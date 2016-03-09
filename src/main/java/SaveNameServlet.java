import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SaveNameServlet extends HttpServlet {
    private String name = null;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameIn = String.valueOf(request.getAttribute("userName"));
        if (nameIn != "null" ) {
            name = nameIn;
            request.setAttribute("userName", nameIn);
        }
        else {
            request.setAttribute("userName", name);
        }
        request.getRequestDispatcher("test.jsp").forward(request, response);
    }
}
