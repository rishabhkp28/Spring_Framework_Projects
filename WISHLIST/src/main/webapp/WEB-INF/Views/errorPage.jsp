<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Oops! Something Went Wrong</title>
<style>
body {
margin: 0;
padding: 0;
font-family: 'Segoe UI', sans-serif;
background: linear-gradient(135deg, #a18cd1, #fbc2eb);
min-height: 100vh;
display: flex;
align-items: center;
justify-content: center;
}

.error-box {
background: rgba(255, 255, 255, 0.1);
padding: 30px 40px;
border-radius: 20px;
box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
max-width: 700px;
width: 90%;
color: white;
text-align: center;
backdrop-filter: blur(10px);
}

.error-box h1 {
font-size: 2rem;
margin-bottom: 20px;
text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
}

.icon {
font-size: 2.5rem;
margin-right: 10px;
vertical-align: middle;
}

.error-msg {
font-size: 1.1rem;
padding: 15px;
background: rgba(255, 255, 255, 0.15);
border-radius: 10px;
word-wrap: break-word;
margin-bottom: 15px;
overflow :auto;
}

details summary {
font-size: 1rem;
cursor: pointer;
color: #fdd835;
margin-top: 10px;
outline: none;
}

details pre {
font-size: 0.95rem;
text-align: left;
padding: 10px;
background-color: rgba(255, 255, 255, 0.08);
border-radius: 10px;
overflow-x: auto;
max-height: 300px;
}

.back-btn {
display: inline-block;
margin-top: 20px;
padding: 12px 25px;
background: linear-gradient(to right, #4facfe, #00f2fe);
color: #fff;
text-decoration: none;
border-radius: 30px;
font-weight: bold;
transition: all 0.3s ease;
}

.back-btn:hover {
transform: scale(1.05);
box-shadow: 0 0 15px #00f2fe;
}
</style>
</head>
<body>
<div class="error-box">
<h1><span class="icon">⚠️</span> Error Occurred!</h1>

<div class="error-msg">
${errorMessage}
</div>

<!-- Optional collapsible details for debugging -->
<details style="margin-top: 10px; color: #ccc;">
<summary>Show technical details</summary>
<pre style="white-space: pre-wrap; color: #eee;">${errorDetails}</pre>
</details>

<a class="back-btn" href="${pageContext.request.contextPath}/">← Back to Home</a>
</div>
</body>
</html>