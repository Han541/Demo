<%@ page import="com.hqq.pojo.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 84133
  Date: 2023/3/1
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        User user = new User(1, "test", "test", "test");
        pageContext.setAttribute("user", user);
        List list = new ArrayList();
        request.setAttribute("list", list);
        List list2 = null;
        request.setAttribute("list2", list2);
        String s1 = "abc";
        String s2 = "abc";
        request.setAttribute("s1", s1);
        request.setAttribute("s2", s2);
        System.out.println(s1 == s1);
    %>
    <%
        pageContext.setAttribute("pg", "pg");
        request.setAttribute("re", "re");
        session.setAttribute("se", "se");
        application.setAttribute("ap", "ap");
    %>
    ${pageScope.pg}<br>
    ${requestScope.re}<br>
    ${sessionScope.se}<br>
    ${applicationScope.ap}<br>
    ${10+20}<br>
    ${user.nickname}&nbsp;${user["nickname"]}
    <hr>
    集合中是否无元素${empty list}<br>
    ${s1 == s2}
</body>
</html>
