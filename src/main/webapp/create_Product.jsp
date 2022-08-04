<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/15/2022
  Time: 9:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Product</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="assets/style/form.css">
</head>
<body>
<div class="col-lg-9 col-md-8">

    <div class="card">

        <div class="edit_form"  id ="form_edit">
            <h1 >Add New Product</h1>
            <form action="/product?action=createPost" method="post" class="form">
                <table border="1" cellpadding="5" class="form-group">
                    <tr>
                        <th class="control-label">Name:</th>
                        <td>
                            <input type="text" name="name" size="100"/>
                        </td>
                    </tr>
                    <tr>
                        <th>Price:</th>
                        <td>
                            <input type="text" name="price" size="100"/>
                        </td>
                    </tr>
                    <tr>
                        <th>Quantity:</th>
                        <td>
                            <input type="text" name="quantity" size="100"/>
                        </td>
                    </tr>
                    <tr>
                        <th>Color:</th>
                        <td>
                            <input type="text" name="color" size="100"/>
                        </td>
                    </tr>
                    <tr>
                        <th>Description:</th>
                        <td>
                            <input type="text" name="description" size="100"/>
                        </td>
                    </tr>
                    <tr>
                        <th>Category:</th>
                        <td>
                            <select name="category">
                                <c:forEach items="${categories}" var="category">
                                    <option value="${category.getId_category()}">${category.getName_category()}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button type="submit" class="btn btn-warning">Create</button>
                            <button type="button" class="btn btn-outline-secondary"><a href="/product">Back</a></button>
                        </td>
                    </tr>
                    <tr>
                        <c:if test="${requestScope['check'] == true}">
                            <h5 style="color: blue">Create Product Successful</h5>
                        </c:if>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>
