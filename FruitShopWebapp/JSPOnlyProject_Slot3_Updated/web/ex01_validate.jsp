
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><body>
<%
    String dai = request.getParameter("dai");
    String rong = request.getParameter("rong");
    String error = "";
    double d = 0, r = 0;
    boolean valid = true;
    if (dai != null && rong != null) {
        try {
            d = Double.parseDouble(dai);
            r = Double.parseDouble(rong);
            if (d <= 0 || r <= 0) {
                error = "Chiều dài và chiều rộng phải lớn hơn 0.";
                valid = false;
            }
        } catch (NumberFormatException e) {
            error = "Vui lòng nhập số hợp lệ.";
            valid = false;
        }
    }
%>
<h2>Nhập chiều dài và chiều rộng</h2>
<form method="post">
    Chiều dài: <input type="text" name="dai" value="<%= dai != null ? dai : "" %>"><br>
    Chiều rộng: <input type="text" name="rong" value="<%= rong != null ? rong : "" %>"><br>
    <input type="submit" value="Tính chu vi">
</form>
<%
    if (!valid && dai != null && rong != null) {
%><p style="color:red;"><%= error %></p><%
    } else if (valid && dai != null && rong != null) {
        double chuvi = 2 * (d + r);
%><p>Chu vi: <%= chuvi %></p><%
    }
%>
</body></html>
