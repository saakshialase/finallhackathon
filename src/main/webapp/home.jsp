<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExtraCurricular Activities</title>
<style>
body {
  margin: 0;
  font-family: Arial, sans-serif;
}

.navbar {
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 1rem 2rem;
  background-color: #81BFDA; /* Changed to hex code for readability */
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 999;
}

.container {
  display: flex;
  margin-top: 60px; /* Adjust for navbar height */
  padding: 20px;
}

.content {
  flex: 1;
  text-align: right; /* Right-align content */
  margin-right: 20px;
}

.image-container {
  flex: 1;
  text-align: left; /* Left-align image */
  margin-left: 20px;
  max-width: 50%; /* Limit image width to 50% of container */
}

.get-started-btn {
  display: inline-block;
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  text-decoration: none;
  border-radius: 5px;
}
</style>
</head>
<body>

<%@include file="mainnavbar.jsp" %>

<div class="container">
    <div class="content">
        <h1>Recognize Every Achievement!</h1>
        <p>Welcome to the Student Achievement Management System.</p>
        <p>Easily track and manage student achievements in extracurricular activities.</p>
        <button class="get-started-btn">Get Started</button>
    </div>
    <div class="image-container">
        <img src="https://thumbs.dreamstime.com/b/success-competition-employee-business-person-d-d-illustration-concept-winner-achievement-vector-challenge-leadership-career-victory-181422266.jpg" alt="Achievement Image" style="max-width: 100%;"> 
    </div>
</div>

</body>
</html>