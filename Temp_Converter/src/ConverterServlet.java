import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/convert")
public class ConverterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String celsiusString = request.getParameter("celsius");

        if (celsiusString != null && !celsiusString.isEmpty()) {
            double celsius = Double.parseDouble(celsiusString);
            double fahrenheit = (celsius * 9/5) + 32;
            request.setAttribute("celsius", celsius);
            request.setAttribute("fahrenheit", fahrenheit);
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
