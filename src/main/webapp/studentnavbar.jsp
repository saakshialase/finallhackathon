<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot MVC SDP Project</title>
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
}

.navbar-nav a {
  text-decoration: none;
  color: E195AB;
  transition: color 0.3s ease;
}

.navbar-nav a:hover {
  color: #81BFDA;
}
    </style>
</head>
<body>
    <div class="navbar">
        
        
        <a href="studenthome">Home</a>
        <a href="studentprofile">My Profile</a>
        <a href="viewevents">Register Event</a>
        <a href="viewregisteredevents">View Registered Events</a> 
        <a href="updatestudent">Update Profile</a>
        <a href="studentlogout">Logout</a>
    </div>

    <div class="content">
        <h2 align="center">Spring Boot MVC SDP Project</h2>
        <!-- Add any additional content here -->
    </div>
</body>
</html>
