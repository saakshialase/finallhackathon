<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>Mark Attendance</h1>
<form action="insertattendance" method="post">
    <label for="studentId">Student:</label>
    <select name="studentId" id="studentId" required>
        <c:forEach var="student" items="${students}">
            <option value="${student.id}">${student.name}</option>
        </c:forEach>
    </select><br>

    <label for="eventId">Event:</label>
    <select name="eventId" id="eventId" required>
        <c:forEach var="event" items="${events}">
            <option value="${event.id}">${event.eventName}</option>
        </c:forEach>
    </select><br>

    <label for="status">Status:</label>
    <select name="status" id="status">
        <option value="attended">Attended</option>
        <option value="missed">Missed</option>
    </select><br>

    <button type="submit">Submit Attendance</button>
</form>
