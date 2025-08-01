<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored = "false"  %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title >✨ Product Form</title>
  
  <link rel = "stylesheet"  type = "text/css" href= "${pageContext.request.contextPath}/resources/css/addProduct.css">
  
  
</head>
<body>
  <form class="form-container" action="${pageContext.request.contextPath}/handleproduct" method="POST">
    <h1 class="page-title">Update The Product</h1>

    <div class="form-group">
      <input type="hidden" name="id" value="${product.id}" />
    </div>

    <div class="form-group">
      <label for="name">Product Name</label>
      <input type="text" id="name" name="name" value="${product.name}" required />
    </div>

    <div class="form-group">
      <label for="description">Product Description</label>
     
      <textarea id="description" name="description" required>${product.description}</textarea>
    </div>

    <div class="form-group">
      <label for="price">Product Price ($)</label>
      <input type="number" id="price" name="price" value="${product.price}" required />
    </div>

    <div class="form-submit">
      <button type="submit">Submit</button>
    </div>
  </form>
</body>

</html>
