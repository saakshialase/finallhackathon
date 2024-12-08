<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Success</title>
</head>
<body>
    <h2>Event Added Successfully!</h2>
    <p>${message}</p> <!-- Display the success message from the controller -->
    <a href="addevent">Add Another Event</a> | <a href="adminhome">Back to Admin Home</a>
</body>
</html>
