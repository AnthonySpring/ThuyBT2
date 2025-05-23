
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.DecimalFormat" %>
<html><body>
<h2>Nhập bán kính hình tròn</h2>
<form method="post">
    Bán kính: <input type="text" name="r"><br>
    <input type="submit" value="Tính diện tích">
</form>
<%
    String rStr = request.getParameter("r");
    if (rStr != null && !rStr.isEmpty()) {
        try {
            double r = Double.parseDouble(rStr);
            double s = Math.PI * r * r;
            DecimalFormat df = new DecimalFormat("#.##");
%>
<p>Diện tích hình tròn: <%= df.format(s) %></p>
<%
        } catch (NumberFormatException e) {
%>
<p style="color:red;">Giá trị nhập vào không hợp lệ!</p>
<%
        }
    }
%>
</body></html>
