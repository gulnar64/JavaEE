<%@ page import="aze.coders.javee.Customer" %>
<%@ page import="aze.coders.javee.CustomerManager" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 24.04.2024
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>

<form action="createSave.jsp" method="get">

    <label>Id: </label>
    <input type="text" name="id">
    <br/>
    <label>Name: </label>
    <input type="text" name="name">
    <br/>
    <label>Address: </label>
    <input type="text" name="address">
    <input type="submit" name="Save">
</form>
</body>
</html>
