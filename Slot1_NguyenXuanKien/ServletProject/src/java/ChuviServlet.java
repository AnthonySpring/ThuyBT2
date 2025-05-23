import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ChuviServlet", urlPatterns = {"/chuvi"})
public class ChuviServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double dai = Double.parseDouble(request.getParameter("dai"));
        double rong = Double.parseDouble(request.getParameter("rong"));
        double chuvi = 2 * (dai + rong);

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<h2>Chu vi hình chữ nhật là: " + chuvi + "</h2>");
    }
}
