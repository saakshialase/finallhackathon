<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        /* Resetting default margins and paddings */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* Body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5; /* Light gray background */
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            min-height: 100vh;
            padding-top: 50px; /* Space for the navbar */
        }

        /* Navbar styling */
        nav {
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 15px;
            text-align: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }

        nav a:hover {
            text-decoration: underline;
        }

        /* Container for the form */
        .container {
            background-color: #fff;
            width: 100%;
            max-width: 400px; /* Reduced container width */
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            text-align: center;
        }

        /* Title styling */
        h3 {
            font-size: 26px;
            font-weight: 600;
            color: #333;
            margin-bottom: 20px;
        }

        /* Label styling */
        label {
            font-size: 16px;
            color: #333;
            margin-bottom: 6px;
            text-align: left;
            display: block;
        }

        /* Input field and select box styling */
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        input[type="number"],
        select {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            color: #333;
        }

        /* Radio button container styling */
        .gender-options {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .gender-options label {
            font-size: 16px;
        }

        /* Submit and reset button styling */
        input[type="submit"],
        input[type="reset"] {
            width: 48%;
            padding: 12px;
            border-radius: 5px;
            border: none;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        /* Submit button */
        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
        }

        /* Reset button */
        input[type="reset"] {
            background-color: #f1f1f1;
            color: #333;
        }

        /* Hover effects */
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        input[type="reset"]:hover {
            background-color: #ddd;
        }

        /* Media Query for small screens */
        @media (max-width: 600px) {
            .container {
                width: 90%; /* Full width for small screens */
                padding: 30px;
            }

            h3 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>

    <%@ include file="adminnavbar.jsp" %> <!-- Assuming this includes the navbar above -->

    <div class="container">
        <h3>Student Registration</h3>
        <form method="post" action="insertstudent">
            <label for="sname">Enter Name</label>
            <input type="text" id="sname" name="sname" required />

            <label>Select Gender</label>
            <div class="gender-options">
                <label><input type="radio" id="male" name="sgender" value="MALE" required /> Male</label>
                <label><input type="radio" id="female" name="sgender" value="FEMALE" required /> Female</label>
                <label><input type="radio" id="others" name="sgender" value="OTHERS" required /> Others</label>
            </div>

            <label for="sdob">Enter Date of Birth</label>
            <input type="date" id="sdob" name="sdob" required />

            <label for="sdept">Select Department</label>
            <select id="sdept" name="sdept" required>
                <option value="">--- Select ---</option>
                <option value="CSE">CSE</option>
                <option value="AIDS">AIDS</option>
                <option value="CSIT">CSIT</option>
                <option value="EEE">EEE</option>
                <option value="ECE">ECE</option>
            </select>

            <label for="semail">Enter Email ID</label>
            <input type="email" id="semail" name="semail" required />

            <label for="spwd">Enter Password</label>
            <input type="password" id="spwd" name="spwd" required />

            <label for="slocation">Enter Location</label>
            <input type="text" id="slocation" name="slocation" required />

            <label for="scontact">Enter Contact</label>
            <input type="number" id="scontact" name="scontact" required />

            <div>
                <input type="submit" value="Register" />
                <input type="reset" value="Clear" />
            </div>
        </form>
    </div>

</body>
</html>
