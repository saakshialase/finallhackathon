<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Events</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        h2 {
            color: white;
            text-align: center;
            background-color: #007bff;
            padding: 15px;
            margin: 0;
            font-size: 24px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background-color: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            text-align: center;
            padding: 10px;
        }

        th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        form {
            margin: 0;
            padding: 0;
        }

        form input[type="hidden"] {
            display: none;
        }

        form button[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 8px 12px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            text-transform: uppercase;
            margin: 2px;
        }

        form button[type="submit"]:hover {
            background-color: #0056b3;
        }

        p {
            text-align: center;
            font-size: 18px;
            color: #666;
            margin-top: 20px;
        }

        a, button {
            display: block;
            text-align: center;
            color: #007bff;
            text-decoration: none;
            margin: 20px 0;
        }

        a:hover, button:hover {
            text-decoration: underline;
        }

        .center-button {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .center-button button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px 24px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            text-transform: uppercase;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        .center-button button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Available Events</h2>

    <c:if test="${not empty eventList}">
        <table>
            <tr>
                <th>Event ID</th>
                <th>Event Name</th>
                <th>Description</th>
                <th>Date</th>
                <th>Location</th>
                <th>Action</th>
            </tr>
            <c:forEach var="event" items="${eventList}">
                <tr>
                    <td>${event.eventId}</td>
                    <td>${event.eventName}</td>
                    <td>${event.description}</td>
                    <td>${event.date}</td>
                    <td>${event.location}</td>
                    <td>
                        <form action="registerEvent" method="post">
                            <input type="hidden" name="eventId" value="${event.eventId}" />
                            <input type="hidden" name="studentId" value="${student.id}" />
                            <button type="submit">Register</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    
    <c:if test="${empty eventList}">
        <p>No events available for registration.</p>
    </c:if>
    
    <div class="center-button">
        <button onclick="window.location.href='/studenthome'">Back to student home</button>
    </div>
</body>
</html>
