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
<% CustomerManager customerManager = new CustomerManager();
    customerManager.removeCustomer(Integer.parseInt(request.getParameter("id")));
    response.sendRedirect("index.jsp");
%>

</body>
</html>
