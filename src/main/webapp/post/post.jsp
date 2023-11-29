<%@ page import="com.example.jsonplaceholder.service.PostService" %>
<%@ page import="com.example.jsonplaceholder.entity.Post" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ReStart
  Date: 11/29/2023
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<h1 class="text-center">Post</h1>

<% int userId = Integer.parseInt(request.getParameter("userId"));
    List<Post> posts = new PostService().getPostsByUserId(userId);
%>

<div class="container">


    <table class="table">
        <%
            for (Post post : posts) { %>

        <tr>
            <td><%=post.getId()%>
            </td>
            <td><%=post.getTitle()%>
            </td>
            <td><%=post.getDescription()%>
            </td>
            <td>
                <a href="/comment?postId=<%=post.getId()%>" class="btn btn-dark">comment</a>
            </td>
        </tr>

        <% }%>
    </table>

</div>

</body>
</html>
