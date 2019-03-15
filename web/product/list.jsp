<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 09-Mar-19
  Time: 7:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of products</title>
    <link rel="stylesheet" type="text/css" href="product/css/list.css">
</head>
<body>
    <h1>Product List</h1>
    <p><a href="/products?action=create">Create new product</a></p>
    <table align="center">
        <tr>
            <th style="width: 10%">Name</th>
            <th style="width: 10%">Price</th>
            <th style="width: 50%">Description</th>
            <th style="width: 10%">Producer</th>
            <th style="width: 10%">Edit</th>
            <th style="width: 10%">Delete</th>
        </tr>
        <tr>
            <c:forEach items="${requestScope['products']}" var="product">
                <tr>
                    <td style="text-align: center"><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
                    <td style="text-align: center">${product.getPrice()}</td>
                    <td style="padding-left: 10px">${product.getDescription()}</td>
                    <td style="text-align: center">${product.getProducer()}</td>
                    <td style="text-align: center"><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
                    <td style="text-align: center"><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
                </tr>
            </c:forEach>
        </tr>
    </table>
</body>
</html>
