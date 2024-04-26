<%@ page import="aze.coders.javee.Customer" %>
<%@ page import="aze.coders.javee.CustomerManager" %>
<%@ page import="java.util.List" %><%--
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
    List<Customer> searchCustomer = customerManager.getCustomerByName(request.getParameter("searchText"));
    System.out.println("searchCustomer: " + searchCustomer);
    session.setAttribute("customers", searchCustomer);
    response.sendRedirect("index.jsp");%>
</body>
</html>
