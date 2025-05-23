
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><body>
<%
    String dai = request.getParameter("dai");
    String rong = request.getParameter("rong");
    String[] actions = request.getParameterValues("action");
    String error = "";
    double d = 0, r = 0;
    boolean valid = true;
    if (dai != null && rong != null) {
        try {
            d = Double.parseDouble(dai);
            r = Double.parseDouble(rong);
            if (d <= 0 || r <= 0) {
                error = "Chiều dài và chiều rộng phải > 0.";
                valid = false;
            }
        } catch (NumberFormatException e) {
            error = "Giá trị nhập không hợp lệ.";
            valid = false;
        }
    }
%>
<h2>Tính chu vi và/hoặc diện tích</h2>
<form method="post">
    Chiều dài: <input type="text" name="dai" value="<%= dai != null ? dai : "" %>"><br>
    Chiều rộng: <input type="text" name="rong" value="<%= rong != null ? rong : "" %>"><br>
    <input type="checkbox" name="action" value="chuvi"> Chu vi
    <input type="checkbox" name="action" value="dientich"> Diện tích<br>
    <input type="submit" value="Tính">
</form>
<%
    if (!valid && dai != null && rong != null) {
%><p style="color:red;"><%= error %></p><%
    } else if (valid && actions != null) {
        for (String action : actions) {
            if ("chuvi".equals(action)) {
                double cv = 2 * (d + r);
%><p>Chu vi: <%= cv %></p><%
            } else if ("dientich".equals(action)) {
                double dt = d * r;
%><p>Diện tích: <%= dt %></p><%
            }
        }
    }
%>
</body></html>
