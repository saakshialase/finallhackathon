<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Student s = (Student)session.getAttribute("student");
    if(s == null) {
        response.sendRedirect("studentsessionfail");
        return;
    }

    // Normally here you would fetch data from your database directly
    int totalEvents = 0; // You need to implement how you are getting this data

%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home</title>
    
    <!-- Link to external or internal CSS styles -->
    <style>
        /* Reset some default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic page layout */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            color: #333;
            line-height: 1.6;
        }

        /* Navbar styling */
        nav {
            background-color: #333;
            padding: 10px 20px;
            text-align: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
        }

        nav a:hover {
            background-color: #575757;
            border-radius: 5px;
        }

        /* Header Section */
        header {
            text-align: center;
            background-color: #007BFF; /* Blue background */
            color: white;
            padding: 20px 0;
            margin-bottom: 20px;
        }

        header h1 {
            font-size: 36px;
        }

        /* Main content section */
        .main-content {
            display: flex;
            justify-content: center;
            padding: 20px;
            flex-direction: column;
            align-items: center;
        }

        .main-content h2 {
            font-size: 24px;
            color: #007BFF; /* Blue color */
            margin-bottom: 10px;
        }

        .profile {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
            width: 80%;
            max-width: 800px;
        }

        .profile p {
            font-size: 18px;
            margin: 10px 0;
        }

        .btn {
            background-color: #007BFF; /* Blue button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            display: inline-block;
            text-align: center;
            margin-top: 20px;
        }

        .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>

<%@ include file="studentnavbar.jsp" %>

<header>
    <h1>Welcome to the Student Portal</h1>
</header>

<div class="main-content">
    <h2>Student Profile</h2>
    
    <div class="profile">
        <p><strong>Name:</strong> <%= s.getName() %></p>
        <p><strong>Email:</strong> <%= s.getEmail() %></p>
        
        <a href="editProfile.jsp" class="btn">Edit Profile</a>
    </div>

    <h2>Event Summary</h2>
    <p>Total Events: <%= totalEvents %></p>
</div>

</body>
</html>