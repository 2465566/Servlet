import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by rico on 6/3/17.
 */
public class HelloWorld extends HttpServlet {
    private String message;

    @Override
    public void init() throws ServletException {
        message = "Hello World From Servlet";
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h3>" + message + "</h3>");
    }

    @Override
    public void destroy(){
        super.destroy();
    }
}
