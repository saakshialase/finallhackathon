<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registered Events</title>
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

        p {
            text-align: center;
            font-size: 18px;
            color: #666;
            margin-top: 20px;
        }

        a {
            display: block;
            width: fit-content;
            margin: 20px auto;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Your Registered Events</h2>

    <c:if test="${not empty registeredEvents}">
        <table>
            <tr>
                <th>Event ID</th>
                <th>Event Name</th>
                <th>Description</th>
                <th>Date</th>
                <th>Location</th>
            </tr>
            <c:forEach var="event" items="${registeredEvents}">
                <tr>
                    <td>${event.eventId}</td>
                    <td>${event.eventName}</td>
                    <td>${event.description}</td>
                    <td>${event.date}</td>
                    <td>${event.location}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <c:if test="${empty registeredEvents}">
        <p>You have not registered for any events yet.</p>
    </c:if>

    <a href="/viewevents">Back to Available Events</a>
</body>
</html>
