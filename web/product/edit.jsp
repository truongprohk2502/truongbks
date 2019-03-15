<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 09-Mar-19
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
    <link rel="stylesheet" type="text/css" href="product/css/edit.css">
</head>
<body>
    <h1>Edit product</h1>
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
                    <td class="txt_label">Tên</td>
                    <td class="txt_input"><input type="text" name="name" id="name" value="${requestScope['product'].getName()}"></td>
                </tr>
                <tr>
                    <td class="txt_label">Price</td>
                    <td class="txt_input"><input type="text" name="price" id="price" value="${requestScope['product'].getPrice()}"></td>
                </tr>
                <tr>
                    <td class="txt_label">Description</td>
                    <td class="txt_input"><textarea rows="5" name="description" id="description">${requestScope['product'].getDescription()}</textarea></td>
                </tr>
                <tr>
                    <td class="txt_label">Producer</td>
                    <td class="txt_input"><input type="text" name="producer" id="producer" value="${requestScope['product'].getProducer()}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: right">
                        <input type="submit" value="Update Product">
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
