<%@ page import="aze.coders.javee.Customer" %>
<%@ page import="aze.coders.javee.CustomerManager" %>
<%@ page import="aze.coders.javee.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="aze.coders.javee.CustomerManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <title>Title</title>--%>
</head>
<body>
<form action="search.jsp" method="post">
    <label name="searchLbl">Axtarish parametrleri:</label>
    <input type="text" name="searchText" placeholder="Search customers" required/>
    <input type="submit" name="searchBtn" value="Search customer"/>
</form>
<br/>
<form action="createView.jsp" method="get">
    <input type="submit" name="searchBtn" value="Add customer"/>
</form>
<table style=" border: 1px solid blue;
  border-collapse: collapse;">
    <thead>
    <tr style=" border: 1px solid blue;">
        <th style=" border: 1px solid blue;">Id</th>
        <th style=" border: 1px solid blue;">Name</th>
        <th style=" border: 1px solid blue;">Surname</th>
        <th style=" border: 1px solid blue;">Edit</th>
        <th style=" border: 1px solid blue;">Delete</th>
    </tr>
    </thead>
    <tbody>
    <%
        CustomerManager customerManager = new CustomerManager();
        List<Customer> customers = (List<Customer>) session.getAttribute("customers");
        if (customers == null)
            customers = customerManager.getCustomers();
        System.out.println("home: " + customerManager.getCustomers());
        for (Customer customer : customers) {%>

    System.out.println("index " + customer.getName()); %>
    <tr>
        <td><%=customer.getId()%>
        </td>
        <td><%=customer.getName()%>
        </td>
        <td><%=customer.getAddress()%>
        </td>
        <td>
            <form action="updateView.jsp" method="get">
                <input type="hidden" name="id" value="<%=customer.getId()%>">
                <input type="submit" value="Edit">
            </form>
        </td>
        <td>
            <form action="delete.jsp" method="post">
                <input type="hidden" name="id" value="<%=customer.getId()%>">
                <input type="submit" value="Delete">
            </form>
        </td>
    </tr>
    <%}%>
    </tbody>
</table>
</body>
</html>
