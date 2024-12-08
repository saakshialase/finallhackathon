<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback List</title>
    <link rel="stylesheet" type="text/css" href="D style.css">
</head>
<body>
    <h2>All Feedback</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Feedback</th>
                <th>Reference</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${feedbacks}" var="feedback">
                <tr>
                    <td>${feedback.id}</td>
                    <td>${feedback.studentName}</td>
                    <td>${feedback.content}</td>
                    <td>${feedback.reference}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>