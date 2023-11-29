<%@ page import="com.example.jsonplaceholder.service.UserService" %>
<%@ page import="com.example.jsonplaceholder.entity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ReStart
  Date: 11/29/2023
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<%
    List<User> users = new UserService().getUsers();
%>

<h1 class="text-center">Users</h1>

<a href="${pageContext.request.contextPath}/user/addUser.jsp" class="btn btn-dark m-3">add user</a>
<div class="container">
    <table class="table">
        <% for (User user : users) { %>

        <tr>
            <td><%= user.getId() %>
            </td>
            <td><%= user.getFirstname() %>
            </td>
            <td><%= user.getLastname() %>
            </td>
            <td><%= user.getPhoneNumber() %>
            </td>
            <td>
                <a href="/post?userId=<%=user.getId()%>" class="btn btn-dark">posts</a>
            </td>
        </tr>

        <% }%>
    </table>
</div>

</body>
</html>
