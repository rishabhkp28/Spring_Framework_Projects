<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wishlist</title>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/HomePage.css">
</head>
<body>

<div class="container">
    <h1 class="page-title">Wishlist</h1>

    <div class="table-wrapper">
        <table class="product-table">
            <thead>
                <tr>
                    <th><i class="fas fa-hashtag"></i> ID</th>
                    <th><i class="fas fa-box"></i> Product</th>
                    <th><i class="fas fa-align-left"></i> Description</th>
                    <th><i class="fas fa-dollar-sign"></i> Price</th>
                    <th><i class="fas fa-cogs"></i> Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="p" items="${products}">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.description}</td>
                        <td>$${p.price}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/update/${p.id}" title="Edit">
                                <i class="fas fa-edit"></i>
                            </a>
                            <a href="${pageContext.request.contextPath}/delete/${p.id}" title="Delete" onclick="return confirm('Are you sure you want to delete this item?');">
                                <i class="fas fa-trash-alt"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div>
			<c:set var="totalCost" value="0" />
			<c:forEach var="p" items="${products}">
			    <c:set var="totalCost" value="${totalCost + p.price}" />
			</c:forEach>
			
			<div class="total-cost">
    	<h2>Total Cost: <span class="price-tag">$<c:out value="${totalCost}" /></span></h2>
</div>
	</div>

    <div class="add-btn-wrapper">
        <a href="${pageContext.request.contextPath}/addproduct" class="add-btn">
            <i class="fas fa-plus"></i>
            Add New Product
        </a>
    </div>
</div>

</body>
</html>
