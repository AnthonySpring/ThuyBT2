import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String u = request.getParameter("user");
        String p = request.getParameter("pass");

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        if ("admin".equals(u) && "123".equals(p)) {
            out.println("<h2>Đăng nhập thành công!</h2>");
        } else {
            out.println("<h2>Đăng nhập thất bại!</h2>");
        }
    }
}
