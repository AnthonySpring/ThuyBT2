
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><body>
<h2>Thông tin sinh viên</h2>
<p>Họ tên: <%= request.getParameter("hoten") %></p>
<p>MSSV: <%= request.getParameter("mssv") %></p>
<p>Lớp: <%= request.getParameter("lop") %></p>
</body></html>
