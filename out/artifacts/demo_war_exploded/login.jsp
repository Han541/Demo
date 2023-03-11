<%--
  Created by IntelliJ IDEA.
  User: 84133
  Date: 2023/2/28
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="login.do" method="post">
        <%
            Object obj = session.getAttribute("loginerr");
            if (obj != null) {
        %>
        <div style="color: red"><%=obj%></div>
        <%
            session.removeAttribute("loginerr");
            }
        %>
        用户名：<input type="text" name="username"><br>
        密码：<input type="password" name="password"><br>
        <input type="submit" value="提交">
    </form>
</body>
</html>
