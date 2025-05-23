import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "StudentServlet", urlPatterns = {"/studentinfo"})
public class StudentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String name = request.getParameter("name");
        String mssv = request.getParameter("mssv");
        String major = request.getParameter("major");

        PrintWriter out = response.getWriter();
        out.println("<h2>Thông tin sinh viên</h2>");
        out.println("<p>Họ tên: " + name + "</p>");
        out.println("<p>MSSV: " + mssv + "</p>");
        out.println("<p>Ngành học: " + major + "</p>");
    }
}
