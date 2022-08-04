<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Products</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

</head>
<body>
<br>
<table>
    <tr class="title">
        <td class="add-file">
            <button type="button" class="btn btn-outline-success" style="margin: 20px">
                <a href="${pageContext.request.contextPath}/product?action=createGet">
                    <i class="fa-solid fa-plus"></i> Add New Product</a>
            </button>
        </td>
        <td class="search-file">
            <form class="nav-link d-flex" style="margin: 0" action="/product?action=searchByName" method="post">
                <table>
                    <tr>
                        <td>
                            <input class="form-control mr-2" type="text" size="25" placeholder="Search" name="search">
                        </td>
                        <td>
                            <button class="btn btn-light ml-2" type="submit">
                                <i class="fa-solid fa-magnifying-glass"></i> Search
                            </button>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>

<br>
<br>
<div class="card">
    <h5 class="card-header font-weight-light">
        <a href="${pageContext.request.contextPath}/product" style="text-decoration: none">
            <span class="fas fa-tasks fa-fw mr-3"></span>
            <span><b>Product List</b></span>
        </a>
    </h5>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Color</th>
                    <th>Category</th>
                    <th colspan="2">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td>${product.getId_product()}</td>
                        <td>${product.getName()}</td>
                        <td>${product.getPrice()}</td>
                        <td>${product.getQuantity()}</td>
                        <td>${product.getColor()}</td>
                        <td>${product.getCategory()}</td>
                        <td>
                            <button type="button" class="btn btn-info">
                                <a style="color: white; text-decoration: none"
                                   href="/product?action=editGet&id=${product.getId_product()}"><i
                                        class="fa-solid fa-pencil"></i></a>
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger">
                                <a style="color: white; text-decoration: none"
                                   href="/product?action=delete&id=${product.getId_product()}"><i
                                        class="fa-solid fa-trash"></i></a>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>