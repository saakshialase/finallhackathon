<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
    <style>
        body {
            margin: 0;
            padding-top: 60px; /* Adjust this padding based on the navbar height */
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h3 {
            text-align: center;
            color: #2d3436; /* Dark gray for heading */
            margin-bottom: 20px;
        }

        table {
            width: 80%; /* Table width stays the same */
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff; /* White background for the table */
            color: #333; /* Dark text for readability */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Light shadow effect */
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border: 1px solid #ccc; /* Light gray border for cells */
        }

        th {
            background-color: #1abc9c; /* Light green background for the header */
            color: white; /* White text for header */
            font-size: 16px;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light gray for even rows */
        }

        tr:nth-child(odd) {
            background-color: #ffffff; /* White for odd rows */
        }

        tr:hover {
            background-color: #dfe6e9; /* Light gray on hover */
        }

        /* Navbar styling remains unchanged */
        #navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %> <!-- No changes to navbar -->
    <h3><u>Delete Student</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${stulist}" var="s">
            <tr>
                <td><c:out value="${s.id}"/></td>
                <td><c:out value="${s.name}"/></td>
                <td><c:out value="${s.gender}"/></td>
                <td><c:out value="${s.dateOfBirth}"/></td>
                <td><c:out value="${s.department}"/></td>
                <td><c:out value="${s.location}"/></td>
                <td><c:out value="${s.email}"/></td>
                <td><c:out value="${s.contact}"/></td>
                <td>
                    <a href="<c:url value='delete?id=${s.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
