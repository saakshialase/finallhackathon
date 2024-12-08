<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Admin Home</title>
<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 20px; /* Add padding for better spacing */
  display: flex;
  flex-direction: column;
  align-items: center; /* Center content vertically */
}



.content {
  margin-top: 80px; /* Adjust for navbar height */
  text-align: center;
}

</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>

<div class="content">
  <h1>Admin Home</h1> 
  <p>Welcome to the Admin Dashboard</p>
  </div>

</body>
</html>