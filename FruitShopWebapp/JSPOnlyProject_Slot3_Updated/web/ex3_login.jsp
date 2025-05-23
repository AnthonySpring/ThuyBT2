
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String error = "";
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username != null && password != null) {
        if ("yourName".equals(username) && "123@".equals(password)) {
            response.sendRedirect("welcome.jsp");
            return;
        } else {
            error = "Sai tên đăng nhập hoặc mật khẩu!";
        }
    }
%>
<html><body>
    <h2>Đăng nhập</h2>
    <form method="post">
        <p style="color:red;"><%= error %></p>
        Username: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Đăng nhập">
    </form>
</body></html>
