<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/styles.css">
</head>
<body>
    <h2>Welcome, <%= username %></h2>
    <ul>
        <li><a href="quiz.jsp">Take Quiz</a></li>
        <li><a href="grades.jsp">View Grades</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</body>
</html>
