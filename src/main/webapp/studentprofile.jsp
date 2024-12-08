<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
if(s == null) {
    response.sendRedirect("studentsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    /* Page styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff; /* Light blue */
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    /* Navbar styling */
    .navbar {
        width: 100%;
        background-color: #0f1c85; /* Dark blue */
        color: #fff;
        padding: 15px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .navbar a {
        color: #87c2e0;
        text-decoration: none;
        font-size: 16px;
        margin: 0 10px;
        transition: color 0.3s ease;
    }

    .navbar a:hover {
        color: #d6f0ff;
    }

    /* Content styling */
    .content {
        flex: 1;
        padding: 40px 20px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .content-inner {
        width: 80%;
        max-width: 800px;
        text-align: center;
        background-color: #ffffff; /* White background for content */
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
    }

    .content-inner h2 {
        color: #0f1c85;
        margin-bottom: 20px;
    }

    .content-inner p {
        margin: 10px 0;
        font-size: 16px;
    }

    /* Button styling */
    .btn {
        display: inline-block;
        background-color: #0f1c85; /* Dark blue */
        color: #ffffff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
        font-size: 16px;
        cursor: pointer;
        margin-top: 20px;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #00509e; /* Lighter blue on hover */
    }

    .btn:focus {
        outline: none;
        box-shadow: 0 0 5px rgba(0, 80, 158, 0.5);
    }
</style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
    <a href="/logout" class="btn">Logout</a>
</div>

<!-- Main Content -->
<div class="content">
    <div class="content-inner">
        <h2>Welcome, <%=s.getName()%>!</h2>
        <p><strong>ID:</strong> <%=s.getId()%></p>
        <p><strong>Gender:</strong> <%=s.getGender()%></p>
        <p><strong>Date of Birth:</strong> <%=s.getDateOfBirth()%></p>
        <p><strong>Department:</strong> <%=s.getDepartment()%></p>
        <p><strong>Email:</strong> <%=s.getEmail()%></p>
        <p><strong>Location:</strong> <%=s.getLocation()%></p>
        <p><strong>Contact:</strong> <%=s.getContact()%></p>
        <a href="/feedback/form" class="btn">Submit Feedback</a>
    </div>
</div>

</body>
</html>
