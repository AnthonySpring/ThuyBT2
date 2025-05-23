
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Bài 1 - Diện tích hình tròn</title></head>
<body>
    <h2>Nhập bán kính để tính diện tích hình tròn</h2>
    <form method="post">
        Bán kính: <input type="text" name="r"><br>
        <input type="submit" value="Tính diện tích">
    </form>
<%
    String rStr = request.getParameter("r");
    if (rStr != null && !rStr.isEmpty()) {
        double r = Double.parseDouble(rStr);
        double s = Math.PI * r * r;
%>
    <p>Diện tích hình tròn: <%= s %></p>
<%
    }
%>
</body>
</html>
