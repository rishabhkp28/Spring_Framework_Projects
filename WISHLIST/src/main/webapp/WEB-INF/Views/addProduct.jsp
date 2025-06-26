<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>✨ Product Form</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/addProduct.css">
</head>
<body>
    <form class="form-container" action="${pageContext.request.contextPath}/handleproduct" method="POST">
        <h1 class="page-title">Add a New Product</h1>

        <div class="form-group">
            <label for="name">Product Name</label>
            <input type="text" id="name" name="name" placeholder="Enter product name" required />
        </div>

        <div class="form-group">
            <label for="description">Product Description</label>
            <textarea id="description" name="description" placeholder="Describe the product..." required></textarea>
        </div>

        <div class="form-group">
            <label for="price">Product Price ($)</label>
            <input type="number" id="price" name="price" placeholder="Enter product price" step="0.01" required />
        </div>

        <div class="form-submit">
            <button type="submit">Submit Product</button>
        </div>
    </form>
</body>
</html>