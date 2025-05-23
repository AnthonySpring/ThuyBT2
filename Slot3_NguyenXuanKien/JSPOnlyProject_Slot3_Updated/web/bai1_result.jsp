
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    double dai = Double.parseDouble(request.getParameter("dai"));
    double rong = Double.parseDouble(request.getParameter("rong"));
    double chuvi = 2 * (dai + rong);
%>
<html><body>
<h2>Kết quả</h2>
<p>Chu vi hình chữ nhật: <%= chuvi %></p>
</body></html>
