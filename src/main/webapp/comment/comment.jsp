<%@ page import="com.example.jsonplaceholder.service.CommentService" %>
<%@ page import="com.example.jsonplaceholder.entity.Comment" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ReStart
  Date: 11/29/2023
  Time: 12:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comment</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>

<h1 class="text-center">Comment</h1>

<%
    int postId = Integer.parseInt(request.getParameter("postId"));
    List<Comment> comments = new CommentService().getCommentsByPostId(postId);
%>
<div class="container">
    <table class="table">
        <%
            for (Comment comment : comments) {%>
        <tr>
            <td><%=comment.getId()%>
            </td>
            <td><%=comment.getText()%>
            </td>
            <td>
                <button onclick="sendDeleteRequest(<%=comment.getId()%>)" class="btn btn-danger">delete</button>
                <a class="btn btn-primary">edit</a>
            </td>
        </tr>
        <%}%>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    function sendDeleteRequest(commentId) {
        $.ajax({
            url: 'commentServlet', // Specify the URL of your servlet or endpoint
            type: 'DELETE',
            data: { commentId: commentId },
            success: function (response) {
                console.log('Delete request successful');
                // Handle the response as needed
            },
            error: function (error) {
                console.error('Error sending delete request:', error);
            }
        });
    }
</script>

</body>
</html>
