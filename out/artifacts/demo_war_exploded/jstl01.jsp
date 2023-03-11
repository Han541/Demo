<%@ page import="com.hqq.pojo.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 84133
  Date: 2023/3/1
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>jstl</title>
</head>
<body>
    <%
        int score = 90;
        request.setAttribute("score", score);
    %>
    <c:choose>
        <c:when test="${score>=90}">
            <p>优</p>
        </c:when>
        <c:when test="${score>=80}">
            <p>良</p>
        </c:when>
        <c:when test="${score>=70}">
            <p>中</p>
        </c:when>
        <c:when test="${score>=60}">
            <p>差</p>
        </c:when>
        <c:otherwise>
            <p>不及格</p>
        </c:otherwise>
    </c:choose>
    <hr>
    <c:if test="${score>60}">
        <p>及格</p>
    </c:if>
    <c:if test="${score<60}">
        <p>不及格</p>
    </c:if>
    <%
        List<User> userList = new ArrayList<>();
        userList.add(new User(1,"aa","dsd","dsdsd"));
        userList.add(new User(2,"aa","dsd","dsdsd"));
        userList.add(new User(3,"aa","dsd","dsdsd"));
        userList.add(new User(4,"aa","dsd","dsdsd"));
        request.setAttribute("list", userList);
    %>
    <table width="100px" border="1px">
        <c:forEach items="${list}" var="user">
            <tr>
                <td>
                    ${user.id}
                </td>
                <td>
                    ${user.username}
                </td>
                <td>
                    ${user.password}
                </td>
                <td>
                    ${user.nickname}
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
