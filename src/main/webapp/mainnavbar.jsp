<!DOCTYPE html>
<html>
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
  <a href="/">Home</a>
  <a href="about">About</a>
  <a href="adminlogin">Admin Login</a>
  <a href="studentlogin">Student Login</a>

  
</div>

</body>
</html>