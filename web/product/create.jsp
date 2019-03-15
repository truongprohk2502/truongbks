<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 09-Mar-19
  Time: 7:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <link rel="stylesheet" type="text/css" href="product/css/create.css">
</head>
<body>
    <h1>Create new product</h1>
    <p>
        <c:if test="${requestScope['message'] != null}">
            <span class="message">${requestScope['message']}</span>
        </c:if>
    </p>
    <p>
        <a href="/products">Back to product list</a>
    </p>
    <form method="post">
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td class="txt_label">Name</td>
                    <td class="txt_input"><input type="text" name="name" id="name"></td>
                </tr>
                <tr>
                    <td class="txt_label">Price</td>
                    <td class="txt_input"><input type="text" name="price" id="price"></td>
                </tr>
                <tr>
                    <td class="txt_label">Description</td>
                    <td class="txt_input"><textarea rows="5" name="description" id="description"></textarea></td>
                </tr>
                <tr>
                    <td class="txt_label">Producer</td>
                    <td class="txt_input"><input type="text" name="producer" id="producer"></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: right">
                        <input type="submit" value="Create Product">
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
