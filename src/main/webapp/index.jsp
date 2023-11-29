<%@ page import="com.example.jsonplaceholder.config.HibernateUtil" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>

<% SessionFactory sessionFactory = HibernateUtil.getSessionFactory(); %>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>