<%--
  Created by IntelliJ IDEA.
  User: 84133
  Date: 2023/2/28
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        request.setCharacterEncoding("UTF-8");
    %>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String hobby = request.getParameter("hobby");
    %>
    <p>用户名<%=username%></p>
    <p>密码<%=password%></p>
    <p>爱好<%=hobby%></p>
</body>
</html>
