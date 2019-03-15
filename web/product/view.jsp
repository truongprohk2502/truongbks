<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 09-Mar-19
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details of product</title>
    <link rel="stylesheet" type="text/css" href="product/css/view.css">
</head>
<body>
    <h1>Product information</h1>
    <p>
        <a href="/products">Back to product list</a>
    </p>
    <fieldset>
        <legend>Product information</legend>
        <table align="center">
            <tr>
                <td style="font-weight: bold">Name</td>
                <td>${requestScope['product'].getName()}</td>
            </tr>
            <tr>
                <td style="font-weight: bold">Price</td>
                <td>${requestScope['product'].getPrice()}</td>
            </tr>
            <tr>
                <td style="font-weight: bold">Description</td>
                <td>${requestScope['product'].getDescription()}</td>
            </tr>
            <tr>
                <td style="font-weight: bold">Producer</td>
                <td>${requestScope['product'].getProducer()}</td>
            </tr>
        </table>
    </fieldset>
</body>
</html>
