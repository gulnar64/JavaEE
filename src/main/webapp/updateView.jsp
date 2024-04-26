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
    <%--    <title>Title</title>--%>
</head>
<body>
<%
    CustomerManager customerManager = new CustomerManager();
    Customer customer = customerManager.getCustomer(Integer.parseInt(request.getParameter("id")));
%>
<form action="updateSave.jsp" method="get">

    <label>Name: </label>
    <input type="text" name="name" value="<%=customer.getName()%>">
    <br/>
    <label>Address: </label>
    <input type="text" name="address" value="<%=customer.getAddress()%>">
    <input type="hidden" name="id" value="<%=customer.getId()%>">
    <input type="submit" name="Save">
</form>
</body>
</html>
