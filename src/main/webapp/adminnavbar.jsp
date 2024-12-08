<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            display: flex;
            justify-content: space-around; /* Use space-around for spacing */
            align-items: center;
            padding: 1rem 2rem;
            background-color: #D4EBF8;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 999;
        }

        .navbar-logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: #333;
        }

        .navbar-nav {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .navbar-nav li {
            margin-left: 1.5rem;
            position: relative;
        }

        .navbar-nav a {
            text-decoration: none;
            color: #6DA3CE; /* Change this to the desired color */
            transition: color 0.3s ease;
        }

        .navbar-nav a:hover {
            color: #81BFDA;
        }

        .navbar-nav .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #D4EBF8;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            min-width: 160px;
            z-index: 1;
        }

        .dropdown-content a {
            color: #6DA3CE; /* Change this to the desired color */
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s ease;
        }

        .dropdown-content a:hover {
            background-color: #81BFDA;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>

<body>

<div class="navbar">
    <a href="adminhome">Home</a>
    <a href="studentreg">Add Students</a> 
    <a href="viewallstudents">View All Students</a>
    <div class="dropdown">
        <a href="javascript:void(0)">Events</a>
        <div class="dropdown-content">
            <a href="addevent">Add Event</a>
            <a href="viewallevents">View All Events</a>
        </div>
    </div>
    <a href="deletestudent">Delete Students</a>
    <a href="adminlogout">Logout</a>
</div>

<div class="content">
    <h2 align="center">Extra Curricular Activities</h2>
</div>

</body>
</html>