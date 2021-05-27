
<%@page import="TheoryOfAlgorithms.Odevii.Lab6_7.Calculator"%>
<%@page import="TheoryOfAlgorithms.Odevii.Lab6_7.BinaryTreePrinter"%>
<%@page import="TheoryOfAlgorithms.Odevii.Lab6_7.BinaryTree"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6-7</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <p>Number: 260521. Sum of  numbers: <%= Calculator.GetSumOfNumbers(0, 260521)%></p>
        <%! BinaryTree tree = new BinaryTree();%>
        <%
            tree.add(12);
            tree.add(13);
            tree.add(10);
            tree.add(3);
            tree.add(15);
            tree.add(5);
            tree.add(8);
            tree.add(7);
        %>
        <pre>
        <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
        </pre>
        <%tree.mirrorTree(tree.getRoot()); %>
        <pre>
        <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
        </pre>
    </body>
</html>
