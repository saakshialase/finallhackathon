<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
         body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Make the body take up full viewport height */
            background-color: #c6e2ff; /* Light blue background */ 
        }

        .login-container {
            background-color: #fff; /* White background for the login box */
            padding: 30px; 
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            width: 300px; /* Adjust width as needed */
            text-align: center;
        }

        .login-container h2 {
            color: #e74c3c; /* Red color for header */
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ddd; /* Light gray border */
            box-sizing: border-box;
        }

        button {
            background-color: #c0392b;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #a02920;
        }

        a {
            color: #000; /* Black text color for links */
            text-decoration: none;
        }
        
    </style>
</head>
<body>

    <div class="navbar-container">
        <%@include file="mainnavbar.jsp" %>
    </div>

    <div class="login-container">
        <h2>Admin Login</h2>
        <form method="post" action="checkadminlogin">
            <div class="form-group">
                <label for="auname">Username:</label>
                <input type="text" id="auname" name="auname" required>
            </div>
            <div class="form-group">
                <label for="apwd">Password:</label>
                <input type="password" id="apwd" name="apwd" required>
            </div>
            <button type="submit">Login</button>
           
        </form>
    </div>

</body>
</html>