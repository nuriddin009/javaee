<%--
  Created by IntelliJ IDEA.
  User: ReStart
  Date: 11/29/2023
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add user</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>

<form class="col-md-4 offset-3 mt-3" action="/userController" method="post">
    <label>
        <input placeholder="Firstname" type="text" class="form-control mt-3" name="firstname"/>
    </label>
    <label>
        <input placeholder="Lastname" type="text" class="form-control mt-3" name="lastname"/>
    </label>
    <label>
        <input placeholder="PhoneNumber" type="text" class="form-control mt-3" name="phoneNumber"/>
    </label>
    <label>
        <input placeholder="Password" type="password" class="form-control mt-3" name="password"/>
    </label>
    <button class="btn btn-dark form-control mt-2">save</button>
</form>

</body>
</html>
