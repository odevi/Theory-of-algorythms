

<%@page import="TheoryOfAlgorithms.Odevii.Lab3.Lab3"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <h1>Lab 3</h1>
        <%! Lab3 lab3 = new Lab3(40);%>
        <% lab3.InitArray(); %>
        <p>Array: <%= lab3.DisplayArray() %></p>
        <p>Element #15, result: <%= lab3.GetElement(15) %></p>
    </body>
</html>
