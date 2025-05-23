
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><body>
<%
    String name = request.getParameter("name");
    String diemStr = request.getParameter("diem");
    String error = "";
    double diem = 0;
    boolean valid = true;
    if (name != null && diemStr != null) {
        if (name.trim().isEmpty()) {
            error = "Tên không được để trống.";
            valid = false;
        }
        try {
            diem = Double.parseDouble(diemStr);
            if (diem < 0 || diem > 10) {
                error = "Điểm phải nằm trong khoảng 0 - 10.";
                valid = false;
            }
        } catch (NumberFormatException e) {
            error = "Điểm không hợp lệ.";
            valid = false;
        }
    }
%>
<h2>Thông tin sinh viên</h2>
<form method="post">
    Họ tên: <input type="text" name="name" value="<%= name != null ? name : "" %>"><br>
    Điểm: <input type="text" name="diem" value="<%= diemStr != null ? diemStr : "" %>"><br>
    <input type="submit" value="Gửi">
</form>
<%
    if (!valid && name != null && diemStr != null) {
%><p style="color:red;"><%= error %></p><%
    } else if (valid && name != null && diemStr != null) {
%><p>Họ tên: <%= name %></p><p>Điểm: <%= diem %></p><%
    }
%>
</body></html>
