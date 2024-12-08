<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Form</title>
    <style>
        /* CSS Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Alice Blue background */
            color: #003366; /* Dark blue text */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            color: #00509e;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            background: #ffffff; /* White background for the form */
            border: 1px solid #cce7ff; /* Light blue border */
            border-radius: 10px;
            padding: 20px 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            width: 400px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #cce7ff;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 14px;
        }

        input[type="text"]:focus, textarea:focus {
            outline: none;
            border-color: #00509e;
            box-shadow: 0 0 5px rgba(0, 80, 158, 0.5);
        }

        button {
            background-color: #00509e; /* Blue button */
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #003366; /* Darker blue on hover */
        }

        button:focus {
            outline: none;
            box-shadow: 0 0 5px rgba(0, 51, 102, 0.5);
        }
    </style>
</head>
<body>
    <h2>Submit Feedback</h2>
    <form action="/feedback/submit" method="post">
        <label for="studentName">Name:</label>
        <input type="text" id="studentName" name="studentName" required><br><br>
        
        <label for="content">Feedback:</label>
        <textarea id="content" name="content" rows="4" cols="50" required></textarea><br><br>
        
        <label for="reference">Reference (optional):</label>
        <input type="text" id="reference" name="reference"><br><br>

        <button type="submit">Submit</button>
    </form>
</body>
</html>
