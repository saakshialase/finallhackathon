<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<style>
body {
  font-family: sans-serif;
  margin: 0;
}

.navbar {
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 1rem 2rem;
  background-color: #81BFDA;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 999;
}

.container {
  display: flex;
  margin-top: 80px; /* Adjust for navbar height */
  padding: 20px;
}

.content {
  flex: 1;
  text-align: left;
  margin-right: 20px;
}

.image-container {
  flex: 1;
  text-align: right; /* Left-align images */
  margin-left: 20px;
  display: flex; /* Use flexbox for image alignment */
  justify-content: flex-end; /* Align image to the right */
}

.image-container img {
  max-width: 50%;
  height: auto;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  /* Remove animation */
}

</style>
</head>
<body>

<div class="navbar-container">
    <%@include file="mainnavbar.jsp" %>
</div>

<div class="container">
  <div class="content">
    <h1>About Us</h1>
    <p>Empowering Student Success:</p>
     <p>The Student Achievement Management System is a powerful platform designed to</p>
      <p>Recognize and reward student achievements.</p>
       <p>Motivate and inspire students to excel.</p>
        <p>Streamline the tracking and reporting of student accomplishments.</p>
        

  </div>
  <div class="image-container">
    <img src="https://media.istockphoto.com/id/1286378180/vector/website-information-concept.jpg?s=612x612&w=0&k=20&c=6v9Hcbp0zp5itIPIywobPQF13YsHIQ4j_srF5VbQusY=" alt="Image 1">
    
  </div>
</div>

</body>
</html>