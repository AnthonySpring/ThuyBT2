import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ChuviDientichServlet", urlPatterns = {"/chuvidientich"})
public class ChuviDientichServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        double dai = Double.parseDouble(request.getParameter("dai"));
        double rong = Double.parseDouble(request.getParameter("rong"));

        double chuvi = 2 * (dai + rong);
        double dientich = dai * rong;

        PrintWriter out = response.getWriter();
        out.println("<h2>Chu vi: " + chuvi + "</h2>");
        out.println("<h2>Diện tích: " + dientich + "</h2>");
    }
}
