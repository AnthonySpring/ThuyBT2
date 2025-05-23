
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    if ("admin".equals(user) && "1234".equals(pass)) {
%>
    <p>Đăng nhập thành công!</p>
<%
    } else {
%>
    <p>Sai tên đăng nhập hoặc mật khẩu.</p>
<%
    }
%>
